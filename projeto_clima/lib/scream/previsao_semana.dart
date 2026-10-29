
import 'package:flutter/material.dart';
import 'package:porjeto_clima/Titulo_Widget.dart';

class PrevisaoSemana extends StatelessWidget {
  PrevisaoSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F6FC),

      appBar: AppBar(
        title: Text('Previsão da semana'),
        centerTitle: true,
        backgroundColor: Color(0xFFF8F6FC),
        foregroundColor: Color(0xFF24242C),
        elevation: 0,
      ),

      body: ListView(
        padding: EdgeInsets.all(20),

        children: [

          TituloWidget(titulo: 'Previsão da semana'),

          SizedBox(height: 12),

          // ================== Faixa de temperatura ==================//

          TituloWidget(titulo: 'Faixa de temperatura'),

          SizedBox(height: 10),

          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    color: Color(0xFF3F7439),
                    child: Center(
                      child: Text(
                        '18°C',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    height: 60,
                    color: Color(0xFF86B880),
                    child: Center(
                      child: Text(
                        '26°C',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    height: 60,
                    color: Color(0xFF3F7439),
                    child: Center(
                      child: Text(
                        '31°C',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // ================== Resumo do dia ==================//


          TituloWidget(titulo: 'Resumo do dia'),

          SizedBox(height: 10),

          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  height: 65,
                  color: Color(0xFF86B880),
                  child: Center(
                    child: Text(
                      'Manhã: 20°C',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 85,
                  color: Color(0xFF36682F),
                  child: Center(
                    child: Text(
                      'Tarde: 29°C',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // ================== Próximos dias ==================//
          

          TituloWidget(titulo: 'Próximos dias'),

          SizedBox(height: 10),

          // Sexta
          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            child: ListTile(
              title: Text('Sexta'),
              leading: Icon(
                Icons.wb_sunny,
                color: Color(0xFF245D2A),
              ),
              subtitle: Text('18°C - 27°C'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xFF245D2A),
              ),
            ),
          ),

          // Sábado
          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            child: ListTile(
              title: Text('Sábado'),
              leading: Icon(
                Icons.cloud,
                color: Color(0xFF245D2A),
              ),
              subtitle: Text('19°C - 26°C'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xFF245D2A),
              ),
            ),
          ),

          // Domingo
          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            child: ListTile(
              title: Text('Domingo'),
              leading: Icon(
                Icons.umbrella,
                color: Color(0xFF245D2A),
              ),
              subtitle: Text('17°C - 24°C'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xFF245D2A),
              ),
            ),
          ),

          // Segunda
          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            child: ListTile(
              title: Text('Segunda'),
              leading: Icon(
                Icons.cloud,
                color: Color(0xFF245D2A),
              ),
              subtitle: Text('18°C - 25°C'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xFF245D2A),
              ),
            ),
          ),

          // Terça
          Card(
            color: Color(0xFFF2F0F8),
            elevation: 1,
            child: ListTile(
              title: Text('Terça'),
              leading: Icon(
                Icons.wb_sunny,
                color: Color(0xFF245D2A),
              ),
              subtitle: Text('20°C - 29°C'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xFF245D2A),
              ),
            ),
          ),

          SizedBox(height: 16),
        ],
      ),
    );
  }
}
