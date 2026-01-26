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
        centerTitle: false, // Titre aligné à gauche
      ),
      body: Center( // Centre le rectangle au milieu de l'écran
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400), // Largeur du rectangle
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Le rectangle s'adapte à la hauteur du contenu
            children: [
              // Champ Email avec icône et bordure arrondie de 12px
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

              // Bouton Continuer Bleu
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

              // Séparateur "Or" avec lignes grises
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

              // Boutons Sociaux (Utilisation du widget personnalisé ci-dessous)
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
      
    
    
  
