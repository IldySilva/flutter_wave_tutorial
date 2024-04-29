import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        home: Scaffold(
          body: WaveWidget(
            config: CustomConfig(
              colors: [
                Colors.blue.shade100,
                Colors.blueAccent.shade200,
                Colors.lightBlueAccent.shade200,
                Colors.black54
              ],
              durations: [
                3000,
                4000,
                5000,
                6500,
              ],
              heightPercentages: [
                0.64,
                0.66,
                0.68,
                0.70,
              ],
            ),
            size: const Size(double.infinity, double.infinity),

          ),
        ));
  }
}
