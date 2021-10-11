import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_drawer/model/navigation_item.dart';
import 'package:testing_drawer/provider/navigation_provider.dart';

import 'pages/index_page.dart';
import 'pages/karakteristik.dart';
import 'pages/karakteristik_demografi.dart';
import 'pages/kepemilikan_akta.dart';
import 'pages/pelaporan_adminduk.dart';
import 'pages/pelayanan.dart';
import 'pages/profil_kependudukan.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.homeIndex:
        return const IndexPage();
      case NavigationItem.profilKependudukan:
        return const ProfilKependudukan();
      case NavigationItem.karakteristikDemografi:
        return const KarakteristikDemografi();
      case NavigationItem.pelaporanAdminduk:
        return const PelaporanAdminduk();
      case NavigationItem.pelayanan:
        return const Pelayanan();
      case NavigationItem.kepemilikanAkta:
        return const KepemilikanAkta();
      case NavigationItem.karakteristik:
        return const Karakteristik();
    }
  }

  @override
  Widget build(BuildContext context) => buildPages();
}
