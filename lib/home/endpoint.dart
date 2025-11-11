import 'package:flutter/material.dart';

enum Endpoint {
  settings('/settings', 'Settings', Icons.settings),
  about('/about', 'About', Icons.info);

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
