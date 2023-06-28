import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "release_date") required String releasedDate,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "backdrop_path") required String backdropPath,
    @JsonKey(name: "overview") required String overview,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
