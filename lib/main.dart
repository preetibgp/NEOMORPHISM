import 'package:flutter/material.dart';
import 'mybutton.dart';
import 'buttonpresed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final icon1 = Icons.home;
  final icon2 = Icons.settings;
  final icon3 = Icons.favorite;
  final icon4 = Icons.message;

  bool buttonPresed1 = false;
  bool buttonPresed2 = false;
  bool buttonPresed3 = false;
  bool buttonPresed4 = false;

  void _letsetPress1() {
    setState(() {
      buttonPresed1 = true;
      buttonPresed2 = false;
      buttonPresed3 = false;
      buttonPresed4 = false;
    });
  }

  void _letsetPress2() {
    setState(() {
      buttonPresed1 = false;
      buttonPresed2 = true;
      buttonPresed3 = false;
      buttonPresed4 = false;
    });
  }

  void _letsetPress3() {
    setState(() {
      buttonPresed1 = false;
      buttonPresed2 = false;
      buttonPresed3 = true;
      buttonPresed4 = false;
    });
  }

  void _letsetPress4() {
    setState(() {
      buttonPresed1 = false;
      buttonPresed2 = false;
      buttonPresed3 = false;
      buttonPresed4 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.grey[400],
        title: Text(
          'Neomorphsim',
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: _letsetPress1,
                    child: buttonPresed1
                        ? ButtonPresed(
                            icon: icon1,
                          )
                        : MyButton(
                            icon: icon1,
                          ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: _letsetPress2,
                    child: buttonPresed2
                        ? ButtonPresed(
                            icon: icon2,
                          )
                        : MyButton(
                            icon: icon2,
                          ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: _letsetPress3,
                    child: buttonPresed3
                        ? ButtonPresed(
                            icon: icon3,
                          )
                        : MyButton(
                            icon: icon3,
                          ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: _letsetPress4,
                    child: buttonPresed4
                        ? ButtonPresed(
                            icon: icon4,
                          )
                        : MyButton(
                            icon: icon4,
                          ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
