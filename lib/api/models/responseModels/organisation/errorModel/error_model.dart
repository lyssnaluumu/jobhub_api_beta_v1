import 'package:flutter/material.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel implements Model {
  ErrorModel({this.error});

  String? error;

  @override
  Widget toWidget() {
    return Column(
      children: [
        Text(error ?? 'Null'),
      ],
    );
  }

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
