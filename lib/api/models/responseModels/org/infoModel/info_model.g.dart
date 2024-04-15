// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      id: json['id'] as int?,
      locale: json['locale'] as String?,
      organizationId: json['organizationId'] as String?,
      webSite: json['webSite'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'id': instance.id,
      'locale': instance.locale,
      'organizationId': instance.organizationId,
      'webSite': instance.webSite,
    };
