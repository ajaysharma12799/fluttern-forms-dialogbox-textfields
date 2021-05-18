import 'package:flutter/material.dart';
import '../widget/simpleDialog.dart' as SimpleDialogBox;
import '../widget/customDialog.dart' as customDialogBox;
import '../widget/complexDialog.dart' as compledDialogBox;

class DialogBox extends StatelessWidget {
  static const routeName = "/DialogBoxScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.one_k),
              tooltip: "Simple Dialog Box",
              iconSize: 100.0,
              onPressed: () => SimpleDialogBox.showSimpleDialog(context),
              color: Colors.blueAccent,
            ),
            IconButton(
              icon: Icon(Icons.two_k),
              tooltip: "Simple Custom Dialog Box",
              iconSize: 100.0,
              onPressed: () => customDialogBox.showCustomDialogBox(context),
              color: Colors.redAccent,
            ),
            IconButton(
              icon: Icon(Icons.three_k),
              tooltip: "Complex Custom Dialog Box",
              iconSize: 100.0,
              onPressed: () => compledDialogBox.showSimpleDialog(context),
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
