import 'package:flutter/material.dart';
import 'package:playwithstates/B/page_b.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Page a',
              style: TextStyle(fontSize: 54, color: Colors.purple),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageB()),
              );
            },
            child: const Text('Go to B'),
          ),
        ],
      ),
    );
  }
}
