import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelListScreen(),
    ));

const hotels = [
  ('Kigali Serena Hotel',   'Kigali, Rwanda',          220, 4.9, Icons.hotel,  16.0, Color(0xFFFFF8E1), 24.0),
  ('One&Only Nyungwe House','Nyungwe Forest, Rwanda',  350, 4.8, Icons.forest,  4.0, Color(0xFFE3F2FD), 12.0),
  ('Virunga Lodge',         'Musanze, Rwanda',         180, 4.7, Icons.cabin,   0.0, Color(0xFFE8F5E9),  8.0),
];

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rwanda Hotel Booking'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: hotels.map((h) => _HotelCard(hotel: h)).toList(),
      ),
    );
  }
}

class _HotelCard extends StatelessWidget {
  const _HotelCard({required this.hotel});
  final Record hotel;

  @override
  Widget build(BuildContext context) {
    final (name, location, price, rating, icon, elevation, color, radius) =
        hotel as (String, String, int, double, IconData, double, Color, double);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        elevation: elevation,   // Property 1
        color: color,           // Property 2
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius), // Property 3
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.indigo.shade100,
                child: Icon(icon, size: 28, color: Colors.indigo),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Row(children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.grey),
                      Text(location, style: const TextStyle(color: Colors.grey, fontSize: 13)),
                    ]),
                    Row(children: [
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      Text('$rating', style: const TextStyle(fontSize: 13)),
                    ]),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.indigo)),
                  const Text('/night', style: TextStyle(fontSize: 11, color: Colors.grey)),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$name booked!')),
                    ),
                    child: const Text('Book'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
