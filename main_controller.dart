import '../helper/helper.dart';
import '../screen_view/main_view.dart';
import '../values/values.dart';

class Main extends StatefulWidget {
  static const routeName = Strings.SCREEN_MAIN;
  const Main({Key? key}) : super(key: key);

  @override
  MainController createState() => MainController();
}

class MainController extends State<Main> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MainView(this);
}
