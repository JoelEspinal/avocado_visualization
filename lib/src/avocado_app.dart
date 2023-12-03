import 'package:flutter/material.dart';

class AvocadoApp extends StatelessWidget {
  const AvocadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  width: 300,
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 8.0,
                    ),
                    color: Colors.lightBlueAccent,
                    elevation: 5,
                    child: Text(""),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
