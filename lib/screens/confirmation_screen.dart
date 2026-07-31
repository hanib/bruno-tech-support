import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 120,
              ),

              SizedBox(height: 20),

              Text(
                "Appointment Request Submitted",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Bruno Tech Support will contact you shortly.",
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
      ),
    );
  }
}