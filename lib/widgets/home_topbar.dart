import 'package:flutter/material.dart';

class HomeTopbar extends StatelessWidget {
  const HomeTopbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey[100],
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            const Expanded(
              child: Text("Voltage Monitor Dashboard"),
            ),
            const Text("Status: "),
            const Text(
              "Connected",
              style: TextStyle(color: Colors.green),
            ),
            IconButton(
              onPressed: () {
                debugPrint("Hello");
              },
              icon: const Icon(Icons.bluetooth),
            ),
            IconButton(
              onPressed: () {
                debugPrint("Settings");
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
