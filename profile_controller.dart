import 'package:github_api/model/user.dart';
import 'package:github_api/provider/providers.dart';
import 'package:github_api/screen_view/profile_view.dart';

import '../helper/helper.dart';
import '../values/values.dart';

class Profile extends StatefulWidget {
  static const routeName = Strings.SCREEN_PROFILE;
  Profile({Key? key}) : super(key: key);

  @override
  ProfileController createState() => ProfileController();
}

class ProfileController extends State<Profile> {
  HttpServices httpServices = HttpServices();
  late final User user;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ProfileView(
        this,
        user: user,
      );
}
