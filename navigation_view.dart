import '../screen_controller/navigation_controller.dart';
import '../helper/helper.dart';
import 'stateless_view.dart';
import '../utils/utils.dart';

class NavigationView extends StatelessView<Navigation, NavigationController> {
  const NavigationView(NavigationController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: hp20,
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white60,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(146, 146, 210, 0.1),
                    blurRadius: 25.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  icon: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.search),
                  ),
                ),
                keyboardType: TextInputType.text,
                controller: state.editingController,
                onChanged: (value) => state.onSearch(value),
              ),
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: state.currentIndex,
        children: state.navPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: state.onTabTapped,
        currentIndex: state.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Organization',
          ),
        ],
      ),
    );
  }
}
