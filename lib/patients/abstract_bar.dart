import 'package:flutter/material.dart';

abstract class AbstractBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AbstractBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16.0);
}
