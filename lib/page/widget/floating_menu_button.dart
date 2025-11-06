import 'package:flutter/material.dart';

import '../endpoint.dart';

final class FloatingMenuButton extends StatelessWidget {
  final Color? backgroundColor;

  const FloatingMenuButton({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: () => _openMenu(context),
      tooltip: 'Menu',
      child: const Icon(Icons.menu),
    );
  }

  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: Endpoint.values.map((e)=>e.newListTile(context)).toList()
          ),
        );
      },
    );
  }
}
