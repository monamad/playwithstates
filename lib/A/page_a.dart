import 'package:flutter/material.dart';
import 'package:playwithstates/B/counter_provider.dart';
import 'package:playwithstates/B/page_b.dart';
import 'package:playwithstates/di/service_locator.dart';
import 'package:provider/provider.dart';

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
              'Page A',
              style: TextStyle(fontSize: 54, color: Colors.purple),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider(
                    create: (context) => serviceLocator<CounterProvider>(),
                    child: const PageB(),
                  ),
                ),
              );
            },
            child: const Text('Go to B'),
          ),
        ],
      ),
    );
  }
}
