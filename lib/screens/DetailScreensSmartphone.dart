import 'package:evaluacion_practica/model/Smarthphone.dart';
import 'package:flutter/material.dart';

class DetailSmartphone extends StatelessWidget {
  final Smartphone smartphone;
  const DetailSmartphone({super.key, required Smartphone this.smartphone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Smartphone')),
      body: Container(
        padding: EdgeInsetsDirectional.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(smartphone.id.toString()),
            const SizedBox(
              height: 20,
            ),
            Text(smartphone.modelo),
            Text(smartphone.descripcion.toString().substring(0, 10)),
            Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(smartphone.color)
          ],
        ),
      ),
    );
  }
}
