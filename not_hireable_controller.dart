import '../provider/api_provider.dart';
import '../model/model.dart';
import '../components/components.dart';
import '../helper/helper.dart';
import '../screen_view/not_hireable_view.dart';
import '../values/values.dart';

class NotHireable extends StatefulWidget {
  static const routeName = Strings.SCREEN_NOT_HIREABLE;
  const NotHireable({Key? key}) : super(key: key);

  @override
  NotHireableController createState() => NotHireableController();
}

class NotHireableController extends State<NotHireable> {
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

                  if (user.type == 'Organization') {
                    return UserCardWiget(user: user);
                  } else {
                    return const Text(
                      '',
                      style: TextStyle(
                        fontSize: 0.5,
                      ),
                    );
                  }
                });
          }
        });
  }

  @override
  Widget build(BuildContext context) => NotHireableView(this);
}
