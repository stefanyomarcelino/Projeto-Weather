import 'package:flutter/material.dart';
import 'package:porjeto_clima/Titulo_Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 18, 33, 73),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('WheaterApp')),
        body: ListView(
          padding: EdgeInsets.all(40),
          children: [
            TituloWidget(titulo: 'Cidade atual'),

            Text(
              'São Bernador do campo',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            Text(
              'Terça-feira, 20 de Outubro de 2026',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Divider(),

            TituloWidget(titulo: 'Temperatura'),

            Text(
              'Temperatura atual: 26C',
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 28, 82, 21),
              ),
            ),

            Text('Sensação termica: 30C', style: TextStyle(fontSize: 28)),

            Divider(),

            TituloWidget(titulo: 'Condição do tempo'),
            Image.network('https://picsum.photos/id/1039/400/260'),

            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Primeiro grupo
                Column(
                  children: [
                    Icon(
                      Icons.water_drop,
                      color: const Color.fromARGB(255, 50, 94, 52),
                      size: 35,
                    ),
                    Text('65%'),
                  ],
                ),

                // Segundo grupo
                Column(
                  children: [
                    Icon(
                      Icons.air,
                      color: const Color.fromARGB(255, 50, 94, 52),
                      size: 35,
                    ),
                    Text('12 Km/h'),
                  ],
                ),

                // Terceiro grupo
                Column(
                  children: [
                    Icon(
                      Icons.umbrella,
                      color: const Color.fromARGB(255, 50, 94, 52),
                      size: 35,
                    ),
                    Text('30%'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
