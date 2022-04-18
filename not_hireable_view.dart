import 'package:github_api/screen_controller/not_hireable_controller.dart';

import '../helper/helper.dart';
import 'stateless_view.dart';

class NotHireableView
    extends StatelessView<NotHireable, NotHireableController> {
  const NotHireableView(NotHireableController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: const [
            Text(
              "Not Hireable",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  letterSpacing: 2.1,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      Expanded(
        child: state.futureBuilderResponse(),
      )
    ]));
  }
}
