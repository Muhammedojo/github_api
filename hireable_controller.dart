import '../screen_view/hireable_view.dart';
import '../provider/api_provider.dart';
import '../model/model.dart';
import '../components/components.dart';
import '../helper/helper.dart';
import '../values/values.dart';

class Hireable extends StatefulWidget {
  static const routeName = Strings.SCREEN_HIREABLE;
  const Hireable({Key? key}) : super(key: key);

  @override
  HireableController createState() => HireableController();
}

class HireableController extends State<Hireable> {
  HttpServices httpServices = HttpServices();
  @override
  void initState() {
    super.initState();
  }

  futureBuilderResponse() {
    return FutureBuilder<List<dynamic>?>(
        future: httpServices.getUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            List<dynamic> data = snapshot.data!;
            return ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  User user = User.fromJson(data[index]);
                  if (user.type == 'User') {
                    return UserCardWiget(user: user);
                  } else {
                    //print(user.type);
                    //print(user.id);
                    return const Text('');
                  }
                });
          }
        });
  }

  @override
  Widget build(BuildContext context) => HireableView(this);
}
