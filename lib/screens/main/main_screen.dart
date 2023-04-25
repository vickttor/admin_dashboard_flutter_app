import 'package:flutter/material.dart';

// Components
import 'components/sidebar_menu.dart';

// Screens
import 'package:admin_dashboard/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // default flex = 1
            // it takes 1/6
            child: SidebarMenu(),
          ),
          Expanded(
            // It takes 5/6 parts of the screen
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}
