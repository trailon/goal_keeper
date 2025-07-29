import 'package:goal_keeper/app/enums.dart';
import 'package:goal_keeper/generated/l10n.dart';

extension GoalTypeKeyExtension on GoalTypeKey {
  String get label {
    switch (this) {
      case GoalTypeKey.normal:
        return S.current.normal;
      case GoalTypeKey.crowned:
        return S.current.crowned;
      case GoalTypeKey.important:
        return S.current.important;
    }
  }

  static GoalTypeKey fromString(String value) {
    return GoalTypeKey.values.firstWhere(
      (e) => e.name == value,
      orElse: () => GoalTypeKey.normal,
    );
  }
}
