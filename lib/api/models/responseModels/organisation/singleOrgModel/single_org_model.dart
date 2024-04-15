import 'package:flutter/material.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/organisation/infoModel/info_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/organisation/ownerModel/owner_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/organisation/typeModel/type_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single_org_model.g.dart';

@JsonSerializable()
class SingleOrgModel implements Model {
  SingleOrgModel({
    this.id,
    this.locale,
    this.title,
    this.description,
    this.type,
    this.owner,
    this.createdAt,
    this.updatedAt,
    this.info,
  });

  int? id;
  String? locale;
  String? title;
  String? description;
  TypeModel? type;
  Owner? owner;
  String? createdAt;
  String? updatedAt;
  Info? info;

  @override
  Widget toWidget() {
    return Column(
      children: [
        Text(id?.toString() ?? 'Null'),
        const SizedBox(height: 5),
        Text(locale ?? 'Null'),
        const SizedBox(height: 5),
        Text(title ?? 'Null'),
        const SizedBox(height: 5),
        Text(description ?? 'Null'),
        const SizedBox(height: 5),
        type?.toWidget() ?? const Text('Null'),
        const SizedBox(height: 5),
        owner?.toWidget() ?? const Text('Null'),
        const SizedBox(height: 5),
        Text(createdAt ?? 'Null'),
        const SizedBox(height: 5),
        Text(updatedAt ?? 'Null'),
        const SizedBox(height: 5),
        info?.toWidget() ?? const Text('Null'),
      ],
    );
  }

  factory SingleOrgModel.fromJson(Map<String, dynamic> json) =>
      _$SingleOrgModelFromJson(json);

  Map<String, dynamic> toJson() => _$SingleOrgModelToJson(this);
}
