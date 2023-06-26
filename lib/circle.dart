import 'package:flutter/material.dart';

class OnOffIcon extends StatefulWidget {
  const OnOffIcon({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnOffIconState createState() => _OnOffIconState();
}

class _OnOffIconState extends State<OnOffIcon> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isOn = !_isOn;
        });
      },
      child: Icon(
        _isOn ? Icons.toggle_on : Icons.toggle_off,
        color: _isOn ? Colors.green : Colors.grey,
      ),
    );
  }
}


class MyCircle extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isSelected;

  const MyCircle({super.key, 
    required this.child,
    required this.onPressed,
    this.isSelected = false, required bool selected,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MyCircleState createState() => _MyCircleState();
}

class _MyCircleState extends State<MyCircle> {
  Color _circleColor = Colors.red;

  @override
  void initState() {
    super.initState();
    if (widget.isSelected) {
      _circleColor = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_circleColor == Colors.red) {
            _circleColor = Colors.green;
          } else {
            _circleColor = Colors.red;
          }
        });
        widget.onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Add the desired padding here
        child: Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _circleColor,
          ),
        child: Center(child: widget.child),
      ),
      )
    );
  }
}