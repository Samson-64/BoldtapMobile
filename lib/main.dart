import 'package:boldtap/profile_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.grey),
      home: BoldTap(),
    ),
  );
}

class BoldTap extends StatelessWidget {
  const BoldTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProfileUI());
  }
}
