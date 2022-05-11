import 'package:cartoons_flutter/model/character.dart';
import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/characters_data.dart';
import 'package:cartoons_flutter/widgets/character_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

/*CODIGO AÑADIDO */
final characters = [
    Character(
      name: 'Johan Placios',
      age: 28,
      image: 'images/albert.png',
      jobTitle: 'Flutter Developer',
      stars: 4.3,
    ),
    Character(
      name: 'Gerard Guasch',
      age: 21,
      image: 'images/gerard.png',
      jobTitle: 'Android Developer',
      stars: 3.8,
    ),
    Character(
      name: 'Ignasi Isern',
      age: 33,
      image: 'images/ignasi.png',
      jobTitle: 'iOS Developer',
      stars: 4.9,
    ),
    Character(
      name: 'Meritxell Maimó',
      age: 29,
      image: 'images/meritxell.png',
      jobTitle: 'React Native Developer',
      stars: 4.1,
    ),
    Character(
      name: 'Gaby Mendoza',
      age: 24,
      image: 'images/monica.png',
      jobTitle: 'Web Developer',
      stars: 3.5,
    ),
    Character(
      name: 'Pol Pitarch',
      age: 19,
      image: 'images/pol.png',
      jobTitle: 'UI Designer',
      stars: 2.9,
    ),
    Character(
      name: 'Raquel Reixach',
      age: 35,
      image: 'images/raquel.png',
      jobTitle: 'Backend Developer',
      stars: 3.8,
    ),
    Character(
      name: 'Rebeca Roig',
      age: 31,
      image: 'images/rebeca.png',
      jobTitle: 'Project Manager',
      stars: 4.6,
    ),
    Character(
      name: 'Ricard Ricart',
      age: 22,
      image: 'images/ricard.png',
      jobTitle: 'QA Team Lead',
      stars: 4.0,
    ),
    Character(
      name: 'Sílvia Salom',
      age: 27,
      image: 'images/silvia.png',
      jobTitle: 'DevOps Team Lead',
      stars: 3.9,
    ),
  ];


  void doSomething(Character character) {
    // ignore: avoid_print
    print(character.name);
  }
/*CODIGO AÑADIDO */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Cartonery'),
      ),
      body: ListView(
        // TODO 1: Verifique la documentación oficial de ListView de Flutter.
        // Necesita pasar alguna propiedad a sus hijos.
        // Esta propiedad va a reemplazar el elemento null actual.
        // Si revisa el archivo characters_data.dart
        // encontrará que tiene acceso a una constante llamada "characters" de tipo "list of Character".
        // Usa aquí algún código funcional para convertir esa lista de datos en una lista de widgets que tienes
        // creado en TODO 0, revise el siguiente recurso: https://www.youtube.com/watch?v=R8rmfD9Y5-c
        // y tambien revisa el siguiente ejemplo: https://gitlab.com/aplicaciones-moviles-ii/flutter-ejercicio-5-listview-canciones.git
        // especialmente donde está la construcción del ListView.
        children: characters
            .map((character) =>
                CharacterWidget(character: character, onDoubleTap: doSomething))
            .toList(),
      ),
    );
  }
}
