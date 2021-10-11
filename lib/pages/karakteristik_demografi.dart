import 'package:flutter/material.dart';
import 'package:testing_drawer/widget/navigation_drawer.dart';

class KarakteristikDemografi extends StatelessWidget {
  const KarakteristikDemografi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Karakteristik Demografi'),
      ),
    );
  }
}
