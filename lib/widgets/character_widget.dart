import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  final Function onDoubleTap;

  const CharacterWidget(
      {Key? key, required this.character, required this.onDoubleTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))

    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromARGB(255, 204, 245, 0)),
        color: Colors.white10,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),

        // 1 - Column is actually "main" widget in this build() method. We want to show
        // two strings and use a Column for that. Nothing new here, nothing fancy.
        child: Row(
          children: [
            Image.asset(
              character.image,
              height: 150,
            ),
            Container(
              //alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(character.name,
                      textScaleFactor: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Color.fromARGB(255, 13, 38, 97))),
                  Container(
                      child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color.fromARGB(255, 252, 0, 0)),
                              color: Colors.lightGreen,
                              shape: BoxShape.circle),
                          child: Row(
                            children: [
                              Text(character.stars.toString(),
                                  textScaleFactor: 1.25,
                                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)))
                            ],
                          )),
                      Text(character.jobTitle,
                          textScaleFactor: 1.25,
                          style: TextStyle(color: Color.fromARGB(255, 0, 255, 9)))
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
