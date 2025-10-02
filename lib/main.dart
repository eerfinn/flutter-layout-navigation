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
        'Gunung Panderman adalah sebuah gunung di Kota Batu, Jawa Timur, Indonesia, dengan puncak Basundara yang berketinggian 2.045 mdpl. Nama Panderman berasal dari kata "Dermo" dalam bahasa Jawa yang berarti \'sekadar\', karena gunung ini digunakan untuk menyepi sejenak dan merenungi diri.\n\n'
        'Diperlukan waktu sekitar tiga jam untuk mendaki dan menuruni gunung ini. Rute termudah dimulai dari Latar Ombo. Perjalanan dari Malang ke Batu sekitar 45 menit, kemudian dari Batu ke Latar Ombo 90 menit, dan pendakian ke puncak 90 menit.\n\n'
        'Gunung ini dekat dengan permukiman dan tidak terlalu tinggi, sehingga ideal untuk pendaki pemula. Dari puncak, Anda dapat menikmati pemandangan Kota Batu, Gunung Arjuno, Gunung Welirang, dan Gunung Banyak.\n\n'
        'Jalur pendakian: Mulai dari Basecamp Toyomerto di Desa Pesanggrahan, lalu ke Latar Ombo, Pos Watu Gede, dan akhirnya Puncak Basundara.\n\n'
        'Oleh: Erfin Jauhari Dwi Brian 2341760088.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Erfin Jauhari Dwi Brian 2341760088',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Layout Demo')),
        body: Column(children: [ 
          Image.asset(
            'images/gunung-panderman.jpg', 
            width: 600, 
            height: 240, 
            fit: BoxFit.cover,
            ), 
            titleSection, 
            buttonSection, 
            textSection]),
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
