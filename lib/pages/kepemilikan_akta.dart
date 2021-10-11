import 'package:flutter/material.dart';
import 'package:testing_drawer/widget/navigation_drawer.dart';

class KepemilikanAkta extends StatelessWidget {
  const KepemilikanAkta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text('Kepemilikan Akta'),
      ),
    );
  }
}
