import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in or sign up'),
        centerTitle: false, 
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0), 
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined), 
                hintText: 'Mail', 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            
            const SizedBox(height: 20), 
            

            SizedBox(
              width: double.infinity, 
              child: FilledButton(
                onPressed: () {}, 
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
      
    
    );
  }
}