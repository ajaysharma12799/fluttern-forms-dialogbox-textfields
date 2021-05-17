import 'package:flutter/material.dart';
import 'package:flutter_forms_and_dialogbox/home.dart';
import 'package:flutter_forms_and_dialogbox/screens/dialogBoxScreen.dart';
import 'package:flutter_forms_and_dialogbox/screens/formScreen.dart';
import 'package:flutter_forms_and_dialogbox/screens/textFieldScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Forms & Dialog Box",
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: <String, WidgetBuilder>{
        HomePage.routeName: (ctx) => HomePage(),
        FormScreen.routeName: (ctx) => FormScreen(),
        DialogBox.routeName: (ctx) => DialogBox(),
        TextFieldScreen.routeName: (ctx) => TextFieldScreen()
      },
    );
  }
}
