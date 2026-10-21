
import 'package:flutter/material.dart';
import 'package:porjeto_clima/Titulo_Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 18, 33, 73),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WheaterApp'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(40),
          children: [
            // Cidade atual
            TituloWidget(titulo: 'Cidade atual'),

            const Text(
              'São Bernador do campo',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              'Terça-feira, 20 de Outubro de 2026',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Divider(),

            // Temperatura
            TituloWidget(titulo: 'Temperatura'),

            const Text(
              'Temperatura atual: 26C',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent,
              ),
            ),

            const Text(
              'Sensação termica: 30C',
              style: TextStyle(fontSize: 28),
            ),

            const Divider(),

            // Condição do tempo
            TituloWidget(titulo: 'Condição do tempo'),

            Image.network(
              'https://openweathermap.org/img/wn/01d@2x.png',
              width: 100,
              height: 100,
              alignment: Alignment.centerLeft,
            ),

            const Divider(),

            // Detalhes
            TituloWidget(titulo: 'Detalhes'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.water_drop,
                      color: Colors.blueAccent,
                      size: 32,
                    ),
                    const SizedBox(height: 8),
                    const Text('65%'),
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.air,
                      color: Color.fromARGB(255, 160, 195, 255),
                      size: 32,
                    ),
                    const SizedBox(height: 8),
                    const Text('12 Km/h'),
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.umbrella,
                      color: Color.fromARGB(255, 79, 61, 126),
                      size: 32,
                    ),
                    const SizedBox(height: 8),
                    const Text('30%'),
                  ],
                ),
              ],
            ),

            const Divider(),

            // Atualização
            TituloWidget(titulo: 'Atualização'),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Clique aqui'),
            ),
          ],
        ),
      ),
    );
  }
}
