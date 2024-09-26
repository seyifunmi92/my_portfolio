import 'package:get_it/get_it.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/app/app.dart';
import 'package:oluwaseyi_fatunmole_portfolio/feature/view/presentation/pages/home.dart';

GetIt get getIt => GetIt.instance;

///initialize service locator
Future<void> initServiceLocator() async {
  getIt
    ..registerLazySingleton<AppInstance>(() => const AppInstance())
    ..registerLazySingleton<Home>(() => const Home());
}
