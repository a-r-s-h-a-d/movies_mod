// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_voting_runtime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreVotingRuntime _$GenreVotingRuntimeFromJson(Map<String, dynamic> json) =>
    GenreVotingRuntime(
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      runtime: json['runtime'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GenreVotingRuntimeToJson(GenreVotingRuntime instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'name': instance.name,
    };
