import '../helper/helper.dart';
import '../screen_view/splash_screen_view.dart';
import '../values/values.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = Strings.SCREEN_SPLASHSCREEN;
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenController createState() => SplashScreenController();
}

class SplashScreenController extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => SplashScreenView(this);
}
