import 'package:flutter/material.dart';
import 'package:idex_274_64g_durjoy/app/theme.dart';
import 'package:idex_274_64g_durjoy/auth/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.diversity_3_rounded,
                size: 70,
                color: AppTheme.primary,
              ),
              SizedBox(height: 20),

              Text(
                "Crkle",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 10),
              Text(
                "Together we grow, together we fall",
                style: TextStyle(color: Colors.white38),
              ),

              SizedBox(height: 10),
              Text("© Crkle 2026, by Nahin"),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
