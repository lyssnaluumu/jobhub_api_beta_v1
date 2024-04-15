import 'package:flutter/material.dart';
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

  @override
  Widget toWidget() {
    return Column(
      children: [
        Text(id?.toString() ?? 'Null'),
        const SizedBox(height: 5),
        Text(fileName ?? 'Null'),
        const SizedBox(height: 5),
        Text(fullUrl ?? 'Null'),
        const SizedBox(height: 5),
        Text(thumb ?? 'Null'),
        const SizedBox(height: 5),
        Text(caption ?? 'Null'),
        const SizedBox(height: 5),
        Text(size?.toString() ?? 'Null'),
        const SizedBox(height: 5),
        Text(width?.toString() ?? 'Null'),
        const SizedBox(height: 5),
        Text(height?.toString() ?? 'Null'),
      ],
    );
  }

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}
