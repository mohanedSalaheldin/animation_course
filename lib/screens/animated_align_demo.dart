import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  int _alingmentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _alingmentValue = (_alingmentValue + 1) % 9;
          });
        },
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getAlingment(_alingmentValue),
            duration: const Duration(milliseconds: 100),
            child: const Icon(
              Icons.car_repair,
              size: 100,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Alignment getAlingment(int value) {
    switch (value) {
      case 0:
        return Alignment.topLeft;
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }
}
