import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

List<Map<String, dynamic>> iconList = [
  {'icon': Icons.home, 'label': 'Home'},
  {'icon': Icons.work, 'label': 'Work'},
  {'icon': Icons.school, 'label': 'School'},
  {'icon': Icons.favorite, 'label': 'Favorite'},
  {'icon': Icons.star, 'label': 'Star'},
];

IconData? selectedIcon;

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Maximum of 5 icons per row
        ),
        itemCount: iconList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              IconButton(
                icon: Icon(iconList[index]['icon'], size: 25.0),
                color: Colors.white,
                onPressed: () {
                  // Handle icon tap here
                },
              ),
              Text(iconList[index]['label'],style: TextStyle(color: Colors.white),),
            ],
          );
        },
      ),
    );
  }
}
