
import 'package:flutter/material.dart';
import 'package:porjeto_clima/Titulo_Widget.dart';
import 'package:porjeto_clima/scream/previsao_semana.dart';

// ====================================================//

class ClimaAtual extends StatelessWidget {
  final String cidade;

  ClimaAtual({
    super.key,
    required this.cidade,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima atual'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(40),

        // ====================================================//

        children: [
          TituloWidget(titulo: 'Clima atual'),

          // a) Cidade atual
          Container(
            color: Color.fromARGB(255, 189, 255, 180),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cidade,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Terça-feira, 20 de Outubro de 2026',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ====================================================//

          Divider(),

          // b) Temperatura
          TituloWidget(titulo: 'Temperatura'),

          Center(
            child: Column(
              children: [
                Text(
                  '26°C',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 43,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 28, 82, 21),
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Sensação térmica: 30°C',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
          ),

          // ====================================================//

          Divider(),

          // c) Condição do tempo
          TituloWidget(titulo: 'Condição do tempo'),

          Image.network(
            'https://picsum.photos/id/1039/400/260',
            height: 200,
          ),

          // ====================================================//

          Divider(),

          // d) Detalhes
          TituloWidget(titulo: 'Detalhes'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Primeiro grupo
              Column(
                children: [
                  Icon(
                    Icons.water_drop,
                    color: Color.fromARGB(255, 50, 94, 52),
                    size: 35,
                  ),
                  Text('65%'),
                ],
              ),

              // ====================================================//

              // Segundo grupo
              Column(
                children: [
                  Icon(
                    Icons.air,
                    color: Color.fromARGB(255, 50, 94, 52),
                    size: 35,
                  ),
                  Text('12 Km/h'),
                ],
              ),

              // ====================================================//

              // Terceiro grupo
              Column(
                children: [
                  Icon(
                    Icons.umbrella,
                    color: Color.fromARGB(255, 50, 94, 52),
                    size: 35,
                  ),
                  Text('30%'),
                ],
              ),
            ],
          ),

          // ====================================================//

          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Umidade'),
                Text('Vento'),
                Text('Chuva'),
              ],
            ),
          ),

          // ====================================================//

          Divider(),

          // e) Atualização
          TituloWidget(titulo: 'Atualização'),

          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Atualizar'),
            ),
          ),

          SizedBox(height: 16),

          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Última atualização: 14:30'),
              ),
            ),
          ),

          // ====================================================//

          // f) Previsão da semana
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrevisaoSemana(
                    cidade: cidade,
                  ),
                ),
              );
            },
            child: Text('Ver previsão da semana'),
          ),
        ],
      ),
    );
  }
}
