// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_model.g.dart';

@JsonSerializable()
class Info implements Model {
  Info({this.id, this.locale, this.organization_id, this.web_site});

  int? id;
  String? locale;
  String? organization_id;
  String? web_site;

  @override
  Widget toWidget() {
    return Column(
      children: [
        Text(id?.toString() ?? 'Null'),
        const SizedBox(height: 5),
        Text(locale ?? 'Null'),
        const SizedBox(height: 5),
        Text(organization_id ?? 'Null'),
        const SizedBox(height: 5),
        Text(web_site ?? 'Null'),
      ],
    );
  }

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
