import 'package:flutter/material.dart';

Future<void> showSimpleDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            // clipBehavior: Clip.value,
            children: <Widget>[
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Warning!!",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You Cannot Access This File",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.of(context).pop(),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 60,
                  child: Icon(
                    Icons.assistant_photo_sharp,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                top: -60,
              ),
            ],
          ),
        );
      });
}
