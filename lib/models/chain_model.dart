import 'package:json_annotation/json_annotation.dart';

part 'chain_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ChainModel {
  @JsonKey(name: "id")
  final int chainId;
  final DateTime createDate;
  final DateTime updateDate;
  final String chainName;
  ChainModel({
    required this.chainId,
    required this.chainName,
    required this.createDate,
    required this.updateDate,
  });

  factory ChainModel.fromJson(Map<String, dynamic> json) =>
      _$ChainModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChainModelToJson(this);

  @override
  String toString() {
    return 'ChainModel(id: $chainId, createDate: $createDate, updateDate: $updateDate, chainName: $chainName)';
  }

  ChainModel copyWith({
    int? chainId,
    String? chainName,
    DateTime? createDate,
    DateTime? updateDate,
  }) {
    return ChainModel(
      chainId: chainId ?? this.chainId,
      chainName: chainName ?? this.chainName,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }
}
