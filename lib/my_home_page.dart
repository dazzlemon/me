import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'my_home_page.g.dart';

@hwidget
Widget myHomePage(BuildContext context) {
  final counter = useState(0);

  return Scaffold(
    body: Center(
      child: Text(
        '${counter.value}',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => counter.value++,
      child: const Icon(Icons.add),
    ),
  );
}
