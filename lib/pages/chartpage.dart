import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';


class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  int _tabSelectedIndexSelected = 0;

  List<String> _listTextSelectedToggle = ["Month", "Year"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisSize: MainAxisSize.min, // Set the mainAxisSize to min
        mainAxisAlignment:
            MainAxisAlignment.start, // Align the children to the top
        crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch the Column
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            alignment: Alignment.center, // Center the custom app bar
            color: Colors.grey.shade600, // Customize the app bar color
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text(
                    'Expenses',
                    style: TextStyle(
                      color: Colors.white, // Customize the text color
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  FlutterToggleTab(
                    width: 55,
                    height: 25,
                    selectedBackgroundColors: [Colors.grey.shade900],
                    unSelectedBackgroundColors: [Colors.white],
                    borderRadius: 5,
                    selectedIndex: _tabSelectedIndexSelected,
                    selectedTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    unSelectedTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    labels: _listTextSelectedToggle,
                    selectedLabelIndex: (index) {
                      setState(() {
                        _tabSelectedIndexSelected = index;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
