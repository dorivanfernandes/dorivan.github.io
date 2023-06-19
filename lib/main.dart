import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dorivan Fernandes',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white70,
        backgroundColor: const Color(0xFF0D1A26),
        fontFamily: 'Nunito',
        textTheme: const TextTheme(
            displayLarge: TextStyle(color: Colors.white70, fontSize: 50),
            titleLarge: TextStyle(
                color: Colors.white, fontFamily: 'Cookie', fontSize: 50),
            bodyMedium: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.w900)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dorivan Fernandes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        toolbarHeight: 100,
        title:
            Text(widget.title, style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineGradientButton(
                radius: const Radius.circular(80),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
              strokeWidth: 1,
              onTap: () => launchUrl(Uri.parse('https://dorivanfernandes.github.io/articles/')),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff22c1c3),
                  Color(0xfffdbb2d)
                ]
              ),
                child: const Text(
                  'Articles',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
