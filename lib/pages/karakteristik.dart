import 'package:flutter/material.dart';
import 'package:testing_drawer/widget/navigation_drawer.dart';

class Karakteristik extends StatelessWidget {
  const Karakteristik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: const Text('Karakteristik'),
      ),
    );
  }
}
