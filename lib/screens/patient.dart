import 'package:flutter/material.dart';

class PatientDashboard extends StatefulWidget {
  const PatientDashboard({super.key});

  @override
  State<PatientDashboard> createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  int _selectedIndex = 0;

  void _logout() {
    Navigator.pushReplacementNamed(context, "/login");
  }

  static final List<Widget> _pages = <Widget>[
    // 🏠 Home
    ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Image.asset("assets/images/patient_home.png", height: 140),
        const SizedBox(height: 20),

        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 4,
          child: ListTile(
            leading: Image.asset("assets/images/appointment.png", height: 40),
            title: const Text("Book Appointment"),
            subtitle: const Text("Schedule a visit with a doctor"),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.green),
            onTap: () {
              // TODO: Connect backend
            },
          ),
        ),
        const SizedBox(height: 12),

        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 4,
          child: ListTile(
            leading: Image.asset("assets/images/prescription.png", height: 40),
            title: const Text("View Prescriptions"),
            subtitle: const Text("Check your medical prescriptions"),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.green),
            onTap: () {
              // TODO: Connect backend
            },
          ),
        ),
      ],
    ),

    // 👤 Profile
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/patient_profile.png", height: 120),
          const SizedBox(height: 16),
          const Text("Patient Profile", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const Text("Name: Jane Doe"),
          const Text("Age: 32"),
        ],
      ),
    ),

    // ⚙️ Settings
    Center(
      child: ElevatedButton.icon(
        onPressed: () {
          // Logout action
        },
        icon: const Icon(Icons.logout),
        label: const Text("Logout"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(16),
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patient Dashboard"),
        backgroundColor: Colors.green,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
