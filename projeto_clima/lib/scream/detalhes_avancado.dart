import 'package:flutter/material.dart';

class DetalhesAvancados extends StatelessWidget {
   DetalhesAvancados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Detalhes avançados🌲'),
      ),

      body: ListView(
        padding: EdgeInsets.all(16),

        // ================== seções da tela ===================//

        children: [
          Card(
            child: ListTile(
              leading:  Icon(Icons.warning),
              title:  Text('Chuva forte'),
              subtitle:  Text(
                'Previsto para hoje, a partir das 18h',
              ),
              trailing:  Icon(Icons.chevron_right),
            ),
          ),

          Card(
            child: ListTile(
              leading:  Icon(Icons.warning),
              title:  Text('Temperatura elevada'),
              subtitle:  Text(
                'Temperatura acima de 30°C prevista para amanhã',
              ),
              trailing:  Icon(Icons.chevron_right),
            ),
          ),

           SizedBox(height: 20),

          Divider(),

          // ================== Indicadores ===================//

          GridView.count( // ultilizando o GridView
            crossAxisCount: 2,
            shrinkWrap: true,
            physics:  NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,

            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(Icons.wb_sunny),
                    SizedBox(height: 8),
                     Text(
                      '6',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text('Índice UV'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.speed),
                     SizedBox(height: 8),
                     Text(
                      '1013 hPa',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Pressão'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.visibility),
                     SizedBox(height: 8),
                     Text(
                      '10 km',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text('Visibilidade'),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_twilight),
                    SizedBox(height: 8),
                     Text(
                      '06:15',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text('Nascer do sol'),
                  ],
                ),
              ),
            ],
          ),

        Divider(),

        // ================== Condição do tempo ===================//


           SizedBox(height: 20),

          Stack( // uso do Stack
            children: [
              Image.network(
                'https://picsum.photos/id/28/1200/600',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

               Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  '26°C',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 243, 245, 243),
                  ),
                ),
              ),

               Positioned(
                right: 16,
                top: 16,
                child: Icon(
                  Icons.wb_sunny,
                  color:Color.fromARGB(255, 246, 248, 246),
                  size: 32,
                ),
              ),
            ],
          ),


        // ================== Tags ===================//

      Divider(),

          SizedBox(height: 20),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(
                avatar: Icon(Icons.water_drop),
                label:  Text('Chuva forte'),
              ),

              Chip(
                avatar: Icon(Icons.wb_sunny),
                label:  Text('UV alto'),
                
              ),

              Chip(
                label:  Text('Vento moderado'),
              ),

              Chip(
                label:  Text('Umidade alta'),
              ),

              Chip(
                avatar:  Icon(Icons.ac_unit),
                label:  Text('Frente fria'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
