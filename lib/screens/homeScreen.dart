import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grid_sample/gridview/grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: createGridView(),
    );
  }
}
