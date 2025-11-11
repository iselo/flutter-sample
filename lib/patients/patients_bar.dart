import 'package:flutter/material.dart';

import 'abstract_bar.dart';

final class PatientsBar extends AbstractBar {
  PatientsBar({super.key});

  final SearchController _searchController = SearchController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(0),
            child: SearchAnchor(
              searchController: _searchController,
              viewBackgroundColor: Colors.transparent,
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  hintText: ' Search in patients',
                  hintStyle: WidgetStateProperty.all(
                    TextStyle(color: colorScheme.primaryContainer),
                  ),
                  textStyle: WidgetStateProperty.all(
                    TextStyle(color: colorScheme.onPrimary),
                  ),
                  backgroundColor: WidgetStateProperty.all(Colors.transparent),
                  surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
                  shadowColor: WidgetStateProperty.all(Colors.transparent),
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                    return [Text('Nice')];
                  },
              viewLeading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  _searchController.text = '';
                  _searchController.clear();
                  _searchController.closeView(null);
                },
              ),
            ),
          ),
          elevation: 0,
          actions: <Widget>[
            CircleAvatar(
              backgroundColor: colorScheme.onPrimary,
              child: IconButton(
                color: colorScheme.primary,
                icon: const Icon(Icons.person_rounded),
                onPressed: () => {},
                tooltip: 'Account',
              ),
            ),
            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
}
