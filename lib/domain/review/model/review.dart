import 'package:json_annotation/json_annotation.dart';

// @JsonSerializable()
// class Review {
//   @JsonKey(name: "results")
//   List<Result>? results;

//   Review({required this.results});

//   factory Review.fromJson(Map<String, dynamic> json) => Review(
//         results: (json['results'] as List<dynamic>?)
//             ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
//             .toList(),
//       );
// }

@JsonSerializable()
class Review {
  @JsonKey(name: "author")
  String? author;
  @JsonKey(name: "content")
  String? content;

  Review({
    this.author,
    this.content,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        author: json['author'] as String?,
        content: json['content'] as String?,
      );
}
