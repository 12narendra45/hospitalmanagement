import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/admin.dart';
import 'screens/doctor.dart';
import 'screens/patient.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hospital Management',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/admin": (context) => const AdminDashboard(),
        "/doctor": (context) => const DoctorDashboard(),
        "/patient": (context) => const PatientDashboard(),
      },
    );
  }
}