import 'package:flutter/material.dart';

enum Endpoint {
  login('/login', 'Log in'),
  dashboard('/dashboard', 'Dashboard'),
  accounting('/accounting', 'Accounting'),
  settings('/settings', 'Settings'),
  logout('/logout', 'Logout');

  final String routeName;
  final String title;

  const Endpoint(this.routeName, this.title);

  void open(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, routeName);
  }
}
