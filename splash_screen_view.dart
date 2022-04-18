import 'dart:async';

import '../screens/screen.dart';
import '../helper/helper.dart';
import 'stateless_view.dart';

class SplashScreenView
    extends StatelessView<SplashScreen, SplashScreenController> {
  const SplashScreenView(SplashScreenController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Navigation())));

    return SafeArea(
      child: Scaffold(
        body: Container(
            height: 700,
            width: 500,
            child: Image.network(
              "https://images.unsplash.com/photo-1630514969818-94aefc42ec47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
