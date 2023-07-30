import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movies_list.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class MoviesList {
  @HiveField(1)
  List<Movie>? movies;

  MoviesList({
    this.movies,
  });

  factory MoviesList.fromJson(Map<String, dynamic> json) =>
      _$MoviesListFromJson(json);
  Map<String, dynamic> toJson() => _$MoviesListToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
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
  List<String>? empty;
  @HiveField(6)
  String? director;
  @HiveField(7)
  String? actors;
  @HiveField(8)
  String? plot;
  @HiveField(9)
  String? posterUrl;
  @HiveField(10)
  List<String>? genres;

  Movie({
    this.id,
    this.title,
    this.year,
    this.runtime,
    this.empty,
    this.director,
    this.actors,
    this.plot,
    this.posterUrl,
    this.genres,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable()
class GenresList {
  @HiveField(1)
  List<String>? genres;

  GenresList({
    this.genres,
  });

  factory GenresList.fromJson(Map<String, dynamic> json) =>
      _$GenresListFromJson(json);
  Map<String, dynamic> toJson() => _$GenresListToJson(this);
}
