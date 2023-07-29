import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movies_list.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class MoviesList {
  @HiveField(1)
  List<String>? genres;
  @HiveField(2)
  List<Movie>? movies;

  MoviesList({
    this.genres,
    this.movies,
  });

  factory MoviesList.fromJson(Map<String, dynamic> json) => _$MoviesListFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesListToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 2)
class Movie {
  @HiveField(1)
  int? id;
  @HiveField(2)
  String? title;
  @HiveField(3)
  String? year;
  @HiveField(4)
  String? runtime;
  @HiveField(5)
  List<String>? genres;
  @HiveField(6)
  String? director;
  @HiveField(7)
  String? actors;
  @HiveField(8)
  String? plot;
  @HiveField(9)
  String? posterUrl;

  Movie({
    this.id,
    this.title,
    this.year,
    this.runtime,
    this.genres,
    this.director,
    this.actors,
    this.plot,
    this.posterUrl,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
