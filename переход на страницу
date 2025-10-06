import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const MyHomePage(),
        '/second': (context) => const SecondScreen(),
      },
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override  
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная страница'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Навигация на вторую страницу  
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Перейти на вторую страницу'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {  
  const SecondScreen({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вторая страница'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Возврат на предыдущую страницу  
            Navigator.pop(context);
          },
          child: const Text('Вернуться назад'),
        ),
      ),
    );
  }
}
