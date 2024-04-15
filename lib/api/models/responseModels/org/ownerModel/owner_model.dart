import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:jobhub_api_beta_v1/api/models/responseModels/org/avatarModel/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner_model.g.dart';

@JsonSerializable()
class Owner implements Model {
  Owner({
    this.id,
    this.locale,
    this.userName,
    this.firstName,
    this.cellphone,
    this.email,
    this.avatar,
  });

  int? id;
  String? locale;
  String? userName;
  String? firstName;
  String? cellphone;
  String? email;
  Avatar? avatar;

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
