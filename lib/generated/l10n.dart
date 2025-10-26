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
      desc: 'Label for the user\'s personal goals section on the home screen',
      args: [],
    );
  }

  /// `Goal Keeper`
  String get goal_keeper {
    return Intl.message(
      'Goal Keeper',
      name: 'goal_keeper',
      desc: 'App name displayed in the header and splash screen',
      args: [],
    );
  }

  /// `Search one of your GOALS`
  String get search_goal {
    return Intl.message(
      'Search one of your GOALS',
      name: 'search_goal',
      desc: 'Placeholder text for the search bar to find specific goals',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: 'Button label for user sign-in action',
      args: [],
    );
  }

  /// `Login Failed`
  String get sign_in_failed {
    return Intl.message(
      'Login Failed',
      name: 'sign_in_failed',
      desc: 'Notification message shown when login fails',
      args: [],
    );
  }

  /// `Logged in successfully`
  String get sign_in_success {
    return Intl.message(
      'Logged in successfully',
      name: 'sign_in_success',
      desc: 'Notification message shown after successful login',
      args: [],
    );
  }

  /// `Already have one?`
  String get sign_in_alternative {
    return Intl.message(
      'Already have one?',
      name: 'sign_in_alternative',
      desc: 'Prompt asking if the user already has an account',
      args: [],
    );
  }

  /// `Log in to your account`
  String get sign_in_text {
    return Intl.message(
      'Log in to your account',
      name: 'sign_in_text',
      desc: 'Instruction text on the sign-in screen',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: 'Button label for user sign-up action',
      args: [],
    );
  }

  /// `Sign up failed`
  String get sign_up_failed {
    return Intl.message(
      'Sign up failed',
      name: 'sign_up_failed',
      desc: 'Notification message shown when sign-up fails',
      args: [],
    );
  }

  /// `Account created successfully`
  String get sign_up_success {
    return Intl.message(
      'Account created successfully',
      name: 'sign_up_success',
      desc: 'Notification message shown after successful account creation',
      args: [],
    );
  }

  /// `Create an account`
  String get sign_up_create {
    return Intl.message(
      'Create an account',
      name: 'sign_up_create',
      desc: 'Heading text prompting the user to create a new account',
      args: [],
    );
  }

  /// `Don't you have an account yet? Create one for a better personalized experience and synchronizing your datas between platforms`
  String get sign_up_text_suggestion {
    return Intl.message(
      'Don\'t you have an account yet? Create one for a better personalized experience and synchronizing your datas between platforms',
      name: 'sign_up_text_suggestion',
      desc: 'Encouragement text to motivate users to create an account',
      args: [],
    );
  }

  /// `Create an account to access all the features of Goal Keeper, including personalized recommendations, notifications and more incoming features.`
  String get sign_up_text_description {
    return Intl.message(
      'Create an account to access all the features of Goal Keeper, including personalized recommendations, notifications and more incoming features.',
      name: 'sign_up_text_description',
      desc: 'Detailed explanation of benefits for creating an account',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: 'Generic confirmation button label',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: 'Button label to proceed to the next step or screen',
      args: [],
    );
  }

  /// `Your Name`
  String get name {
    return Intl.message(
      'Your Name',
      name: 'name',
      desc: 'Label for the user\'s first name input field',
      args: [],
    );
  }

  /// `Name must contains only letters`
  String get enter_valid_name {
    return Intl.message(
      'Name must contains only letters',
      name: 'enter_valid_name',
      desc: 'Validation message for invalid name input',
      args: [],
    );
  }

  /// `Enter your name`
  String get enter_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_name',
      desc: 'Placeholder or prompt for entering user\'s first name',
      args: [],
    );
  }

  /// `Your name is required to personalize your experience and synchronize your data between platforms`
  String get enter_name_description {
    return Intl.message(
      'Your name is required to personalize your experience and synchronize your data between platforms',
      name: 'enter_name_description',
      desc: 'Explanation why the user\'s name is needed',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: 'Label for the user\'s last name input field',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enter_last_name {
    return Intl.message(
      'Enter your last name',
      name: 'enter_last_name',
      desc: 'Placeholder or prompt for entering user\'s last name',
      args: [],
    );
  }

  /// `Your last name is optional`
  String get enter_last_name_description {
    return Intl.message(
      'Your last name is optional',
      name: 'enter_last_name_description',
      desc: 'Information that last name input is optional',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: 'Label for the user\'s email input field',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: 'Label for the user\'s password input field',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: 'Label for the password confirmation input field',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: 'Link text to initiate password recovery process',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: 'Checkbox label to keep user logged in',
      args: [],
    );
  }

  /// `By creating an account you agree to our Terms of Service and Privacy Policy`
  String get privacy_policy_text {
    return Intl.message(
      'By creating an account you agree to our Terms of Service and Privacy Policy',
      name: 'privacy_policy_text',
      desc: 'Legal disclaimer shown during account creation',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: 'Label for the user\'s username input field',
      args: [],
    );
  }

  /// `Enter a valid username (minimum 2 characters)`
  String get enter_valid_username {
    return Intl.message(
      'Enter a valid username (minimum 2 characters)',
      name: 'enter_valid_username',
      desc: 'Validation message for invalid username input',
      args: [],
    );
  }

  /// `Enter your username`
  String get enter_username {
    return Intl.message(
      'Enter your username',
      name: 'enter_username',
      desc: 'Placeholder or prompt for entering username',
      args: [],
    );
  }

  /// `Username offers an optional personalized experience over your personal name`
  String get user_name_description {
    return Intl.message(
      'Username offers an optional personalized experience over your personal name',
      name: 'user_name_description',
      desc: 'Explanation about the optional username usage',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
      desc: 'Placeholder or prompt for entering email address',
      args: [],
    );
  }

  /// `An email is required to verify your account and log in between platforms`
  String get enter_email_description {
    return Intl.message(
      'An email is required to verify your account and log in between platforms',
      name: 'enter_email_description',
      desc: 'Explanation why email is required',
      args: [],
    );
  }

  /// `Enter your password`
  String get enter_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_password',
      desc: 'Placeholder or prompt for entering password',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get enter_valid_email {
    return Intl.message(
      'Enter a valid email',
      name: 'enter_valid_email',
      desc: 'Validation message for invalid email format',
      args: [],
    );
  }

  /// `Password must be at least 6 characters long`
  String get password_length_checker {
    return Intl.message(
      'Password must be at least 6 characters long',
      name: 'password_length_checker',
      desc: 'Validation message for password length requirement',
      args: [],
    );
  }

  /// `We don't wanna bore you.`
  String get we_dont_wanna_bore_you {
    return Intl.message(
      'We don\'t wanna bore you.',
      name: 'we_dont_wanna_bore_you',
      desc: 'Friendly message explaining not to show sign-in dialog repeatedly',
      args: [],
    );
  }

  /// `So we won't show the signin dialog again but if you want to sign up someday you can do it via clicking app icon at the top left!`
  String get we_dont_wanna_bore_you_description {
    return Intl.message(
      'So we won\'t show the signin dialog again but if you want to sign up someday you can do it via clicking app icon at the top left!',
      name: 'we_dont_wanna_bore_you_description',
      desc:
          'Additional explanation about sign-in dialog behavior and how to sign up later',
      args: [],
    );
  }

  /// `User already exists`
  String get user_already_exists {
    return Intl.message(
      'User already exists',
      name: 'user_already_exists',
      desc:
          'Error message when trying to create an account with an existing username',
      args: [],
    );
  }

  /// `Email already exists`
  String get email_already_exists {
    return Intl.message(
      'Email already exists',
      name: 'email_already_exists',
      desc:
          'Error message when trying to create an account with an existing email',
      args: [],
    );
  }

  /// `Email not found`
  String get email_not_found {
    return Intl.message(
      'Email not found',
      name: 'email_not_found',
      desc:
          'Error message when email is not found during login or password recovery',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalid_credentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalid_credentials',
      desc: 'Error message for incorrect username/email or password',
      args: [],
    );
  }

  /// `Career and Work Life`
  String get career_and_work_life {
    return Intl.message(
      'Career and Work Life',
      name: 'career_and_work_life',
      desc: 'Category name for goals related to career and professional life',
      args: [],
    );
  }

  /// `Personal Development`
  String get personal_development {
    return Intl.message(
      'Personal Development',
      name: 'personal_development',
      desc: 'Category name for goals related to self-improvement and growth',
      args: [],
    );
  }

  /// `Education and Learning`
  String get education_and_learning {
    return Intl.message(
      'Education and Learning',
      name: 'education_and_learning',
      desc: 'Category name for goals related to acquiring knowledge and skills',
      args: [],
    );
  }

  /// `Health and Wellness`
  String get health_and_wellness {
    return Intl.message(
      'Health and Wellness',
      name: 'health_and_wellness',
      desc: 'Category name for goals related to physical and mental health',
      args: [],
    );
  }

  /// `Financial Goals`
  String get financial_goals {
    return Intl.message(
      'Financial Goals',
      name: 'financial_goals',
      desc:
          'Category name for goals related to money management and financial planning',
      args: [],
    );
  }

  /// `Social and Relationships`
  String get social_and_relationships {
    return Intl.message(
      'Social and Relationships',
      name: 'social_and_relationships',
      desc:
          'Category name for goals related to social life and personal relationships',
      args: [],
    );
  }

  /// `Creativity and Hobbies`
  String get creativity_and_hobbies {
    return Intl.message(
      'Creativity and Hobbies',
      name: 'creativity_and_hobbies',
      desc:
          'Category name for goals related to creative activities and hobbies',
      args: [],
    );
  }

  /// `Spiritual and Emotional Growth`
  String get spiritual_and_emotional_growth {
    return Intl.message(
      'Spiritual and Emotional Growth',
      name: 'spiritual_and_emotional_growth',
      desc:
          'Category name for goals related to emotional wellbeing and spirituality',
      args: [],
    );
  }

  /// `Travel and Adventure`
  String get travel_and_adventure {
    return Intl.message(
      'Travel and Adventure',
      name: 'travel_and_adventure',
      desc: 'Category name for goals related to travel and exploration',
      args: [],
    );
  }

  /// `Daily Habits`
  String get daily_habits {
    return Intl.message(
      'Daily Habits',
      name: 'daily_habits',
      desc: 'Category name for goals related to establishing daily routines',
      args: [],
    );
  }

  /// `Environment and Sustainability`
  String get environment_and_sustainability {
    return Intl.message(
      'Environment and Sustainability',
      name: 'environment_and_sustainability',
      desc:
          'Category name for goals related to environmental awareness and sustainability',
      args: [],
    );
  }

  /// `Family and Relationships`
  String get family_and_relationships {
    return Intl.message(
      'Family and Relationships',
      name: 'family_and_relationships',
      desc: 'Category name for goals focused on family and close relationships',
      args: [],
    );
  }

  /// `Volunteering and Help`
  String get volunteering_and_help {
    return Intl.message(
      'Volunteering and Help',
      name: 'volunteering_and_help',
      desc:
          'Category name for goals related to volunteering and helping others',
      args: [],
    );
  }

  /// `It seems like you have no goals created yet. Let's create a new one!`
  String get create_a_new_goal_description {
    return Intl.message(
      'It seems like you have no goals created yet. Let\'s create a new one!',
      name: 'create_a_new_goal_description',
      desc:
          'Prompt shown when the user has no goals, encouraging goal creation',
      args: [],
    );
  }

  /// `Create a new goal`
  String get create_a_new_goal {
    return Intl.message(
      'Create a new goal',
      name: 'create_a_new_goal',
      desc: 'Button label to start creating a new goal',
      args: [],
    );
  }

  /// `Create your own category`
  String get create_your_own_category {
    return Intl.message(
      'Create your own category',
      name: 'create_your_own_category',
      desc: 'Option to allow users to create custom goal categories',
      args: [],
    );
  }

  /// `Categories`
  String get categories_title {
    return Intl.message(
      'Categories',
      name: 'categories_title',
      desc: 'Title label for the categories section',
      args: [],
    );
  }

  /// `Normal`
  String get normal {
    return Intl.message(
      'Normal',
      name: 'normal',
      desc: 'Label for a normal priority or status',
      args: [],
    );
  }

  /// `Crowned`
  String get crowned {
    return Intl.message(
      'Crowned',
      name: 'crowned',
      desc: 'Label indicating a special or highlighted priority/status',
      args: [],
    );
  }

  /// `Important`
  String get important {
    return Intl.message(
      'Important',
      name: 'important',
      desc: 'Label indicating high priority or importance',
      args: [],
    );
  }

  /// `Goal Type`
  String get goal_type {
    return Intl.message(
      'Goal Type',
      name: 'goal_type',
      desc: 'Label for selecting the goal\'s importance level',
      args: [],
    );
  }

  /// `Choose the importance level for your goal`
  String get goal_type_description {
    return Intl.message(
      'Choose the importance level for your goal',
      name: 'goal_type_description',
      desc: 'Description for selecting goal importance',
      args: [],
    );
  }

  /// `Selected category`
  String get selected_category {
    return Intl.message(
      'Selected category',
      name: 'selected_category',
      desc: 'Label showing the currently selected goal category',
      args: [],
    );
  }

  /// `Enter goal name`
  String get enter_goal_name {
    return Intl.message(
      'Enter goal name',
      name: 'enter_goal_name',
      desc: 'Placeholder text for entering the goal\'s name',
      args: [],
    );
  }

  /// `What do you want to achieve?`
  String get enter_goal_description {
    return Intl.message(
      'What do you want to achieve?',
      name: 'enter_goal_description',
      desc: 'Prompt asking the user to describe their goal',
      args: [],
    );
  }

  /// `Goal name is required`
  String get goal_name_required {
    return Intl.message(
      'Goal name is required',
      name: 'goal_name_required',
      desc: 'Validation message when goal name is missing',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: 'Label indicating that a loading process is in progress',
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
