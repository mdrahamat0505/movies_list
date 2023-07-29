// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesList _$MoviesListFromJson(Map<String, dynamic> json) => MoviesList(
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesListToJson(MoviesList instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'movies': instance.movies,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int?,
      title: json['title'] as String?,
      year: json['year'] as String?,
      runtime: json['runtime'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      director: json['director'] as String?,
      actors: json['actors'] as String?,
      plot: json['plot'] as String?,
      posterUrl: json['posterUrl'] as String?,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'director': instance.director,
      'actors': instance.actors,
      'plot': instance.plot,
      'posterUrl': instance.posterUrl,
    };
