import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const routeName = "/FormScreen";
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String _name, _email, _password, _phoneNumber;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  Widget _buildNameField() {
    return Container(
      width: (MediaQuery.of(context).size.width as double) * 0.9,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Name",
          border: OutlineInputBorder(),
        ),
        validator: (String value) {
          if (value.isEmpty) return "Please Enter Name";
        },
        onSaved: (String value) {
          _name = value;
        },
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      width: (MediaQuery.of(context).size.width as double) * 0.9,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
          border: OutlineInputBorder(),
        ),
        validator: (String value) {
          if (value.isEmpty) return "Please Enter Email";
          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) return "Please Enter Valid Email";
        },
        onSaved: (String value) {
          _email = value;
        },
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      width: (MediaQuery.of(context).size.width as double) * 0.9,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
        ),
        validator: (String value) {
          if (value.isEmpty) return "Please Enter Password";
        },
        obscureText: true,
        onSaved: (String value) {
          _password = value;
        },
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return Container(
      width: (MediaQuery.of(context).size.width as double) * 0.9,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Phone Number",
          border: OutlineInputBorder(),
        ),
        validator: (String value) {
          if (value.isEmpty) return "Please Enter Phone Number";
        },
        onSaved: (String value) {
          _phoneNumber = value;
        },
        keyboardType: TextInputType.phone,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildNameField(),
              SizedBox(
                height: 20,
              ),
              _buildEmailField(),
              SizedBox(
                height: 20,
              ),
              _buildPasswordField(),
              SizedBox(
                height: 20,
              ),
              _buildPhoneNumberField(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: (MediaQuery.of(context).size.width as double) * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    if (!_key.currentState.validate()) {
                      return;
                    }
                    _key.currentState.save();
                    print({
                      "Name": _name,
                      "Email": _email,
                      "Password": _password,
                      "Phone Number": _phoneNumber,
                    });
                  },
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
