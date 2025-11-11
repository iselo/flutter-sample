import 'package:flutter/material.dart';

import '../patients/abstract_bar.dart';

final class AppointmentsBar extends AbstractBar {
  AppointmentsBar({super.key});

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
                  hintText: ' Search in appointments',
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
            IconButton(
              icon: const Icon(Icons.calendar_month_rounded),
              onPressed: () => {},
              tooltip: 'Week',
            ),
            IconButton(
              icon: const Icon(Icons.calendar_view_day_rounded),
              onPressed: () => {},
              tooltip: 'Today',
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz_rounded),
              onPressed: () => {},
              tooltip: 'More',
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                backgroundColor: colorScheme.onPrimary,
                child: IconButton(
                  color: colorScheme.primary,
                  icon: const Icon(Icons.person_rounded),
                  onPressed: () => {},
                  tooltip: 'Account',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
