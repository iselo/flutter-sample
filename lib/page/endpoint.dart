import 'package:flutter/material.dart';

enum Endpoint {
  dashboard('/dashboard', 'Dashboard', Icons.home_outlined),
  accounting('/accounting', 'Accounting', Icons.account_balance_outlined),
  settings('/settings', 'Settings', Icons.settings_outlined),
  logout('/logout', 'Logout', Icons.logout_outlined);

  final String routeName;
  final String title;
  final IconData iconData;

  const Endpoint(this.routeName, this.title, this.iconData);

  Widget newListTile(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title),
      onTap: () => Navigator.pushReplacementNamed(context, routeName),
    );
  }
}
