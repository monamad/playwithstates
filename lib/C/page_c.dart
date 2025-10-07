import 'package:flutter/material.dart';
import 'package:playwithstates/D/page_d.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page C')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Text('0'),
          ElevatedButton(onPressed: () {}, child: Text('Increment')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageD()),
              );
            },
            child: const Text('Go to D'),
          ),
        ],
      ),
    );
  }
}
