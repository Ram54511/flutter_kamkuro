// import 'package:flutter/material.dart';
// import 'package:sensors_plus/sensors_plus.dart';
// import 'dart:math';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shake to Show Hello World',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ShakeDetector(),
//       routes: {
//         '/hello': (context) => HelloWorldScreen(),
//       },
//     );
//   }
// }
//
// class ShakeDetector extends StatefulWidget {
//   @override
//   _ShakeDetectorState createState() => _ShakeDetectorState();
// }
//
// class _ShakeDetectorState extends State<ShakeDetector> {
//   static const double shakeThreshold = 15.0;
//   static const int shakeCountResetTime = 1000; // Time in milliseconds to reset shake count
//   int _shakeCount = 0;
//   DateTime? _lastShakeTime;
//
//   @override
//   void initState() {
//     super.initState();
//     _listenToAccelerometer();
//   }
//
//   void _listenToAccelerometer() {
//     accelerometerEvents.listen((AccelerometerEvent event) {
//       double accelerationMagnitude = sqrt(
//           event.x * event.x + event.y * event.y + event.z * event.z);
//
//       if (accelerationMagnitude > shakeThreshold) {
//         final now = DateTime.now();
//         if (_lastShakeTime == null || now
//             .difference(_lastShakeTime!)
//             .inMilliseconds > shakeCountResetTime) {
//           _shakeCount = 0;
//         }
//
//         _lastShakeTime = now;
//         _shakeCount++;
//
//         if (_shakeCount >= 2) { // Number of shakes required
//           _shakeCount = 0; // Reset shake count after triggering
//           Navigator.of(context).pushNamed('/hello');
//         }
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shake to Show Hello World'),
//       ),
//       body: Center(
//         child: Text(
//           'Shake your device to see the Hello World screen!',
//           style: TextStyle(fontSize: 18),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
//
// class HelloWorldScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello World'),
//       ),
//       body: Center(
//         child: Text(
//           'Hello World!',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
