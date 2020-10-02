import 'package:flutter/material.dart';

class ClickableIcon extends StatelessWidget {

  final double size;
  final IconData icon;
  final Function onTap;
  final Color color;

  ClickableIcon({@required this.size, @required this.icon, @required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(icon, size: size, color: color,),
      ),
      customBorder: CircleBorder(),
    );
  }
}
