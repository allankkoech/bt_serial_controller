import 'package:flutter/material.dart';
import 'package:voltage_controller_bt/widgets/controls/chart_widget.dart';
import 'package:voltage_controller_bt/widgets/home_topbar.dart';
import 'package:voltage_controller_bt/widgets/widget_controls.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: const [
            // Menus
            HomeTopbar(),
            // Quick controls ...
            WidgetControls(),
            // Charts
            ChartWidget(),
          ],
        ),
      ),
    );
  }
}
