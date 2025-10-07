import 'package:flutter/material.dart';
import 'package:playwithstates/A/page_a.dart';
import 'package:playwithstates/di/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: PageA(),
    );
  }
}

// class MyInheritedWidget extends InheritedWidget {
//   final Color color;
//   const MyInheritedWidget({
//     super.key,
//     required super.child,
//     required this.color,
//   });

//   @override
//   bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
//     return color != oldWidget.color;
//   }
// }

// class Test extends StatelessWidget {
//   const Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           'Hello, World!',
//           style: TextStyle(
//             fontSize: 54,
//             color: context
//                 .dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!
//                 .color,
//           ),
//         ),
//       ),
//     );
//   }
// }
