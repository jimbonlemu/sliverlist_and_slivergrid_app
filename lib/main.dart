import 'package:flutter/material.dart';
import 'package:sliverlist_and_slivergrid_app/learning_path_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicoding Learning Path',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LearningPathPage(),
    );
  }
}
