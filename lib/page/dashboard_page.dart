import 'package:flutter/material.dart';

import '../widget/floating_menu_button.dart';
import 'endpoint.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(Endpoint.dashboard.title),
        backgroundColor: colorScheme.primaryContainer,
      ),
      body: Center(
        child: Text(
          'Welcome',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(color: colorScheme.primary),
        ),
      ),
      floatingActionButton: const FloatingMenuButton(),
    );
  }
}
