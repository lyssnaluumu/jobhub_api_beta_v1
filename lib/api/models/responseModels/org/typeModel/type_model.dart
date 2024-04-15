import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_model.g.dart';

@JsonSerializable()
class TypeModel implements Model {
  TypeModel({ this.id, this.locale, this.name });

  int? id;
  String? locale;
  String? name;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeModelToJson(this);
}
