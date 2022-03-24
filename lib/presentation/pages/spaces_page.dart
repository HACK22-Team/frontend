import 'package:flutter/cupertino.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text("Earling",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
