import 'package:flutter/material.dart';

import '../widget/floating_menu_button.dart';
import 'endpoint.dart';

class AccountingPage extends StatelessWidget {
  const AccountingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(Endpoint.accounting.title),
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
