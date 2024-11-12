// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChainModel _$ChainModelFromJson(Map<String, dynamic> json) => ChainModel(
      chainId: (json['id'] as num).toInt(),
      chainName: json['chain_name'] as String,
      createDate: DateTime.parse(json['create_date'] as String),
      updateDate: DateTime.parse(json['update_date'] as String),
    );

Map<String, dynamic> _$ChainModelToJson(ChainModel instance) =>
    <String, dynamic>{
      'id': instance.chainId,
      'create_date': instance.createDate.toIso8601String(),
      'update_date': instance.updateDate.toIso8601String(),
      'chain_name': instance.chainName,
    };
