import 'package:json_annotation/json_annotation.dart';

part 'genre_voting_runtime.g.dart';

@JsonSerializable()
class GenreVotingRuntime {
  @JsonKey(name: "genres")
  List<Genre>? genres;
  @JsonKey(name: "runtime")
  int? runtime;
  @JsonKey(name: "vote_average")
  double? voteAverage;

  GenreVotingRuntime({
    this.genres,
    this.runtime,
    this.voteAverage,
  });

  factory GenreVotingRuntime.fromJson(Map<String, dynamic> json) {
    final genresData = json['genres'];
    final genres = (genresData is List<dynamic>)
        ? genresData
            .map((e) => Genre.fromJson(e as Map<String, dynamic>))
            .toList()
        : null;

    return GenreVotingRuntime(
      genres: genres,
      runtime: json['runtime'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );
  }

  @override
  String toString() {
    final genreNames =
        genres?.map((genre) => genre.name).join(', ') ?? 'Unknown';
    return 'GenreVotingRuntime(genres: $genreNames, runtime: $runtime, voteAverage: $voteAverage)';
  }
}

@JsonSerializable()
class Genre {
  @JsonKey(name: "name")
  String? name;
  Genre({this.name});

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        name: json['name'] as String?,
      );
}
