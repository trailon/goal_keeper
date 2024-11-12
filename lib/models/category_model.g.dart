// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoalCategory _$GoalCategoryFromJson(Map<String, dynamic> json) => GoalCategory(
      id: (json['id'] as num).toInt(),
      categoryName: json['category_name'] as String,
      userId: json['user_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => GoalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GoalCategoryToJson(GoalCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.categoryName,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'goals': instance.goals,
    };
