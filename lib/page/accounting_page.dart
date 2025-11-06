import 'package:flutter/material.dart';

import 'widget/floating_menu_button.dart';

class AccountingPage extends StatelessWidget {
  const AccountingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Text(
          'Accounting',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(color: colorScheme.primary),
        ),
      ),
      floatingActionButton: const FloatingMenuButton(),
    );
  }
}
