import 'package:flutter/material.dart';
import 'package:playwithstates/C/page_c.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page B')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('0'),
          ElevatedButton(onPressed: () {}, child: Text('Increment')),
          SizedBox(width: double.infinity),
           ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageC()),
              );
            },
            child: const Text('Go to C'),
          ),
        ],
      ),
    );
  }
}
