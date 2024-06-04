import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  late String selectedOption = ''; // Initialize selectedOption

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile(

          contentPadding: EdgeInsets.all(10.0),

          title: Padding(
            padding: const EdgeInsets.only(left: 16.0), // Adjust left padding
            child: Text(
              'Allow notifications',
              style: TextStyle(fontSize: 20),
            ),
          ),
          value: 'Allow notifications',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.trailing, // Position radio button to the right
          activeColor: Colors.blue, // Set the color of the selected radio button
          visualDensity: VisualDensity(horizontal: 0, vertical: -1), // Adjust the size of the  // Position radio button to the right
        ),
        Divider(color: Colors.black26,endIndent: 30,indent: 30,),
        RadioListTile(
          contentPadding: EdgeInsets.all(10.0),
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0), // Adjust left padding
            child: Text(
              'Turn off notifications',
              style: TextStyle(fontSize: 20),
            ),
          ),
          value: 'Turn off notifications',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          controlAffinity: ListTileControlAffinity.trailing,
          activeColor: Colors.blue, // Set the color of the selected radio button
          visualDensity: VisualDensity(horizontal: 0, vertical: -1), // Position radio button to the right
        ),
        Divider(color: Colors.black26,endIndent: 30,indent: 30,),

      ],
    );
  }
}
