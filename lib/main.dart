import 'package:flutter/material.dart';

void main() {
  runApp(const KETRINAPP());
}

class KETRINAPP extends StatelessWidget {
  const KETRINAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const PrimeiraPagina(titulo: 'Meu Primeiro Programa'),
    );
  }
}

class PrimeiraPagina extends StatefulWidget {
  const PrimeiraPagina({super.key, required this.titulo});

  final String titulo;

  @override
  State<PrimeiraPagina> createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   
        backgroundColor: Theme.of(context).colorScheme.error,
        title: Text(widget.titulo),
        actions: [
          IconButton( 
            icon: Icon(Icons.search), 
            onPressed: () {},
          ),
          IconButton( 
            icon: Icon(Icons.home), 
            onPressed: () {},
          ), 
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tu presionou este botao esta quantidade de veces:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
