import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightColorScheme = ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: Brightness.light
    );
    final darkColorScheme = ColorScheme.fromSeed(
        seedColor: Colors.indigo,
        brightness: Brightness.dark
    );
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Doctor Planer',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: lightColorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: lightColorScheme.primary,
            foregroundColor: lightColorScheme.onPrimary,
          ),
        ),
        darkTheme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: darkColorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: darkColorScheme.primary,
            foregroundColor: darkColorScheme.onPrimary,
          ),
        ),
        home: const HomePage(),
        // routes: {
        //   Endpoint.patients.routeName: (context) => const PatientsPage(),
        //   Endpoint.appointments.routeName: (context) => const AppointmentsPage(),
        //   Endpoint.about.routeName: (context) => const AboutPage(),
        // },
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}
