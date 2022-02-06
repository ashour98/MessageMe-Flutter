import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.color,required this.title,required this.onPress});
  final Color color;
  final String title;
  final VoidCallback onPress;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200,
          height: 42,
          child: Text(
            title,style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}