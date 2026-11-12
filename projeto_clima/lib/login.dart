import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField( // parte nova q ele passou 
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // para aparecer aquelas bolinhas na tela onde fica a senha 
                ),
            
                SizedBox(height: 32,),
            
                Divider(),
            
            
                 ElevatedButton(onPressed: () {}, child: Text('entrar')),
                 Divider(),
            
                 TextButton(onPressed: () {}, child: Text('ainda n tem uma conta? cadastre-se'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}