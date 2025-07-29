import 'package:goal_keeper/generated/l10n.dart';

class UtilityMethods {
  static Map<String, String> loadWordFromKey = {
    "career_and_work_life": S.current.career_and_work_life,
    "personal_development": S.current.personal_development,
    "education_and_learning": S.current.education_and_learning,
    "health_and_wellness": S.current.health_and_wellness,
    "financial_goals": S.current.financial_goals,
    "social_and_relationships": S.current.social_and_relationships,
    "creativity_and_hobbies": S.current.creativity_and_hobbies,
    "spiritual_and_emotional_growth": S.current.spiritual_and_emotional_growth,
    "travel_and_adventure": S.current.travel_and_adventure,
    "daily_habits": S.current.daily_habits,
    "environment_and_sustainability": S.current.environment_and_sustainability,
    "family_and_relationships": S.current.family_and_relationships,
    "volunteering_and_help": S.current.volunteering_and_help,
  };

  static String intl(String key) => loadWordFromKey[key]!;
}
