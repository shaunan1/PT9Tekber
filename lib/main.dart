import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Nganu',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/satu': (context) => HalamanSatu(),
        '/dua': (context) => HalamanDua(),
        '/tiga': (context) => HalamanTiga(),
        '/empat': (context) => HalamanEmpat(),
      },
    );
  }
}

// Halaman Utama (HomePage)
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/satu'),
              child: Text('Pergi ke Halaman Satu (Push)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dua'),
              child: Text('Pergi ke Halaman Dua (Pop)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tiga'),
              child: Text('Pergi ke Halaman Tiga (PushReplacement)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/empat'),
              child: Text('Pergi ke Halaman Empat (PopAndPushNamed)'),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman Satu (Push)
class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Satu')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dua');
          },
          child: Text('Push ke Halaman Dua'),
        ),
      ),
    );
  }
}

// Halaman Dua (Pop)
class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Dua')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali ke Halaman Sebelumnya (Pop)'),
        ),
      ),
    );
  }
}

// Halaman Tiga (PushReplacement)
class HalamanTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Tiga')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/empat');
          },
          child: Text('PushReplacement ke Halaman Empat'),
        ),
      ),
    );
  }
}

// Halaman Empat (PopAndPushNamed)
class HalamanEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Empat')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
          child: Text('PopAndPushNamed ke HomePage'),
        ),
      ),
    );
  }
}
