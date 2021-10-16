import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;
  final Color highlightColor;

  const CircleButton({
    Key? key,
    required this.icon,
    this.iconSize = 24.0,
    this.highlightColor = Colors.black26,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: IconButton(
        splashRadius: 24,
        splashColor: Colors.transparent,
        highlightColor: highlightColor,
        iconSize: iconSize,
        icon: Icon(icon),
        onPressed: () {
          onPressed();
          //Navigator.pushNamed(context, MyRoutes.homeRoute);
        },
      ),
    );
  }
}
