import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Panderman, located in Kota Batu, Jawa Timur, Indonesia, stands at 2,045 meters above sea level, part of the DAS Brantas watershed. Its peak, Basundara, is accessible via the easiest route starting from Latar Ombo, taking about three hours for a round trip. The journey from Malang to the starting point involves a 45-minute drive to Batu, followed by a 90-minute drive to Latar Ombo, and another 90 minutes to the summit.\n\n'
        'Nestled close to settlements and not as high as surrounding mountains, Gunung Panderman offers stunning natural beauty, making it ideal for beginners. Its manageable height and proximity to urban areas provide a perfect setting for a serene escape, reflecting its Javanese name "Panderman," meaning "sekadar" or just enough for personal reflection and light adventure.\n\n'
        'Oleh: Erfin Jauhari Dwi Brian 2341760088.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Erfin Jauhari Dwi Brian 2341760088',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Layout Demo')),
        body: Column(children: [titleSection, buttonSection]),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, // ukuran column pas isi
      mainAxisAlignment: MainAxisAlignment.center, // ikon + teks di tengah
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8), // jarak atas teks
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
