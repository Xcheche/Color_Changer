import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    ));

// class defined

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (isButtonPressed) {
            setState(() {
              isButtonPressed = false;
            });
          } else {
            setState(() {
              isButtonPressed = true;
            });
          }
        },
        child: Container(
          color: getcolor(),
        ),
      ),
    );
  }

  Color getcolor() {
    if (isButtonPressed) {
      return Colors.red;
    } else {
      return Colors.brown;
    }
  }
}
