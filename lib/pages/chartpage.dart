import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        mainAxisSize: MainAxisSize.min, // Set the mainAxisSize to min
        mainAxisAlignment:
            MainAxisAlignment.start, // Align the children to the top
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch the Column
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center, // Center the custom app bar
            color: Colors.grey, // Customize the app bar color
            child: const Text(
              'Money Manager',
              style: TextStyle(
                color: Colors.white, // Customize the text color
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}