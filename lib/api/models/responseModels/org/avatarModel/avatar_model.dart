import 'package:jobhub_api_beta_v1/api/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'avatar_model.g.dart';

@JsonSerializable()
class Avatar implements Model {
  Avatar({
    this.id,
    this.fileName,
    this.fullUrl,
    this.thumb,
    this.caption,
    this.size,
    this.width,
    this.height,
  });

  int? id;
  String? fileName;
  String? fullUrl;
  String? thumb;
  String? caption;
  int? size;
  int? width;
  int? height;

  factory Avatar.fromJson(Map<String, dynamic> json) =>
      _$AvatarFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}
