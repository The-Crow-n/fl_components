import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.black;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  // Correcting the lambda functions to return proper values.
  int _intAleatorio(int minimo, int maximo) =>
      Random().nextInt(maximo - minimo + 1) + minimo;

  double _doubleAleatorio(double minimo, double maximo) =>
      Random().nextDouble() * (maximo - minimo) + minimo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1), // Added animation duration
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle),
        onPressed: () {
          setState(() {
            _width = _doubleAleatorio(60, 400);
            _height = _doubleAleatorio(60, 400);
            _borderRadius = BorderRadius.circular(_doubleAleatorio(0, 100));
            _color = Color.fromARGB(
              _intAleatorio(0, 255),
              _intAleatorio(0, 255),
              _intAleatorio(0, 255),
              _intAleatorio(0, 255),
            );
          });
        },
      ),
    );
  }
}
