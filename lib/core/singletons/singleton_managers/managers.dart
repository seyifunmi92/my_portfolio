import '../../app/app.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/constants/images.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/theme/themehelper.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/singletons/servicelocator.dart';
import 'package:oluwaseyi_fatunmole_portfolio/feature/view/presentation/pages/home.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/route_handler/static_routes/initroutes.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/customtext/textstyle.dart';
import 'package:oluwaseyi_fatunmole_portfolio/core/layout/widgets/resuseables/imageloader/circleimage.dart';





class Managers {
  ///app instance
  static AppInstance app = getIt<AppInstance>();
  static Home home = getIt<Home>();
  static IRoute route = getIt<IRoute>();
  static AppTheme theme = getIt<AppTheme>();
  static ImageWidget image = getIt<ImageWidget>();
  static ImageHolder imageholder = getIt<ImageHolder>();
  static Styles styles = getIt<Styles>();
}
