import 'package:flutter/material.dart';

import 'controls/device_widget.dart';

class WidgetControls extends StatefulWidget {
  const WidgetControls({Key? key}) : super(key: key);

  @override
  _WidgetControlsState createState() => _WidgetControlsState();
}

class _WidgetControlsState extends State<WidgetControls> {
  bool relayOneActivated = false;
  bool relayTwoActivated = false;
  bool relayThreeActivated = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Device States [Pins]",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          DeviceWidget(
            label: "Relay 1",
            isActivated: relayOneActivated,
            onActivatedChanged: (activated) {
              setState(() {
                relayOneActivated = activated;
              });
            },
          ),
          DeviceWidget(
            label: "Relay 2",
            isActivated: relayTwoActivated,
            onActivatedChanged: (activated) {
              setState(() {
                relayTwoActivated = activated;
              });
            },
          ),
          DeviceWidget(
            label: "Relay 3",
            isActivated: relayThreeActivated,
            onActivatedChanged: (activated) {
              setState(() {
                relayThreeActivated = activated;
              });
            },
          ),
        ],
      ),
    );
  }
}
