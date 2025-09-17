import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _role = "Patient"; // default role

  void _signup() {
    // TODO: Call backend API to register user
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Signup successful! Please login.")),
    );
    Navigator.pop(context); // Go back to login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Signup"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // 🖼 Signup Illustration
            Image.asset(
              "assets/images/signup.png",
              height: 200,
            ),
            const SizedBox(height: 20),

            const Text(
              "Create Account",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            // 📝 Full Name
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // 📝 Email
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // 🔒 Password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // 👤 Role
            DropdownButtonFormField<String>(
              value: _role,
              items: const [
                DropdownMenuItem(value: "Admin", child: Text("Admin")),
                DropdownMenuItem(value: "Doctor", child: Text("Doctor")),
                DropdownMenuItem(value: "Patient", child: Text("Patient")),
              ],
              onChanged: (value) {
                setState(() {
                  _role = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: "Role",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // ✅ Sign Up Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: _signup,
                child: const Text("Sign Up", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
