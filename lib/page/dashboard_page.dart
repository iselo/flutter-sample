import 'package:flutter/material.dart';

import 'widget/floating_menu_button.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
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
