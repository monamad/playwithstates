import 'package:flutter/material.dart';
import 'package:playwithstates/B/counter_provider.dart';
import 'package:playwithstates/D/page_d.dart';
import 'package:provider/provider.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Page C')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Text('${counterProvider.count}'),
          ElevatedButton(
            onPressed: () {
              counterProvider.increment();
            },
            child: Text('Increment'),
          ),
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
