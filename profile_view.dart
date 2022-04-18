import '../model/model.dart';
import '../provider/providers.dart';
import '../screen_controller/profile_controller.dart';
import 'stateless_view.dart';
import '../utils/utils.dart';
import '../helper/helper.dart';

class ProfileView extends StatelessView<Profile, ProfileController> {
  HttpServices httpServices = HttpServices();
  User user;
  ProfileView(
    ProfileController state, {
    Key? key,
    required this.user,
  }) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // To remove appbar shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: p8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: CircleAvatar(
              backgroundImage: NetworkImage(user.avatar_url!),
              backgroundColor: Colors.grey,
              radius: 40.0,
            )),
            divider,
            hSBox10,
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0,
              ),
            ),
            hSBox10,
            Text(
              user.login!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Estonia',
              ),
            ),
            hSBox30,
            const Text(
              'POSITION',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0),
            ),
            hSBox10,
            const Text(
              'IT Intern',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Estonia',
              ),
            ),
            hSBox10,
            const Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0,
              ),
            ),
            hSBox10,
            Text(
              '',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Estonia',
              ),
            ),
            hSBox30,
            const Text(
              'ROLE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0),
            ),
            hSBox10,
            const Text(
              'Mobile Developer',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Estonia',
              ),
            ),
            hSBox30,
            const Text(
              'LOCATION',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0),
            ),
            hSBox10,
            const Text(
              'Abuja, Nigeria',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Estonia.ttf',
              ),
            ),
            hSBox30,
            const Text(
              'EMAIL',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0),
            ),
            hSBox10,
            Row(
              children: const <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                hSBox10,
                Text(
                  'oayodele@afexnigeria.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
