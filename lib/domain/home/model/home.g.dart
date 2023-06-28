// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Home _$$_HomeFromJson(Map<String, dynamic> json) => _$_Home(
      id: json['id'] as int,
      title: json['title'] as String,
      releasedDate: json['release_date'] as String,
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'release_date': instance.releasedDate,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'overview': instance.overview,
    };
