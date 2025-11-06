import 'package:flutter/material.dart';
import 'package:untitled/page/logout_page.dart';

import 'page/endpoint.dart';
import 'page/login_page.dart';
import 'page/dashboard_page.dart';
import 'page/accounting_page.dart';
import 'page/settings_page.dart';
import 'page/logout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const LoginPage(),
      routes: {
        Endpoint.dashboard.routeName: (context) => const DashboardPage(),
        Endpoint.accounting.routeName: (context) => const AccountingPage(),
        Endpoint.settings.routeName: (context) => const SettingsPage(),
        Endpoint.logout.routeName: (context) => const LogoutPage(),
      },
    );
  }
}

