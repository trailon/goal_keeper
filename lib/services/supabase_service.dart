// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@lazySingleton
class SupaService {
  late SupabaseClient _client;
  final String _sessionKey = 'session';

  SupaService() {
    _client = Supabase.instance.client;
  }

  SupabaseClient get client => _client;
  User? get user => _client.auth.currentUser;
  Session? get session => _client.auth.currentSession;
  GoTrueAdminApi get admin => _client.auth.admin;

  Future<bool> login({required String email, required String password}) async {
    try {
      final response = await client.auth.signInWithPassword(email: email, password: password);
      if (response.session != null) {
        await client.auth.setSession(response.session!.refreshToken!);
        EasyLoading.showSuccess(S.current.sign_in_success);
        return true;
      }
    } on AuthException catch (e) {
      exceptionHandler(e);
      return false;
    } catch (e) {
      EasyLoading.showError(S.current.sign_in_failed);
      return false;
    }
    return false;
  }

  Future<bool> register(
      {required String email, required String password, required String username, required String firstname}) async {
    try {
      final response = await client.auth.signUp(email: email, password: password, data: {
        "username": username,
        "name": firstname,
      });
      EasyLoading.dismiss();
      if (response.user != null || client.auth.currentUser != null) {
        await login(email: email, password: password);
        EasyLoading.showSuccess(S.current.sign_up_success);
        return true;
      }
    } on AuthException catch (e) {
      exceptionHandler(e);
      return false;
    } catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError(S.current.sign_up_failed);
      return false;
    }
    return false;
  }

  Future<List<GoalCategory>> fetchCategories() async {
    final response = await client.from('categories').select('''
         id,
         category_name,
         user_id,
         created_at,
         goals(
           id,
           goal_name,
           is_achieved,
           create_date,
           update_date,
           category_id,
           chain_id,
           chains(
            create_date,
            update_date,
            chain_name
           )
           )''').or('user_id.eq.${user?.id},user_id.is.NULL').eq('goals.user_id', user!.id);
    final categories = List.generate(
      response.length,
      (index) => GoalCategory.fromJson(response[index]),
    );
    return categories;
  }

  Future<bool> createANewGoalBySelectedCategory({
    required GoalCategory goalCategory,
    required String goalName,
    required String goalTypeKey,
    int? chainId,
    int? prerequisiteGoalId,
  }) async {
    try {
      final response = await client.from('goals').insert({
        'goal_name': goalName,
        'category_id': goalCategory.id,
        'user_id': user?.id,
        'goal_type_key': goalTypeKey,
        if (chainId != null) 'chain_id': chainId,
        if (prerequisiteGoalId != null) 'prerequisite_goal_id': prerequisiteGoalId,
      });
      if (response.error != null) {
        throw Exception(response.error!.message);
      }
      return true;
    } catch (e) {
      EasyLoading.showError('Failed to create goal');
      return false;
    }
  }

  Future<int?> createChain(String chainName) async {
    try {
      final response = await client
          .from('chains')
          .insert({
            'chain_name': chainName,
            'user_id': user?.id,
          })
          .select('id')
          .single();

      return response['id'] as int;
    } catch (e) {
      EasyLoading.showError('Failed to create chain');
      return null;
    }
  }

  Future<bool> logOut() async {
    try {
      await client.auth.signOut();
    } catch (e) {
      return false;
    }
    return true;
  }

  Future<bool> forgotPassword(String email) async {
    try {
      await client.auth.resetPasswordForEmail(email);
      return true;
    } catch (e) {
      exceptionHandler(e as AuthException);
      return false;
    }
  }

  void exceptionHandler(AuthException e) {
    switch (e.code) {
      case 'invalid email':
        EasyLoading.showError(S.current.email_already_exists);
        break;
      case 'invalid credentials':
        EasyLoading.showError(S.current.invalid_credentials);
        break;
      case 'Invalid login credentials':
        EasyLoading.showError(S.current.invalid_credentials);
        break;
      case 'user_already_exists':
        EasyLoading.showError(S.current.user_already_exists);
      default:
        EasyLoading.showError(e.message);
    }
  }
}
