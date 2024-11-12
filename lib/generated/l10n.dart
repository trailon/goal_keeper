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

  /// `My Goals`
  String get my_goals {
    return Intl.message(
      'My Goals',
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

  /// `Logged in successfully`
  String get sign_in_success {
    return Intl.message(
      'Logged in successfully',
      name: 'sign_in_success',
      desc: '',
      args: [],
    );
  }

  /// `Login Failed`
  String get sign_in_failed {
    return Intl.message(
      'Login Failed',
      name: 'sign_in_failed',
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

  /// `User already exists`
  String get user_already_exists {
    return Intl.message(
      'User already exists',
      name: 'user_already_exists',
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

  /// `Career and Work Life`
  String get career_and_work_life {
    return Intl.message(
      'Career and Work Life',
      name: 'career_and_work_life',
      desc: '',
      args: [],
    );
  }

  /// `Personal Development`
  String get personal_development {
    return Intl.message(
      'Personal Development',
      name: 'personal_development',
      desc: '',
      args: [],
    );
  }

  /// `Education and Learning`
  String get education_and_learning {
    return Intl.message(
      'Education and Learning',
      name: 'education_and_learning',
      desc: '',
      args: [],
    );
  }

  /// `Health and Wellness`
  String get health_and_wellness {
    return Intl.message(
      'Health and Wellness',
      name: 'health_and_wellness',
      desc: '',
      args: [],
    );
  }

  /// `Financial Goals`
  String get financial_goals {
    return Intl.message(
      'Financial Goals',
      name: 'financial_goals',
      desc: '',
      args: [],
    );
  }

  /// `Social and Relationships`
  String get social_and_relationships {
    return Intl.message(
      'Social and Relationships',
      name: 'social_and_relationships',
      desc: '',
      args: [],
    );
  }

  /// `Creativity and Hobbies`
  String get creativity_and_hobbies {
    return Intl.message(
      'Creativity and Hobbies',
      name: 'creativity_and_hobbies',
      desc: '',
      args: [],
    );
  }

  /// `Spiritual and Emotional Growth`
  String get spiritual_and_emotional_growth {
    return Intl.message(
      'Spiritual and Emotional Growth',
      name: 'spiritual_and_emotional_growth',
      desc: '',
      args: [],
    );
  }

  /// `Travel and Adventure`
  String get travel_and_adventure {
    return Intl.message(
      'Travel and Adventure',
      name: 'travel_and_adventure',
      desc: '',
      args: [],
    );
  }

  /// `Daily Habits`
  String get daily_habits {
    return Intl.message(
      'Daily Habits',
      name: 'daily_habits',
      desc: '',
      args: [],
    );
  }

  /// `Environment and Sustainability`
  String get environment_and_sustainability {
    return Intl.message(
      'Environment and Sustainability',
      name: 'environment_and_sustainability',
      desc: '',
      args: [],
    );
  }

  /// `Family and Relationships`
  String get family_and_relationships {
    return Intl.message(
      'Family and Relationships',
      name: 'family_and_relationships',
      desc: '',
      args: [],
    );
  }

  /// `Volunteering and Help`
  String get volunteering_and_help {
    return Intl.message(
      'Volunteering and Help',
      name: 'volunteering_and_help',
      desc: '',
      args: [],
    );
  }

  /// `It seems like you have no goals created yet. Let's create a new one!`
  String get create_a_new_goal_description {
    return Intl.message(
      'It seems like you have no goals created yet. Let\'s create a new one!',
      name: 'create_a_new_goal_description',
      desc: '',
      args: [],
    );
  }

  /// `Create a new goal`
  String get create_a_new_goal {
    return Intl.message(
      'Create a new goal',
      name: 'create_a_new_goal',
      desc: '',
      args: [],
    );
  }

  /// `Create your own category`
  String get create_your_own_category {
    return Intl.message(
      'Create your own category',
      name: 'create_your_own_category',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories_title {
    return Intl.message(
      'Categories',
      name: 'categories_title',
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
