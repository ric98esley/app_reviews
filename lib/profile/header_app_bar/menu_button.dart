import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  var bkColor;
  var icon;
  bool mini = true;
  double iconSize = 0;

  MenuButton(this.bkColor, this.icon, this.iconSize, this.mini);

  @override
  State<StatefulWidget> createState() {
    return _MenuButton();
  }
}

class _MenuButton extends State<MenuButton> {
  void onPressedButton() {
    setState(() {
      widget.bkColor == const Color.fromRGBO(255, 255, 255, 1)
          ? widget.bkColor = const Color.fromRGBO(255, 255, 255, 0.6)
          : widget.bkColor = const Color.fromRGBO(255, 255, 255, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      onPressed: onPressedButton,
      backgroundColor: widget.bkColor,
      mini: widget.mini,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: const Color(0xFF4268D3),
      ),
    ));
  }
}
