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
      final response = await client.auth
          .signInWithPassword(email: email, password: password);
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
      {required String email,
      required String password,
      required String username,
      required String firstname}) async {
    try {
      final response =
          await client.auth.signUp(email: email, password: password, data: {
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
    final response = await client
        .from('categories')
        .select('''
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
           )''')
        .or('user_id.eq.${user?.id},user_id.is.NULL')
        .eq('goals.user_id', user!.id);
    final categories = List.generate(
      response.length,
      (index) => GoalCategory.fromJson(response[index]),
    );
    return categories;
  }

  Future<bool> createANewGoalBySelectedCategory(
      {required GoalCategory goalCategory}) async {
    //insert a new goal
    return true;
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

  Stream<List<Map<String, dynamic>>> getHumidityAndAirTemperature(
      String masterNode) {
    return client
        .from('metrics')
        .stream(primaryKey: ['id'])
        .eq('masternode', masterNode)
        .limit(10)
        .asBroadcastStream();
  }

  /* Future<List<Cabinet>> getCabinets() async {
    final response = await client
        .from('cabinet_rls')
        .select('cabinet(id,model,floor_count,bt_mac_address,name)')
        .eq('user_id', user!.id);
    final cabinets = Cabinets.fromJson(response);
    return cabinets.data;
  } */

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
