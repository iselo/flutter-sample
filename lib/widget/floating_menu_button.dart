import 'package:flutter/material.dart';

import '../page/endpoint.dart';

class FloatingMenuButton extends StatelessWidget {
  final Color? backgroundColor;

  const FloatingMenuButton({super.key, this.backgroundColor});

  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: Text(Endpoint.dashboard.title),
                onTap: () => Endpoint.dashboard.open(context),
              ),
              ListTile(
                leading: const Icon(Icons.account_balance_outlined),
                title: Text(Endpoint.accounting.title),
                onTap: () => Endpoint.accounting.open(context),
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: Text(Endpoint.settings.title),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Settings selected')),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: Text(Endpoint.logout.title),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Logged out')),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: () => _openMenu(context),
      tooltip: 'Menu',
      child: const Icon(Icons.menu),
    );
  }
}
