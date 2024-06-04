import 'package:flutter/material.dart';

class ToggleButtonSwitch extends StatefulWidget {
  const ToggleButtonSwitch({super.key});

  @override
  State<ToggleButtonSwitch> createState() => _ToggleButtonSwitchState();
}

class _ToggleButtonSwitchState extends State<ToggleButtonSwitch> {

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
  return Switch(
  value: _switchValue,
  onChanged: (newValue) {
  setState(() {
  _switchValue = newValue;
  });
  },
  activeTrackColor: Colors.blue,
  );
  }
  }
