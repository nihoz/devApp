import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in or sign up', 
          style: TextStyle(fontWeight: FontWeight.bold)
        ),
        centerTitle: false, 
      ),
      body: Center( 
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400), 
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [

              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: 'Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),


              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text('Continue'),
                ),
              ),

              
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or", style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
              ),

              
              const SocialLoginButton(
                label: 'Apple',
                iconPath: 'assets/apple.svg',
              ),
              const SizedBox(height: 12),
              const SocialLoginButton(
                label: 'Google',
                iconPath: 'assets/google.svg',
              ),
              const SizedBox(height: 12),
              const SocialLoginButton(
                label: 'Facebook',
                iconPath: 'assets/facebook.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SocialLoginButton extends StatelessWidget {
  final String label;
  final String iconPath;

  const SocialLoginButton({
    super.key,
    required this.label,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(iconPath, width: 20), 
        label: Text(
          'Continue with $label',
          style: const TextStyle(color: Colors.black),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFFE0E0E0)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
      
    
    
  
