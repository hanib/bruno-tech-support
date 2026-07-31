import 'package:flutter/material.dart';
import 'confirmation_screen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final problemController = TextEditingController();

  String selectedService = 'Computer Repair';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Appointment'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              DropdownButtonFormField<String>(
                value: selectedService,
                decoration: const InputDecoration(
                  labelText: 'Service Needed',
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'Computer Repair',
                    child: Text('Computer Repair'),
                  ),
                  DropdownMenuItem(
                    value: 'Windows Problems',
                    child: Text('Windows Problems'),
                  ),
                  DropdownMenuItem(
                    value: 'Email Support',
                    child: Text('Email Support'),
                  ),
                  DropdownMenuItem(
                    value: 'Printer Setup',
                    child: Text('Printer Setup'),
                  ),
                  DropdownMenuItem(
                    value: 'Training',
                    child: Text('Training'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedService = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: problemController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Describe Your Problem',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    ConfirmationScreen();

                  },
                  child: const Text(
                    'SUBMIT REQUEST',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}