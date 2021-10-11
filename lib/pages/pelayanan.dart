import 'package:flutter/material.dart';
import 'package:testing_drawer/widget/navigation_drawer.dart';

class Pelayanan extends StatelessWidget {
  const Pelayanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text('Pelayanan'),
      ),
    );
  }
}
