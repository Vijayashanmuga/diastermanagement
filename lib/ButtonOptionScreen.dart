import 'package:disastermanagement/civilians.dart';
import 'package:disastermanagement/main.dart';
import 'package:disastermanagement/organization.dart';
import 'package:disastermanagement/rescue.dart';
import 'package:flutter/material.dart';

class ButtonOptionScreen extends StatelessWidget {
  const ButtonOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTP generator',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ButtonOptionPage(),
    );
  }
}

class ButtonOptionPage extends StatefulWidget {
  const ButtonOptionPage({Key? key}) : super(key: key);

  @override
  _ButtonOptionPageState createState() => _ButtonOptionPageState();
}

class _ButtonOptionPageState extends State<ButtonOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select the option'),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        backgroundColor: Color.fromARGB(255, 220, 48, 48),
        elevation: 50.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 220, 48, 48),
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.white),
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Agency()),
                    );
                  },
                  child: const Text(
                    'Rescue agency',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 220, 48, 48),
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.white),
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Civilian()),
                    );
                  },
                  child: const Text(
                    'Civilians',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 220, 48, 48),
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.white),
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Organisation()),
                    );
                  },
                  child: const Text(
                    'Disaster managementory',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
