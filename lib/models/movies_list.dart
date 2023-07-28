class MoviesList {
  List<String>? genres;
  List<Movie>? movies;

  MoviesList({
    this.genres,
    this.movies,
  });

}

class Movie {
  int? id;
  String? title;
  String? year;
  String? runtime;
  List<String>? genres;
  String? director;
  String? actors;
  String? plot;
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

}
