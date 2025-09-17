import 'package:flutter/material.dart';
import './register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _role = "Patient"; // Default for demo

  void _login() {
    // TODO: Replace with API login
    if (_role == "Admin") {
      Navigator.pushReplacementNamed(context, "/admin");
    } else if (_role == "Doctor") {
      Navigator.pushReplacementNamed(context, "/doctor");
    } else {
      Navigator.pushReplacementNamed(context, "/patient");
    }
  }

  void _goToSignup() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignupScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // 🖼 Login Illustration
              Image.asset(
                "assets/images/login.png",
                height: 200,
              ),
              const SizedBox(height: 20),

              const Text(
                "Hospital Login",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // ✉ Email
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

              // ✅ Login Button
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
                  onPressed: _login,
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // 🔗 Go to Signup
              TextButton(
                onPressed: _goToSignup,
                child: const Text("Don't have an account? Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
