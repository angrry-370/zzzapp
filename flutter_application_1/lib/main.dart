import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Полотенца с размерами и ценами от бренда RARE')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://picsum.photos/100'),
              child: Text('RARE', style: TextStyle(color: Colors.red)),
            ),
            SizedBox(height: 20),
            Container(
              width: 340,
              height: 100,
              color: Colors.blue[200],
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Голубое полотенце c звездочкой:\n2600 руб',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 60,
              color: Colors.green[300],
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'Зелёное полотенце:\n 1500 руб.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Image(
              image: NetworkImage('https://picsum.photos/300/150'),
              width: 300,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Перейти к другим полотенцам'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(123);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Другие полотенца')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://picsum.photos/80'),
              child: Icon(Icons.spa, color: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/100/100'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text('', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 120,
                  height: 80,
                  color: Colors.orange[300],
                  child: Center(
                    child: Image(
                      image: NetworkImage('https://picsum.photos/120/80'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
Container(
                  width: 80,
                  height: 120,
                  color: Colors.red[300],
                  child: Center(
                    child: Text('', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.teal[200],
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/400/200'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Всё полотенца по 1000 рублей',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(''),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(123);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}