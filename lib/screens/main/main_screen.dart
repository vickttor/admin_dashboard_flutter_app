import 'package:admin_dashboard/controllers/MenuController.dart';
import 'package:admin_dashboard/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Components
import 'components/sidebar_menu.dart';

// Screens
import 'package:admin_dashboard/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MyMenuController>().scaffoldKey,
      drawer: SidebarMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context)) Expanded(
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
