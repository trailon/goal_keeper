// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoalModel _$GoalModelFromJson(Map<String, dynamic> json) => GoalModel(
      id: (json['id'] as num).toInt(),
      goalName: json['goal_name'] as String,
      isAchieved: json['is_achieved'] as bool,
      createDate: DateTime.parse(json['create_date'] as String),
      updateDate: DateTime.parse(json['update_date'] as String),
      categoryId: (json['category_id'] as num).toInt(),
    );

Map<String, dynamic> _$GoalModelToJson(GoalModel instance) => <String, dynamic>{
      'id': instance.id,
      'goal_name': instance.goalName,
      'is_achieved': instance.isAchieved,
      'create_date': instance.createDate.toIso8601String(),
      'update_date': instance.updateDate.toIso8601String(),
      'category_id': instance.categoryId,
    };
