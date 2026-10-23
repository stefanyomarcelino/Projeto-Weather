import 'package:flutter/material.dart';
import 'package:porjeto_clima/Titulo_Widget.dart';

class PrevisaoSemana extends StatelessWidget {
  PrevisaoSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previsão da semana'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TituloWidget(titulo: 'Previsão da semana'),

         // ====================================================//


        //----Faixa temperatura----//
          Divider(),

          TituloWidget(titulo: 'Faixa de temepratura'),

                  Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      color: const Color.fromARGB(255, 63, 116, 57),
                      child: Center(
                        child: Text('18°C'),
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 60,
                      color: Color.fromARGB(255, 134, 184, 128),
                      child: Center(
                        child: Text('26°C'),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 60,
                      color: const Color.fromARGB(255, 63, 116, 57),
                      child: Center(
                        child: Text('31°C'),
                      ),
                    ),
                  ),
                ],
              ),

              // ====================================================//


                //----Resumo do dia----//

              TituloWidget(titulo: 'Resumo do dia'),

              Divider(),

              Container(
                height: 200,
                color:  Color.fromARGB(255, 134, 184, 128),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color:  Color.fromARGB(255, 134, 184, 128),
                        child: Center(
                          child: Text('Manhã: 20°C'),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 2,
                      child: Container(
                        color: const Color.fromARGB(255, 54, 104, 47),
                        child: Center(
                          child: Text('Tarde: 29°C'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            

            
          
              // ====================================================//  

              // ----- Proximos dias ---- //

              TituloWidget(titulo: 'Proximos dias'),

             Divider(),

            Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('Sexta'),
                ),
                Icon(
                  Icons.wb_sunny,
                  size: 28,
                ),
                Expanded(
                  child: Text('18°C'),
                ),
                Expanded(
                  child: Text('27°C'),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('Sábado'),
                ),
                Icon(
                  Icons.cloud,
                  size: 28,
                ),
                Expanded(
                  child: Text('19°C'),
                ),
                Expanded(
                  child: Text('26°C'),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('Domingo'),
                ),
                Icon(
                  Icons.umbrella,
                  size: 28,
                ),
                Expanded(
                  child: Text('17°C'),
                ),
                Expanded(
                  child: Text('24°C'),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('Segunda'),
                ),
                Icon(
                  Icons.cloud,
                  size: 28,
                ),
                Expanded(
                  child: Text('18°C'),
                ),
                Expanded(
                  child: Text('25°C'),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text('Terça'),
                ),
                Icon(
                  Icons.wb_sunny,
                  size: 28,
                ),
                Expanded(
                  child: Text('20°C'),
                ),
                Expanded(
                  child: Text('29°C'),
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}