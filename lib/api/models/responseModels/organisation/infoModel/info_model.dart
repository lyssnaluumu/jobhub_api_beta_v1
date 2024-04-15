import 'package:flutter/material.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_model.g.dart';

@JsonSerializable()
class Info implements Model {
  Info({this.id, this.locale, this.organizationId, this.webSite});

  int? id;
  String? locale;
  String? organizationId;
  String? webSite;

  @override
  Widget toWidget() {
    return Column(
      children: [
        Text(id?.toString() ?? 'Null'),
        const SizedBox(height: 5),
        Text(locale ?? 'Null'),
        const SizedBox(height: 5),
        Text(organizationId ?? 'Null'),
        const SizedBox(height: 5),
        Text(webSite ?? 'Null'),
      ],
    );
  }

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
