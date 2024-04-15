// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['id'] as int?,
      locale: json['locale'] as String?,
      userName: json['userName'] as String?,
      firstName: json['firstName'] as String?,
      cellphone: json['cellphone'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'locale': instance.locale,
      'userName': instance.userName,
      'firstName': instance.firstName,
      'cellphone': instance.cellphone,
      'email': instance.email,
      'avatar': instance.avatar,
    };
