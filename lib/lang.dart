import 'package:disastermanagement/aadharverification.dart';
import 'package:flutter/material.dart';

class LANG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LanguageSelectionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LanguageSelectionPage extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  List<String> selectedLanguages = [];

  final List<String> languages = [
    "English",
    "Hindi",
    "Tamil",
    "Telugu",
    "Bengali",
    "Kannada",
    "Gujarati",
    "Marathi",
    "Punjabi",
    "Malayalam",
    "Odia",
    "Urdu",
    "Konkani",
    "Sindhi",
    "Dogri",
    "Manipuri",
    "Assamese",
    "Rajasthani"
  ];

  void _toggleLanguageSelection(String language) {
    setState(() {
      if (selectedLanguages.contains(language)) {
        selectedLanguages.remove(language);
      } else {
        selectedLanguages.add(language);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferred Language"),
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
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final language = languages[index];
          final isSelected = selectedLanguages.contains(language);
          return ListTile(
            title: Text(language),
            trailing: isSelected
                ? Icon(Icons.check_circle,
                    color: Color.fromARGB(255, 220, 48, 48))
                : Icon(Icons.circle_outlined),
            onTap: () {
              _toggleLanguageSelection(language);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 220, 48, 48),
        // child: Icon(Icons.add),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AadharVerificationPage()),
          );
        },
        label: Text("Next"),
        icon: Icon(Icons.abc, color: Colors.white),
      ),
    );
  }
}
