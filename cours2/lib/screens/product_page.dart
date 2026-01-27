import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductHeader(),
          ],
        ),
      ),
    );
  }
}


class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [


        Image.network(
          'https://app.ece.fr/flutter/pancakes.jpg', 
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),


        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,    
              left: 20,   
              right: 20,
              bottom: 10, 
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Petits pois et carottes',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF080040), 
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Cassegrain',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),


        Positioned(
          top: 40,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        const Positioned(
          top: 40,
          right: 10,
          child: Icon(Icons.reply, color: Colors.white),
        ),
      ],
    );
  }
}