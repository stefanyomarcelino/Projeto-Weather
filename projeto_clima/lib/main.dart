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
          seedColor: const Color.fromARGB(255, 68, 118, 255),
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
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold )),

            Text('Terça-feira, 20 de Outubro de 2026', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),


            Divider(),
            //=====================================//

            TituloWidget(titulo: 'Temperatura'),

            Text('Temperatura atual: 26C',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent),),

            Text('Sensação termica: 30C', style: TextStyle(fontSize: 28),),

            
            Divider(),
            //=====================================//


            TituloWidget(titulo: 'Condição do tempo'),
            Image.network(''),



            Divider(),
            //=====================================//


          TituloWidget(titulo: 'Detalhes'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Icon(Icons.water_drop, color: Colors.blueAccent, size: 32,),
          Icon(Icons.air, color: const Color.fromARGB(255, 160, 195, 255), size: 32,),
          Icon(Icons.umbrella, color: const Color.fromARGB(255, 48, 33, 87), size: 32,),
          
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Text('65%'),
          Text('12 Km/h'),
          Text('30%'),


            Divider(),
            //=====================================//


           TituloWidget(titulo: 'Atualização'),
           ElevatedButton(onPressed: () {}, child: Text('Clique aqui'),),
              ])],
            ),
          ],
        ),
      ),
    );
  }
}
