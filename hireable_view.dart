import '../screen_controller/hireable_controller.dart';
import '../helper/helper.dart';
import 'stateless_view.dart';

class HireableView extends StatelessView<Hireable, HireableController> {
  const HireableView(HireableController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Text(
                  "Hireable",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    letterSpacing: 2.1,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Expanded(child: state.futureBuilderResponse())
        ],
      ),
    );
  }
}
