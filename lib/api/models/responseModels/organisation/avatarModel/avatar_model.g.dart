// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      id: json['id'] as int?,
      fileName: json['fileName'] as String?,
      full_url: json['full_url'] as String?,
      thumb: json['thumb'] as String?,
      caption: json['caption'] as String?,
      size: json['size'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'full_url': instance.full_url,
      'thumb': instance.thumb,
      'caption': instance.caption,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };
