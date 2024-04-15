// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_org_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleOrgModel _$SingleOrgModelFromJson(Map<String, dynamic> json) =>
    SingleOrgModel(
      id: json['id'] as int?,
      locale: json['locale'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] == null
          ? null
          : TypeModel.fromJson(json['type'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleOrgModelToJson(SingleOrgModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locale': instance.locale,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'owner': instance.owner,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'info': instance.info,
    };
