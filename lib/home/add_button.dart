import 'package:flutter/material.dart';

final class AddButton extends StatelessWidget {
  final VoidCallback? callback;

  const AddButton({super.key, this.callback});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FloatingActionButton(
      shape: const StadiumBorder(),
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      onPressed: callback,
      child: const Icon(Icons.add),
    );
  }
}
