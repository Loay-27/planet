import 'package:flutter/material.dart';

class CustomFloutingButton extends StatefulWidget {
   const CustomFloutingButton({super.key, required this.icon, required this.onPress});
  final IconData icon;
  final void Function() onPress;

  @override
  State<CustomFloutingButton> createState() => _CustomFloutingButtonState();
}

class _CustomFloutingButtonState extends State<CustomFloutingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onPress,
      backgroundColor: Colors.red,
      child:
      Icon(widget.icon, color: Colors.white70),
    );
  }
}
