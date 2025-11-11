import 'package:flutter/material.dart';

import '../appointments/appointments_bar.dart';
import '../appointments/appointments_view.dart';
import '../patients/patients_bar.dart';
import '../patients/patients_view.dart';
import '../settings/settings_modal.dart';
import 'add_button.dart';
import 'app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  final List<Widget> contentViews = [PatientsView(), AppointmentsView()];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final List<PreferredSizeWidget> contentViewBars = [
      PatientsBar(),
      AppointmentsBar(),
    ];
    return Scaffold(
      drawer: AppDrawer(onShowSettings: () => SettingsModal.show(context)),
      appBar: contentViewBars[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: colorScheme.outlineVariant,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.people), label: 'Patients'),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.calendar_today)),
            label: 'Appointments',
          ),
        ],
      ),
      floatingActionButton: AddButton(callback: () => {}),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: IndexedStack(index: currentPageIndex, children: contentViews),
      ),
    );
  }
}
