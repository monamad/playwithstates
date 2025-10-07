import 'package:flutter/material.dart';
import 'package:playwithstates/B/counter_provider.dart';
import 'package:playwithstates/C/page_c.dart';
import 'package:playwithstates/di/service_locator.dart';
import 'package:provider/provider.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page B')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CounterWidgets(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider.value(
                    value: serviceLocator<CounterProvider>(),
                    child: const PageC(),
                  ),
                ),
              );
            },
            child: const Text('Go to C'),
          ),
        ],
      ),
    );
  }
}

class CounterWidgets extends StatelessWidget {
  const CounterWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${context.watch<CounterProvider>().count}'),
        ElevatedButton(
          onPressed: () {
            context.read<CounterProvider>().increment();
          },
          child: const Text('Increment'),
        ),
        const SizedBox(width: double.infinity),
      ],
    );
  }
}
