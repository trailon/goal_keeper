// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/services/storage_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/app_defaults.dart';

@lazySingleton
class SupaService {
  late SupabaseClient _client;
  final StorageService _storageService = StorageService();
  final String _sessionKey = 'session';

  SupaService() {
    _client =
        SupabaseClient(AppDefaults.kSupaBaseUrl, AppDefaults.kSupaBaseAnonKey);
  }

  SupabaseClient get client => _client;
  User? get user => _client.auth.currentUser;
  Session? get session => _client.auth.currentSession;
  GoTrueAdminApi get admin => _client.auth.admin;

  /* Future<void> setSession() async {
    if (session != null) {
      _storageService.sharedPref!
          .setString(_sessionKey, session!.persistSessionString);
    }
  }

  Future<bool> recoverSession() async {
    if (_storageService.sharedPref!.containsKey(_sessionKey)) {
      logger.d('Found persisted session string, attempting to recover session');
      final jsonStr = _storageService.sharedPref!.getString(_sessionKey)!;
      final response = await client.auth.recoverSession(jsonStr);
      if (response.session != null) {
        logger.d(
            'Session successfully recovered for user ID: ${response.user!.id}');
        setSession();
        return true;
      }
    }
    return false;
  } */

  Future<bool> login({required String email, required String password}) async {
    try {
      final response = await client.auth
          .signInWithPassword(email: email, password: password);
      if (response.session != null) {
        await client.auth.setSession(response.session!.refreshToken!);
        EasyLoading.showSuccess('Login Success!');
        return true;
      }
    } on AuthException catch (e) {
      exceptionHandler(e);
      return false;
    } catch (e) {
      EasyLoading.showError('Login Failed!');
      return false;
    }
    return false;
  }

  Future<bool> register({required email, required password}) async {
    try {
      final response =
          await client.auth.signUp(email: email, password: password);
      if (response.user != null) {
        await login(email: email, password: password);
        EasyLoading.showSuccess('Register Success!');
        return true;
      }
    } catch (e) {
      EasyLoading.showError('Register Failed!');
      return false;
    }
    return false;
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
    switch (e.message) {
      case 'invalid email':
        EasyLoading.showError(S.current.email_already_exists);
        break;
      case 'invalid credentials':
        EasyLoading.showError(S.current.invalid_credentials);
        break;
      case 'Invalid login credentials':
        EasyLoading.showError(S.current.invalid_credentials);
        break;
      default:
      //EasyLoading.showError(e.message);
    }
  }
}