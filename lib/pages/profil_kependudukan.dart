import 'package:flutter/material.dart';
import 'package:testing_drawer/widget/navigation_drawer.dart';

class ProfilKependudukan extends StatelessWidget {
  const ProfilKependudukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Profil Kependudukan'),
      ),
    );
  }
}
