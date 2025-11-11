import 'package:flutter/material.dart';

final class AppDrawer extends StatelessWidget {
  final Function() onShowSettings;

  const AppDrawer({super.key, required this.onShowSettings});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      shape: const LinearBorder(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: colorScheme.primary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.medical_services_rounded,
                      color: colorScheme.onPrimary,
                      size: 32,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Doctor Planner',
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Your schedule assistant',
                  style: TextStyle(color: colorScheme.onPrimary, fontSize: 14),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: onShowSettings,
          ),
        ],
      ),
    );
  }
}
