import 'package:flutter/material.dart';

class MyValueNotifierBuilder extends StatefulWidget {
  final Widget Function(BuildContext context) builder;
  const MyValueNotifierBuilder({super.key, required this.builder});

  @override
  State<MyValueNotifierBuilder> createState() => _MyValueNotifierBuilderState();
}

class _MyValueNotifierBuilderState extends State<MyValueNotifierBuilder> {
  void _onValueChange() => setState(() {});
  @override
  void initState() {
    super.initState();
    MyValueNotifier.addListener(_onValueChange);
  }

  @override
  void dispose() {
    MyValueNotifier.removeListener(_onValueChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}

class MyValueNotifier {
  int _value;

  MyValueNotifier(this._value);

  int get value => _value;

  static final List<VoidCallback> _listeners = [];
  static void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  static void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  set value(int newValue) {
    _value = newValue;
    for (final listener in _listeners) {
      print(
        'notifying listener-----------------------------------------------------------------------------------',
      );
      listener();
    }
  }
}
