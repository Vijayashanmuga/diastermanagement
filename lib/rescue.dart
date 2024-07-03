import 'package:flutter/material.dart';

class Agency extends StatefulWidget {
  const Agency({super.key});

  @override
  State<Agency> createState() => _AgencyState();
}

class _AgencyState extends State<Agency> {
  String dropdownvalue = "District";
  String dropdownvalue2 = 'State';
  var items2 = ['State', 'TamilNadu'];
  var items = [
    'District',
    'Chennai',
    'Madurai',
    'Coimbatore',
    'Theni',
    'Ramanathapuram',
    'Sivagangai',
    'Kaniyakumari'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rescue Agency'),
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "UserID",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Organisation",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Department",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  DropdownButton(
                      value: dropdownvalue2,
                      items: items2.map((String items2) {
                        return DropdownMenuItem(
                          value: items2,
                          child: Text(items2),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue2 = newValue!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: DropdownButton(
                        value: dropdownvalue,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                  height: 50,
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 220, 48, 48)),
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 15),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
