import 'package:flutter/material.dart';
import 'package:settingandalert/screens/checkbox.dart';
import 'package:settingandalert/screens/radiobutton.dart';
import 'package:settingandalert/screens/toggleSwitch.dart';
import 'package:settingandalert/screens/togglebuttonswitch.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 30,),
          Text('    Toggle',style: TextStyle(fontSize: 17),),
          Row(
            children: [
              SizedBox(height: 100,),
              Text('   Cellular data',style: TextStyle(fontSize: 20),),
             SizedBox(width: 210,),
             ToggleButtonSwitch(),
            ],
          ),
          Divider(color: Colors.black26,endIndent: 30,indent: 30,),
          Row(
            children: [
              Text('   Wi-Fi',style: TextStyle(fontSize: 20),),
              SizedBox(width: 280,),
              ToggleButtonSwitch(),
            ],
          ),
          Divider(color: Colors.black26,endIndent: 30,indent: 30,),
          SizedBox(height: 30,),
          Text('   Single check',style: TextStyle(fontSize: 18),),
          SizedBox(height: 15,),
          //Divider(color: Colors.black26,endIndent: 30,indent: 30,),
          RadioButton(),
          SizedBox(height: 30,),
          Text('   Multiple check',style: TextStyle(fontSize: 18),),
         SizedBox(height: 30,),
          Row(
           children: [

             Text('    Microphone access',style: TextStyle(fontSize: 20),),
             SizedBox(width: 170),
             CustomCheckBox(),
           ],
         ),
          Divider(color: Colors.black26,endIndent: 30,indent: 30,),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('    Location access',style: TextStyle(fontSize: 20),),
              SizedBox(width: 200),
              CustomCheckBox(),
            ],
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.black26,endIndent: 30,indent: 30,),
          Row(
            children: [
              Text('    Haptics',style: TextStyle(fontSize: 20),),
              SizedBox(width: 280),
              CustomCheckBox(),
            ],
          ),
         
        ],
      ),
    );
  }


}


