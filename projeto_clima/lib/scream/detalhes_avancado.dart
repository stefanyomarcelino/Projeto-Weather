
import 'package:flutter/material.dart';
import 'package:porjeto_clima/scream/previsao_semana.dart';

class DetalhesAvancados extends StatelessWidget {
  DetalhesAvancados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F6FC),

      appBar: AppBar(
        title: Text('Detalhes avançados🌲'),
        centerTitle: true,
        backgroundColor: Color(0xFFF8F6FC),
        foregroundColor: Color(0xFF24242C),
        elevation: 0,
      ),

      body: ListView(
        padding: EdgeInsets.all(20),

        children: [

          // ================== Condição do tempo ==================//

          Text(
            'Condição do tempo',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF24242C),
            ),
          ),

          SizedBox(height: 12),

          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: Stack(
              children: [
                Image.network(
                  'https://picsum.photos/id/28/1200/600',
                  height: 180,
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
                      color: Colors.white,
                    ),
                  ),
                ),

                Positioned(
                  right: 16,
                  top: 16,
                  child: Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 24),

          // ================== Alertas ==================//

          Text(
            'Alertas',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF24242C),
            ),
          ),

          SizedBox(height: 8),

          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),

            child: ListTile(
              leading: Icon(
                Icons.warning_amber_rounded,
                color: Color(0xFF245D2A),
              ),
              title: Text('Chuva forte'),
              subtitle: Text(
                'Prevista para hoje, a partir das 18h',
              ),
            ),
          ),

          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),

            child: ListTile(
              leading: Icon(
                Icons.warning_amber_rounded,
                color: Color(0xFF245D2A),
              ),
              title: Text('Temperatura elevada'),
              subtitle: Text('Acima de 30°C amanhã'),
            ),
          ),

          SizedBox(height: 20),

  

          // ================== Previsão da semana ==================//
          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: Padding(
              padding: EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Previsão da semana',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF24242C),
                    ),
                  ),

                  SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('SEG'),
                            SizedBox(height: 8),
                            Icon(
                              Icons.wb_sunny,
                              color: Color(0xFF245D2A),
                            ),
                            SizedBox(height: 8),
                            Text('28° / 20°'),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text('TER'),
                            SizedBox(height: 8),
                            Icon(
                              Icons.cloud,
                              color: Color(0xFF245D2A),
                            ),
                            SizedBox(height: 8),
                            Text('25° / 18°'),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text('QUA'),
                            SizedBox(height: 8),
                            Icon(
                              Icons.cloudy_snowing,
                              color: Color(0xFF245D2A),
                            ),
                            SizedBox(height: 8),
                            Text('22° / 17°'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF8F6FC),
                        foregroundColor: Color(0xFF405A96),
                        elevation: 1,
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrevisaoSemana(),
                          ),
                        );
                      },

                      child: Text('Ver previsão completa'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
