enum ShadAuthModal {
  signIn,
  signUp;
}

enum GoalTypeKey {
  normal,
  crowned,
  important;

  GoalTypeKey byName(String key) =>
      values.firstWhere((type) => type.name == key);
}
