import 'package:json_annotation/json_annotation.dart';

part 'cast.g.dart';

@JsonSerializable()
class Cast {
  @JsonKey(name: "cast")
  List<Cast>? cast;

  Cast({required this.cast});

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
        cast: (json['cast'] as List<Cast>?)
            ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'cast': cast?.map((e) => e.toJson()).toList(),
      };
}

@JsonSerializable()
class CastMember {
  @JsonKey(name: 'original_name')
  String originalName;
  @JsonKey(name: 'profile_path')
  String? profilePath;
  @JsonKey(name: 'character')
  String character;

  CastMember({
    required this.originalName,
    this.profilePath,
    required this.character,
  });

  factory CastMember.fromJson(Map<String, dynamic> json) =>
      _$CastMemberFromJson(json);
  Map<String, dynamic> toJson() => _$CastMemberToJson(this);
}
