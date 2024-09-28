import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget {
  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  Color _iconColor = Colors.grey; 

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _iconColor = _iconColor == Colors.red ? Colors.grey : Colors.red;
        });
      },
      icon: Icon(
        Icons.favorite,
        color: _iconColor,
      ),
    );
  }
}
