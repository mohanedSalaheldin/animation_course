import 'package:flutter/material.dart';

class AnimatedTextScreen extends StatefulWidget {
  const AnimatedTextScreen({super.key});

  @override
  State<AnimatedTextScreen> createState() => _AnimatedTextScreenState();
}

class _AnimatedTextScreenState extends State<AnimatedTextScreen> {
  double _fontSize = 30.0;
  Color _textColor = const Color.fromARGB(255, 76, 76, 76);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            curve: Curves.easeInOutCirc,
            style: TextStyle(
              fontSize: _fontSize,
              color: _textColor,
            ),
            duration: const Duration(milliseconds: 300),
            child: const Text('Hello'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 45.0;
                      _textColor = Colors.black;
                    });
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 30.0;
                      _textColor = Colors.grey;
                    });
                  },
                  icon: const Icon(Icons.remove)),
            ],
          ),
        ],
      ),
    );
  }
}
