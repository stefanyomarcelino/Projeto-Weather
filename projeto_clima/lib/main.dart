
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

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp'), centerTitle: true),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            // ====================================================//
            children: [
              Icon(
                Icons.park,
                size: 100,
                color: Color.fromARGB(255, 28, 82, 21),
              ),

              SizedBox(height: 30),

              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClimaAtual(),
                      ),
                    );
                  },

                  // ====================================================//
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 28, 82, 21),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  // ====================================================//
                  child: Text(
                    'Clima atual',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              SizedBox(height: 18),

              // ====================================================//
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrevisaoSemana(),
                      ),
                    );
                  },

                  // ====================================================//
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 28, 82, 21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 28, 82, 21),
                      ),
                    ),
                  ),

                  child: Text(
                    'Previsão da semana',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              // ====================================================//
              
              SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesAvancados(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 28, 82, 21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 28, 82, 21),
                      ),
                    ),
                  ),

                  child: Text(
                    'Detalhes avançados',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
