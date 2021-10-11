import 'package:flutter/material.dart';
import 'package:testing_drawer/widget/navigation_drawer.dart';

class PelaporanAdminduk extends StatelessWidget {
  const PelaporanAdminduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text('Pelaporan Adminduk'),
      ),
    );
  }
}
