import 'package:get_it/get_it.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/app/app.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/constants/images.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/theme/themehelper.dart';
import 'package:oluwaseyi_fatunmole_portfolio/feature/view/presentation/pages/home.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/route_handler/static_routes/initroutes.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/imageloader/circleimage.dart';

GetIt get getIt => GetIt.instance;

///initialize service locator
Future<void> initServiceLocator() async {
  getIt
    ..registerLazySingleton<AppInstance>(() => const AppInstance())
    ..registerLazySingleton<Home>(() => const Home())

    ///routes
    ..registerSingleton<IRoute>(IRoute.instance)

    ///theme
    ..registerSingleton<AppTheme>(AppTheme.instance)

    ///
    ..registerSingleton<ImageWidget>(ImageWidget.instance)

    ///
    ..registerLazySingleton<ImageHolder>(() => ImageHolder());
}
