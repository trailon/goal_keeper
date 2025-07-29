import 'package:json_annotation/json_annotation.dart';

part 'goal_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GoalModel {
  final int id;
  final String goalName;
  final bool isAchieved;
  final DateTime createDate;
  final DateTime updateDate;
  final int categoryId;
  GoalModel({
    required this.id,
    required this.goalName,
    required this.isAchieved,
    required this.createDate,
    required this.updateDate,
    required this.categoryId,
  });

  factory GoalModel.fromJson(Map<String, dynamic> json) =>
      _$GoalModelFromJson(json);

  Map<String, dynamic> toJson() => _$GoalModelToJson(this);
  
  @override
  String toString() {
    return 'GoalModel(id: $id, goalName: $goalName, isAchieved: $isAchieved, createDate: $createDate, updateDate: $updateDate, categoryId: $categoryId)';
  }

  GoalModel copyWith({
    int? id,
    String? goalName,
    bool? isAchieved,
    DateTime? createDate,
    DateTime? updateDate,
    int? categoryId,
  }) {
    return GoalModel(
      id: id ?? this.id,
      goalName: goalName ?? this.goalName,
      isAchieved: isAchieved ?? this.isAchieved,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}
