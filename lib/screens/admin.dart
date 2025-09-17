import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    ApproveDoctorsPage(),
    ManageResourcesPage(),
    AddDoctorPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout() {
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Dashboard"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(icon: const Icon(Icons.logout), onPressed: _logout),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: "Approve"),
          BottomNavigationBarItem(icon: Icon(Icons.local_hospital), label: "Resources"),
          BottomNavigationBarItem(icon: Icon(Icons.person_add), label: "Add Doctor"),
        ],
      ),
    );
  }
}

class ApproveDoctorsPage extends StatelessWidget {
  const ApproveDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/approve_doctor.png", height: 160),
          const SizedBox(height: 16),
          const Text(
            "🩺 Pending doctor approvals",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ManageResourcesPage extends StatefulWidget {
  const ManageResourcesPage({super.key});

  @override
  State<ManageResourcesPage> createState() => _ManageResourcesPageState();
}

class _ManageResourcesPageState extends State<ManageResourcesPage> {
  final List<Map<String, dynamic>> _resources = [];
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _countController = TextEditingController();

  void _addResource() {
    setState(() {
      _resources.add({
        "type": _typeController.text,
        "count": int.tryParse(_countController.text) ?? 0,
      });
      _typeController.clear();
      _countController.clear();
    });
    // TODO: Call backend API
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/resources.png", height: 120),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: _typeController,
                decoration: const InputDecoration(
                  labelText: "Resource Type",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _countController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Count",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: _addResource,
                icon: const Icon(Icons.add),
                label: const Text("Add Resource"),
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: _resources.length,
            itemBuilder: (context, index) {
              final res = _resources[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: ListTile(
                  leading: Image.asset("assets/images/bed.png", height: 40),
                  title: Text(res["type"]),
                  subtitle: Text("Count: ${res["count"]}"),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class AddDoctorPage extends StatelessWidget {
  const AddDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset("assets/images/add_doctor.png", height: 120),
          const SizedBox(height: 12),
          const Text("Add New Doctor",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          TextField(
              decoration: const InputDecoration(
                  labelText: "Name", border: OutlineInputBorder())),
          const SizedBox(height: 12),
          TextField(
              decoration: const InputDecoration(
                  labelText: "Email", border: OutlineInputBorder())),
          const SizedBox(height: 12),
          TextField(
              decoration: const InputDecoration(
                  labelText: "Specialization",
                  border: OutlineInputBorder())),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              // TODO: API call to add doctor
            },
            icon: const Icon(Icons.save),
            label: const Text("Save Doctor"),
          ),
        ],
      ),
    );
  }
}
