import 'package:flutter/material.dart';
import 'package:playwithstates/D/change_notifer.dart';

class PageD extends StatelessWidget {
  const PageD({super.key});

  @override
  Widget build(BuildContext context) {
    final MyValueNotifier myNotifier = MyValueNotifier(0);
    return Scaffold(
      appBar: AppBar(title: Text('Page D')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          MyValueNotifierBuilder(
            builder: (context) {
              return Text(
                myNotifier.value.toString(),
                style: TextStyle(fontSize: 48),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              myNotifier.value = myNotifier.value + 1;
            },
            child: const Text('Increment'),
          ),
          MyValueNotifierBuilder(
            builder: (context) {
              return Text(
                myNotifier.value.toString(),
                style: TextStyle(fontSize: 48),
              );
            },
          ),
        ],
      ),
    );
  }
}
