import 'package:goal_keeper/models/goal_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GoalCategory {
  final int id;
  final String categoryName;
  final String? userId;
  final DateTime createdAt;
  final List<GoalModel> goals;

  GoalCategory({
    required this.id,
    required this.categoryName,
    required this.userId,
    required this.createdAt,
    required this.goals,
  });

  factory GoalCategory.fromJson(Map<String, dynamic> json) =>
      _$GoalCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$GoalCategoryToJson(this);

  factory GoalCategory.custom() => GoalCategory(
      id: 0,
      categoryName: "custom",
      userId: null,
      createdAt: DateTime.now(),
      goals: []);

  GoalCategory copyWith({
    int? id,
    String? categoryName,
    String? userId,
    DateTime? createdAt,
  }) =>
      GoalCategory(
        id: id ?? this.id,
        categoryName: categoryName ?? this.categoryName,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        goals: goals,
      );
}
