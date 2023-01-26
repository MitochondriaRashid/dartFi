import 'Administrators.dart';
import 'Category.dart';

class Movies {
  late int movie_id;
  late String movie_name;
  late int movie_year;
  late Category category;
  late Administrators administrators;

  movies(int movie_id, String movie_name, int movie_year, Category category,
      Administrators administrators) {
    this.movie_id = movie_id;
    this.movie_name = movie_name;
    this.movie_year = movie_year;
    this.category = category;
    this.administrators = administrators;
  }
}
