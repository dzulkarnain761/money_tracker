import 'package:flutter/material.dart';
import 'package:fluttertesting/pages/addPage.dart';
import 'package:translucent_navigation_bar/translucent_navigation_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../pages/homepage.dart';
import '../pages/chartpage.dart';
import '../pages/reportpage.dart';
import '../pages/userpage.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarPage> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ChartPage(),
    const ReportPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[selectedIndex],
      bottomNavigationBar: TranslucentNavigationBar(
        mainTranslucentNavigationBarItem:
            TranslucentNavigationBarItem(iconData: Icons.add),
        onTap: (value) {
          setState(
            () {
              selectedIndex = value;
            },
          );
        },
        onMainIconTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddPage();
            },
          );
        },
        selectedIndex: selectedIndex,
        mainIconBackgroundColor: Colors.yellow,
        mainIconColor: Colors.black,
        items: [
          TranslucentNavigationBarItem(
            iconData: Icons.assignment_outlined,
          ),
          TranslucentNavigationBarItem(
            iconData: PhosphorIcons.fill.chartPie,
          ),
          TranslucentNavigationBarItem(
            iconData: Icons.receipt_long_outlined,
          ),
          TranslucentNavigationBarItem(
            iconData: PhosphorIcons.fill.user,
          ),
        ],
      ),
    );
  }
}
