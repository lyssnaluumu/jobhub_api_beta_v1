// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      id: json['id'] as int?,
      locale: json['locale'] as String?,
      organization_id: json['organization_id'] as String?,
      web_site: json['web_site'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'id': instance.id,
      'locale': instance.locale,
      'organization_id': instance.organization_id,
      'web_site': instance.web_site,
    };
