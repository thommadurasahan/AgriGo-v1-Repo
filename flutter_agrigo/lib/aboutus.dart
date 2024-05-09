import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Color(0xFF25DA15),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "About Us",
              style: TextStyle(
                color: Color.fromARGB(255, 46, 125, 50),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Agrigo is dedicated to revolutionizing the way agricultural products are bought and sold. Our mission is to provide a user-friendly platform that connects farmers, buyers, and sellers, streamlining transactions and promoting fair pricing. With Agrigo, farmers can showcase their products to a wider market, buyers can access a diverse range of agricultural goods, and sellers can efficiently manage their inventory. We are committed to fostering a transparent and efficient marketplace that benefits all stakeholders in the agricultural industry. Join Agrigo today and be part of the future of agriculture.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
