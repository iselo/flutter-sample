import 'package:flutter/material.dart';

final class ToolBar extends StatelessWidget implements PreferredSizeWidget {

  const ToolBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme
        .of(context)
        .colorScheme;
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.home),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            print('Search tapped');
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            print('Notifications tapped');
          },
        ),
      ],
      backgroundColor: colorScheme.primaryContainer,
    );
  }
}