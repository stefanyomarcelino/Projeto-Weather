
import 'package:flutter/material.dart';
import 'package:porjeto_clima/Titulo_Widget.dart';


class ClimaAtualScreen extends StatelessWidget {
  const ClimaAtualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima atual'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TituloWidget(titulo: 'Condições atuais'),

          SizedBox(height: 16),

           Icon(
            Icons.wb_sunny,
            size: 60,
            color: Colors.orange,
          ),

          Text(
            '28°C',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text('Ensolarado'),

          SizedBox(height: 24),

          TituloWidget(titulo: 'Detalhes'),

          SizedBox(height: 16),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.water_drop,
                    color: Colors.blueAccent,
                    size: 32,
                  ),
                  Text('65%'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.air,
                    color: Colors.teal,
                    size: 32,
                  ),
                  Text('12 km/h'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.umbrella,
                    color: Colors.deepPurple,
                    size: 32,
                  ),
                  Text('30%'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

