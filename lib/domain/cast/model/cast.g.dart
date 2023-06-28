// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cast _$CastFromJson(Map<String, dynamic> json) => Cast(
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
      'cast': instance.cast,
    };

CastMember _$CastMemberFromJson(Map<String, dynamic> json) => CastMember(
      originalName: json['original_name'] as String,
      profilePath: json['profile_path'] as String?,
      character: json['character'] as String,
    );

Map<String, dynamic> _$CastMemberToJson(CastMember instance) =>
    <String, dynamic>{
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
      'character': instance.character,
    };
