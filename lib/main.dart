import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_demo/dashboard_provider.dart';
import 'package:responsive_demo/ui/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DashboardProvider()),
      ],
      builder: (context, _) {
        return MaterialApp(
          title: 'Flutter Responsive Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const DashboardScreen(),
        );
      },
    );
  }
}
