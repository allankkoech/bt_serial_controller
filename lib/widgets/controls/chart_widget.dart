import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  late ValueNotifier<double> valueNotifier;

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(40.0);
  }

  @override
  void dispose() {
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  "Battery State",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Container(
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
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    SimpleCircularProgressBar(
                      progressStrokeWidth: 12,
                      backStrokeWidth: 12,
                      valueNotifier: valueNotifier,
                      mergeMode: true,
                      size: 150,
                      maxValue: 40,
                      backColor: Colors.grey,
                      progressColors: const [
                        Colors.redAccent,
                        Colors.redAccent,
                        Colors.redAccent,
                        Colors.redAccent,
                        Colors.amberAccent,
                        Colors.green,
                        Colors.green,
                        Colors.amberAccent,
                        Colors.amberAccent,
                        Colors.redAccent
                      ],
                      onGetText: (double value) {
                        return Text(
                          '${value.toInt()}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 30, 28, 28),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
