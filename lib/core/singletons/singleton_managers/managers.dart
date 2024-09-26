import '../../app/app.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/servicelocator.dart';
import 'package:oluwaseyi_fatunmole_portfolio/feature/view/presentation/pages/home.dart';



class Managers {

  ///app instance
  static AppInstance app = getIt<AppInstance>();
  static Home home = getIt<Home>();
}
