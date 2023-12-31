import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var _email = "";
  var _password = "";

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (isValid == null || !isValid) {
      return;
    }
    _formKey.currentState?.save();
    // Perform login or other operations with the entered data
    print("Email: $_email");
    print("Password: $_password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        leading: Icon(Icons.filter_vintage),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Form-Validation In Flutter ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  _email = value ?? "";
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onSaved: (value) {
                  _password = value ?? "";
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: _submit,
              )
            ],
          ),
        ),
      ),
    );
  }
}

