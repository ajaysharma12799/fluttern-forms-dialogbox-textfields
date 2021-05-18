import 'package:flutter/material.dart';

Future<void> showSimpleDialog(BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text("Simple DialogBox"),
          content: Text(
              "This is Simple DialogBox. \nWe can Create this Flutter InBuilt Custom DialogBox"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      });
}
