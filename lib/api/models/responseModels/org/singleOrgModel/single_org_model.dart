import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/org/infoModel/info_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/org/ownerModel/owner_model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/org/typeModel/type_model.dart';
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

  factory SingleOrgModel.fromJson(Map<String, dynamic> json) =>
      _$SingleOrgModelFromJson(json);

  Map<String, dynamic> toJson() => _$SingleOrgModelToJson(this);
}
