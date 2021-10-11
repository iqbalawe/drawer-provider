import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_drawer/model/navigation_item.dart';
import 'package:testing_drawer/provider/navigation_provider.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  static const padding = EdgeInsets.symmetric(horizontal: 4.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          boxShadow: [
            BoxShadow(
              blurRadius: 32,
              color: const Color(0xFF18274B).withOpacity(0.1),
              offset: const Offset(0, 10),
              spreadRadius: -4,
            ),
            BoxShadow(
              blurRadius: 14,
              color: const Color(0xFF18274B).withOpacity(0.12),
              offset: const Offset(0, 10),
              spreadRadius: -4,
            ),
          ],
        ),
        child: Padding(
          padding: padding,
          child: ListView(
            children: [
              const SizedBox(
                height: 24,
              ),
              buildListTileItem(
                context,
                text: 'Index',
                icon: Icons.dashboard,
                item: NavigationItem.homeIndex,
              ),
              buildExpansionItem(
                context,
                text: 'Profil Kependudukan',
                icon: Icons.group,
                item: NavigationItem.profilKependudukan,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }

  Widget buildExpansionItem(
    BuildContext context, {
    required String text,
    required NavigationItem item,
    required IconData icon,
  }) {
    const activeNavigationColor = Color(0xFF063A69);
    const padding = EdgeInsets.symmetric(horizontal: 55);

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        childrenPadding: padding,
        title: Text(
          text,
          style: const TextStyle(
            color: activeNavigationColor,
            fontSize: 16,
          ),
        ),
        leading: Icon(icon),
        children: [
          buildListTileItem(context, text: text, icon: icon, item: item)
        ],
      ),
    );
  }

  Widget buildListTileItem(
    BuildContext context, {
    required String text,
    required IconData icon,
    required NavigationItem item,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    const activeNavigationColor = Color(0xFF063A69);
    const inactiveTextNavigationColor = Color(0xFF625F6E);

    final color = isSelected ? Colors.white : inactiveTextNavigationColor;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 16,
          ),
        ),
        selected: isSelected,
        selectedTileColor:
            isSelected ? activeNavigationColor : Colors.transparent,
        onTap: () => selectItem(context, item),
      ),
    );
  }
}
