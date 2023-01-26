import 'Administrators.dart';
import 'Category.dart';
import 'Movies.dart';

void main() {
  var categories = Category();
  var administrators = Administrators();
  var movies = Movies();

  categories.category(1, 'Drama');

  administrators.administrators(1, 'Quentin');

  movies.movies(1, 'Django', 2013, categories, administrators);

  print('${movies.movie_id} \n${movies.movie_name} \n${movies.movie_year}\n' +
      '${movies.category.category_name} \n${movies.administrators.yonetmen_name}');
}
