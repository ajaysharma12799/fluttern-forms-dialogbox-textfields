import 'package:flutter/material.dart';
import 'package:flutter_forms_and_dialogbox/screens/dialogBoxScreen.dart';
import 'package:flutter_forms_and_dialogbox/screens/formScreen.dart';
import 'package:flutter_forms_and_dialogbox/screens/textFieldScreen.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms & Dialog Box"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: (MediaQuery.of(context).size.width as double) * 0.9,
              height: (MediaQuery.of(context).size.height as double) * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(FormScreen.routeName);
                },
                child: Text("Forms Page"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.deepOrange,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: (MediaQuery.of(context).size.width as double) * 0.9,
              height: (MediaQuery.of(context).size.height as double) * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(DialogBox.routeName);
                },
                child: Text("Dialog Box Page"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.pink,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: (MediaQuery.of(context).size.width as double) * 0.9,
              height: (MediaQuery.of(context).size.height as double) * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(TextFieldScreen.routeName);
                },
                child: Text("TextFieldScreen Page"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
