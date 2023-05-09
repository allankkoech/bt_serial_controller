import 'package:flutter/material.dart';
import 'package:voltage_controller_bt/widgets/home_topbar.dart';
import 'package:voltage_controller_bt/widgets/widget_controls.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Column(
          children: [
            // Menus
            const HomeTopbar(),
            // Quick controls ...
            WidgetControls(),
            // Charts
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text("Voltage Charts ..."),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
