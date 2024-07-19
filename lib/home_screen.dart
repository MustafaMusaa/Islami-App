import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Islami',
          style: TextStyle(
              color: Color.fromRGBO(36, 36, 36, 1),
              fontSize: 30,
              fontWeight: FontWeight.w700,
              height: 46.89),
        ),
        centerTitle: true,
      ),
    );
  }
}
