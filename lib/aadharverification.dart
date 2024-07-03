// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'KindaCode',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // 4 text editing controllers that associate with the 4 input fields
//   final TextEditingController _fieldOne = TextEditingController();
//   final TextEditingController _fieldTwo = TextEditingController();
//   final TextEditingController _fieldThree = TextEditingController();
//   final TextEditingController _fieldFour = TextEditingController();

//   // This is the entered code
//   // It will be displayed in a Text widget
//   String? _otp;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('KindaCode'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text('Phone Number Verification'),
//           const SizedBox(
//             height: 30,
//           ),
//           // Implement 4 input fields
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               OtpInput(_fieldOne, true), // auto focus
//               OtpInput(_fieldTwo, false),
//               OtpInput(_fieldThree, false),
//               OtpInput(_fieldFour, false)
//             ],
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _otp = _fieldOne.text +
//                       _fieldTwo.text +
//                       _fieldThree.text +
//                       _fieldFour.text;
//                 });
//               },
//               child: const Text('Submit')),
//           const SizedBox(
//             height: 30,
//           ),
//           // Display the entered OTP code
//           Text(
//             _otp ?? 'Please enter OTP',
//             style: const TextStyle(fontSize: 30),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Create an input widget that takes only one digit
// class OtpInput extends StatelessWidget {
//   final TextEditingController controller;
//   final bool autoFocus;
//   const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 60,
//       width: 50,
//       child: TextField(
//         autofocus: autoFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         controller: controller,
//         maxLength: 1,
//         cursorColor: Theme.of(context).primaryColor,
//         decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             counterText: '',
//             hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//       ),
//     );
//   }
// }

//aadhar

import 'dart:math';
import 'package:disastermanagement/otp.dart';
import 'package:flutter/material.dart';

class Aaharverification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AadharVerificationPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 220, 48, 48),
        ),
      ),
    );
  }
}

class AadharVerificationPage extends StatefulWidget {
  @override
  _AadharVerificationPageState createState() => _AadharVerificationPageState();
}

class _AadharVerificationPageState extends State<AadharVerificationPage> {
  String captcha = '';
  TextEditingController captchaController = TextEditingController();
  TextEditingController aadharController = TextEditingController();

  @override
  void initState() {
    super.initState();
    generateCaptcha();
  }

  void generateCaptcha() {
    final random = Random();
    final int min = 1000;
    final int max = 9999;
    final int randomNumber = min + random.nextInt(max - min);
    setState(() {
      captcha = randomNumber.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aadhar Verification'),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        backgroundColor:
            Color.fromARGB(255, 220, 48, 48), // Set the background color
        elevation: 50.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter your Aadhar Number:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              controller: aadharController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Aadhar Number',
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Text(
                  'Captcha: $captcha',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: generateCaptcha,
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(
                        255, 220, 48, 48), // Refresh button color
                  ),
                  child: Text('Refresh', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: captchaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Captcha',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (aadharController.text.isNotEmpty &&
                    captchaController.text == captcha) {
                  // Perform Aadhar verification logic here
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Verification Result'),
                      content: Text('Aadhar verification successful!'),
                      actions: [
                        ElevatedButton(
                          // onPressed: () {
                          //   Navigator.of(context).pop();
                          // },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(
                                255, 220, 48, 48), // OK button color
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => otp()),
                            );
                          },
                          child: Text('Generate OTP',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Verification Result'),
                      content: Text('Verification failed. Please try again.'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(
                                255, 220, 48, 48), // OK button color
                          ),
                          child: Text('Retry',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary:
                    Color.fromARGB(255, 220, 48, 48), // Submit button color
              ),
              child: Text('Submit', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
