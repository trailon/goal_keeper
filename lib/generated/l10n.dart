// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hedeflerim`
  String get my_goals {
    return Intl.message(
      'Hedeflerim',
      name: 'my_goals',
      desc: '',
      args: [],
    );
  }

  /// `Goal Keeper`
  String get goal_keeper {
    return Intl.message(
      'Goal Keeper',
      name: 'goal_keeper',
      desc: '',
      args: [],
    );
  }

  /// `Search one of your GOALS`
  String get search_goal {
    return Intl.message(
      'Search one of your GOALS',
      name: 'search_goal',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Already have one?`
  String get sign_in_alternative {
    return Intl.message(
      'Already have one?',
      name: 'sign_in_alternative',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your account`
  String get sign_in_text {
    return Intl.message(
      'Log in to your account',
      name: 'sign_in_text',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sign up failed`
  String get sign_up_failed {
    return Intl.message(
      'Sign up failed',
      name: 'sign_up_failed',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get sign_up_success {
    return Intl.message(
      'Account created successfully',
      name: 'sign_up_success',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get sign_up_create {
    return Intl.message(
      'Create an account',
      name: 'sign_up_create',
      desc: '',
      args: [],
    );
  }

  /// `Don't you have an account yet? Create one for a better personalized experience and synchronizing your datas between platforms`
  String get sign_up_text_suggestion {
    return Intl.message(
      'Don\'t you have an account yet? Create one for a better personalized experience and synchronizing your datas between platforms',
      name: 'sign_up_text_suggestion',
      desc: '',
      args: [],
    );
  }

  /// `Create an account to access all the features of Goal Keeper, including personalized recommendations, notifications and more incoming features.`
  String get sign_up_text_description {
    return Intl.message(
      'Create an account to access all the features of Goal Keeper, including personalized recommendations, notifications and more incoming features.',
      name: 'sign_up_text_description',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `The best app for your plants`
  String get auth_view_body {
    return Intl.message(
      'The best app for your plants',
      name: 'auth_view_body',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get name {
    return Intl.message(
      'Your Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Name must contains only letters`
  String get enter_valid_name {
    return Intl.message(
      'Name must contains only letters',
      name: 'enter_valid_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enter_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Your name is required to personalize your experience and synchronize your data between platforms`
  String get enter_name_description {
    return Intl.message(
      'Your name is required to personalize your experience and synchronize your data between platforms',
      name: 'enter_name_description',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enter_last_name {
    return Intl.message(
      'Enter your last name',
      name: 'enter_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Your last name is optional`
  String get enter_last_name_description {
    return Intl.message(
      'Your last name is optional',
      name: 'enter_last_name_description',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account you agree to our Terms of Service and Privacy Policy`
  String get privacy_policy_text {
    return Intl.message(
      'By creating an account you agree to our Terms of Service and Privacy Policy',
      name: 'privacy_policy_text',
      desc: '',
      args: [],
    );
  }

  /// `Add Device with QR Code`
  String get qr_code_title {
    return Intl.message(
      'Add Device with QR Code',
      name: 'qr_code_title',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid username (minimum 2 characters)`
  String get enter_valid_username {
    return Intl.message(
      'Enter a valid username (minimum 2 characters)',
      name: 'enter_valid_username',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get enter_username {
    return Intl.message(
      'Enter your username',
      name: 'enter_username',
      desc: '',
      args: [],
    );
  }

  /// `Username offers an optional personalized experience over your personal name`
  String get user_name_description {
    return Intl.message(
      'Username offers an optional personalized experience over your personal name',
      name: 'user_name_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `An email is required to verify your account and log in between platforms`
  String get enter_email_description {
    return Intl.message(
      'An email is required to verify your account and log in between platforms',
      name: 'enter_email_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enter_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get enter_valid_email {
    return Intl.message(
      'Enter a valid email',
      name: 'enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters long`
  String get password_length_checker {
    return Intl.message(
      'Password must be at least 6 characters long',
      name: 'password_length_checker',
      desc: '',
      args: [],
    );
  }

  /// `We don't wanna bore you.`
  String get we_dont_wanna_bore_you {
    return Intl.message(
      'We don\'t wanna bore you.',
      name: 'we_dont_wanna_bore_you',
      desc: '',
      args: [],
    );
  }

  /// `So we won't show the signin dialog again but if you want to sign up someday you can do it via clicking app icon at the top left!`
  String get we_dont_wanna_bore_you_description {
    return Intl.message(
      'So we won\'t show the signin dialog again but if you want to sign up someday you can do it via clicking app icon at the top left!',
      name: 'we_dont_wanna_bore_you_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid password`
  String get enter_valid_password {
    return Intl.message(
      'Enter a valid password',
      name: 'enter_valid_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid full name`
  String get enter_valid_full_name {
    return Intl.message(
      'Enter a valid full name',
      name: 'enter_valid_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid confirm password`
  String get enter_valid_confirm_password {
    return Intl.message(
      'Enter a valid confirm password',
      name: 'enter_valid_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_not_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Email already exists`
  String get email_already_exists {
    return Intl.message(
      'Email already exists',
      name: 'email_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `Email not found`
  String get email_not_found {
    return Intl.message(
      'Email not found',
      name: 'email_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalid_credentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalid_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Email verification`
  String get email_verification {
    return Intl.message(
      'Email verification',
      name: 'email_verification',
      desc: '',
      args: [],
    );
  }

  /// `We have sent you an email with a link to verify your account`
  String get email_verification_text {
    return Intl.message(
      'We have sent you an email with a link to verify your account',
      name: 'email_verification_text',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email and click on the link to verify your account`
  String get email_verification_text_2 {
    return Intl.message(
      'Please check your email and click on the link to verify your account',
      name: 'email_verification_text_2',
      desc: '',
      args: [],
    );
  }

  /// `If you do not receive an email within a few minutes, please check your spam folder`
  String get email_verification_text_3 {
    return Intl.message(
      'If you do not receive an email within a few minutes, please check your spam folder',
      name: 'email_verification_text_3',
      desc: '',
      args: [],
    );
  }

  /// `If you still do not receive an email, please contact us`
  String get email_verification_text_4 {
    return Intl.message(
      'If you still do not receive an email, please contact us',
      name: 'email_verification_text_4',
      desc: '',
      args: [],
    );
  }

  /// `We are sorry for the inconvenience`
  String get email_verification_text_5 {
    return Intl.message(
      'We are sorry for the inconvenience',
      name: 'email_verification_text_5',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your patience`
  String get email_verification_text_6 {
    return Intl.message(
      'Thank you for your patience',
      name: 'email_verification_text_6',
      desc: '',
      args: [],
    );
  }

  /// `Resend email`
  String get email_verification_text_7 {
    return Intl.message(
      'Resend email',
      name: 'email_verification_text_7',
      desc: '',
      args: [],
    );
  }

  /// `Go to login`
  String get email_verification_text_8 {
    return Intl.message(
      'Go to login',
      name: 'email_verification_text_8',
      desc: '',
      args: [],
    );
  }

  /// `Email verified`
  String get email_verification_text_9 {
    return Intl.message(
      'Email verified',
      name: 'email_verification_text_9',
      desc: '',
      args: [],
    );
  }

  /// `Your email has been verified`
  String get email_verification_text_10 {
    return Intl.message(
      'Your email has been verified',
      name: 'email_verification_text_10',
      desc: '',
      args: [],
    );
  }

  /// `You can now login to your account`
  String get email_verification_text_11 {
    return Intl.message(
      'You can now login to your account',
      name: 'email_verification_text_11',
      desc: '',
      args: [],
    );
  }

  /// `Devices`
  String get bottomnavbar_devices {
    return Intl.message(
      'Devices',
      name: 'bottomnavbar_devices',
      desc: '',
      args: [],
    );
  }

  /// `Plants`
  String get bottomnavbar_plants {
    return Intl.message(
      'Plants',
      name: 'bottomnavbar_plants',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottomnavbar_home {
    return Intl.message(
      'Home',
      name: 'bottomnavbar_home',
      desc: '',
      args: [],
    );
  }

  /// `Calendar`
  String get bottomnavbar_calendar {
    return Intl.message(
      'Calendar',
      name: 'bottomnavbar_calendar',
      desc: '',
      args: [],
    );
  }

  /// `1. Accept Camera Permission.`
  String get qr_code_text1 {
    return Intl.message(
      '1. Accept Camera Permission.',
      name: 'qr_code_text1',
      desc: '',
      args: [],
    );
  }

  /// `2. Scan the QR code in the booklet given to you.`
  String get qr_code_text2 {
    return Intl.message(
      '2. Scan the QR code in the booklet given to you.',
      name: 'qr_code_text2',
      desc: '',
      args: [],
    );
  }

  /// `3. Press "Done" after the scan is complete.`
  String get qr_code_text3 {
    return Intl.message(
      '3. Press "Done" after the scan is complete.',
      name: 'qr_code_text3',
      desc: '',
      args: [],
    );
  }

  /// `Learn Plants Growing`
  String get home_page_title {
    return Intl.message(
      'Learn Plants Growing',
      name: 'home_page_title',
      desc: '',
      args: [],
    );
  }

  /// `1. Choose your Crops`
  String get home_page_card1_title {
    return Intl.message(
      '1. Choose your Crops',
      name: 'home_page_card1_title',
      desc: '',
      args: [],
    );
  }

  /// `Pick from 60 varieties such as butter lettuce, shiso, Portuguese kale, and chamomile.`
  String get home_page_card1_bodytext {
    return Intl.message(
      'Pick from 60 varieties such as butter lettuce, shiso, Portuguese kale, and chamomile.',
      name: 'home_page_card1_bodytext',
      desc: '',
      args: [],
    );
  }

  /// `2. Insert Seedpods`
  String get home_page_card2_title {
    return Intl.message(
      '2. Insert Seedpods',
      name: 'home_page_card2_title',
      desc: '',
      args: [],
    );
  }

  /// `When they arrive at your door, pop them in the nursery, slide it closed and watch them sprout.`
  String get home_page_card2_bodytext {
    return Intl.message(
      'When they arrive at your door, pop them in the nursery, slide it closed and watch them sprout.',
      name: 'home_page_card2_bodytext',
      desc: '',
      args: [],
    );
  }

  /// `3. Effortless Growing`
  String get home_page_card3_title {
    return Intl.message(
      '3. Effortless Growing',
      name: 'home_page_card3_title',
      desc: '',
      args: [],
    );
  }

  /// `Tarlam automatically optimizes growth and gives your crops exactly what they need.`
  String get home_page_card3_bodytext {
    return Intl.message(
      'Tarlam automatically optimizes growth and gives your crops exactly what they need.',
      name: 'home_page_card3_bodytext',
      desc: '',
      args: [],
    );
  }

  /// `4. Harvest to your Plate`
  String get home_page_card4_title {
    return Intl.message(
      '4. Harvest to your Plate',
      name: 'home_page_card4_title',
      desc: '',
      args: [],
    );
  }

  /// `Get an alert when your produce is ready so you can harvest what you need when you need it.`
  String get home_page_card4_bodytext {
    return Intl.message(
      'Get an alert when your produce is ready so you can harvest what you need when you need it.',
      name: 'home_page_card4_bodytext',
      desc: '',
      args: [],
    );
  }

  /// `Your Devices`
  String get devices_page_title {
    return Intl.message(
      'Your Devices',
      name: 'devices_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Device`
  String get devices_page_add_device {
    return Intl.message(
      'Add Device',
      name: 'devices_page_add_device',
      desc: '',
      args: [],
    );
  }

  /// `Plants`
  String get plants_page_title {
    return Intl.message(
      'Plants',
      name: 'plants_page_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
