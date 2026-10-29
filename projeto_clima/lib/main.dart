import 'package:flutter/material.dart';
import 'package:porjeto_clima/scream/Clima_atual.dart';
import 'package:porjeto_clima/scream/detalhes_avancado.dart';
import 'package:porjeto_clima/scream/previsao_semana.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 18, 33, 73),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

// ==================== WIDGETS CARD ================================//

class ListContest extends StatelessWidget {
  ListContest({super.key});

  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: 'São Bernardo do Campo',
      icone: Icons.location_city,
      descricao: '25°C - Ensolarado',
      destino: ClimaAtual(),
    ),

    CatalogoItem(
      titulo: 'Santo André',
      icone: Icons.location_city,
      descricao: '18°C - Nublado',
      destino: ClimaAtual(),
    ),

    CatalogoItem(
      titulo: 'Diadema',
      icone: Icons.location_city,
      descricao: '22°C - Parcialmente nublado',
      destino: ClimaAtual(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CidadeCard(item: secoes[0]),
        CidadeCard(item: secoes[1]),
        CidadeCard(item: secoes[2]),
      ],
    );
  }
}

// ====================================================//

class CidadeCard extends StatelessWidget {
  final CatalogoItem item;

  CidadeCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),

      child: ListTile(
        leading: Icon(item.icone, color: Color.fromARGB(255, 28, 82, 21)),

        title: Text(item.titulo, style: TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(item.descricao),

        trailing: Icon(
          Icons.arrow_forward,
          color: Color.fromARGB(255, 28, 82, 21),
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item.destino),
          );
        },
      ),
    );
  }
}

// ====================================================//

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp'), centerTitle: true),

      body: ListView(
        padding: EdgeInsets.all(24),

        children: [
          Icon(Icons.park, size: 100, color: Color.fromARGB(255, 28, 82, 21)),

          SizedBox(height: 20),

          Text(
            'São Paulo',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Text(
            '25°C - Ensolarado',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 30),

          Text(
            'Veja mais sobre o tempo!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          
          Divider(),
        
                  ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesAvancados(),
                ),
              );
            },
            child: Text('Veja os detalhes avançados '),
          ),

          SizedBox(height: 20),

          ListContest(),
        ],
      ),
    );
  }
}

// ====================================================//

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
