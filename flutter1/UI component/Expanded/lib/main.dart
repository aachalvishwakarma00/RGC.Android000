import 'package:flutter/material.dart';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,

        // App Bar is used to create
        // a bar to give a title for our app
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'GeeksforGeeks',

            // TextStyle is a class
            // where we can modify our text
            style: TextStyle(
              //To assign the color to our text
              color: Colors.green,
            ), //Text Style
          ), //Text

          // backgroundColor is used to change
          // the color of our app bar background
          backgroundColor: Colors.white,
        ), //AppBar

        // Calling the function DicePage()
        body: const DicePage(),
      ), //Scaffold
    ), //Material App
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      //Here we are using the row.
      // Instead of row we can also use
      // column only the alignment of icon
      // will change and other function remains same
      child: Row(
        children: <Widget>[
          Expanded(
            // FlatButton is used to make
            // are image as a button which we can press.
            child: TextButton(
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.all(14),
                child: Image.asset('image/pika.png'),
              ),
              onPressed: () {},
            ),

            // FlatButton is depreacted and should not be use
            // We can use TextButton instead of FlatButton

            // child: FlatButton(
            // //Image.asset is used to import the image
            // // from our project files only in brackets
            // // we are providing the name of our image.
            // child: Image.asset('images/dice1.png'),
            // ), //flat button
          ), //Expanded
        ], //<Widget>
      ), //Row
    ); //center
  }
}

