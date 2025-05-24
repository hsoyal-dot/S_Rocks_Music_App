import 'package:get_it/get_it.dart';
import 'package:s_rocks_music_homepage/view/screens/home/home_view_model.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => HomeViewModel());
}