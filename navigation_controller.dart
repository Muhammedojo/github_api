import 'package:github_api/model/user.dart';
import 'package:github_api/provider/api_provider.dart';
import 'package:github_api/screen_view/navigation_view.dart';
import '../screen_view/navigation_view.dart';
import '../helper/helper.dart';
import '../screens/screen.dart';
import '../values/values.dart';

class Navigation extends StatefulWidget {
  //const NavigationController({Key? key}) : super(key: key);

  static const routeName = Strings.SCREEN_NAVIGATION;
  @override
  NavigationController createState() => NavigationController();
}

class NavigationController extends State<Navigation> {
  // final duplicateItems = List<String>.generate(10000, (i) => "Item $i");

  HttpServices httpServices = HttpServices();

  final Dio _dio = Dio();
  final _baseUrl = 'https://api.github.com/';

  Future<List<dynamic>?> getUser() async {
    final response = await _dio.get(_baseUrl + 'users');
    var responseBody = response;
  }

  //Future <List<dynamic>> (future {(const httpServices.getUser())};),

  List<User> responseBody = [];
  List<User> _foundUsers = [];

  int currentIndex = 0;

  List<Widget> navPage = [
    const Hireable(),
    const NotHireable(),
  ];

  @override
  void initState() {
    setState(() {
      _foundUsers = responseBody;
    });
    super.initState();
  }

  onSearch(String search) {
    setState(() {
      _foundUsers = responseBody
          .where((user) => user.login!.toLowerCase().contains(search))
          .toList();
    });
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  TextEditingController editingController = TextEditingController();

  var items = <String>[];

  // searchUser(String text) async {
  //   // _searchResult.clear();
  //   if (text.isEmpty) {
  //     setState(() {});
  //     return;
  //   }
  // }

  // void filterSearchResults(String query) {
  //   List<String> User = <String>[];
  //   User.addAll(duplicateItems);
  //   if (query.isNotEmpty) {
  //     List<String> User = <String>[];
  //     for (var item in User) {
  //       if (item.contains(query)) {
  //         User.add(item);
  //       }
  //     }
  //     setState(() {
  //       items.clear();
  //       items.addAll(User);
  //     });
  //     return;
  //   } else {
  //     setState(() {
  //       items.clear();
  //       items.addAll(duplicateItems);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) => NavigationView(this);
}
