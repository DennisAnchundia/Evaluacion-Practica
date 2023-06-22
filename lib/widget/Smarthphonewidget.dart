import 'package:flutter/material.dart';

import '../model/Smarthphone.dart';

class smartphoneWidget extends StatelessWidget {
    final Smartphone smartphone;
    final Function onTap;
    final Function onSwipe;
    final Function onLongPress;

const smartphoneWidget({
  Key? key,
  required this.smartphone,
  required this.onTap,
  required this.onSwipe,
  required this.onLongPress
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(smartphone.id);
        
      },
      onLongPress: () {
        onLongPress(smartphone.id);
      },
      onTap: (){
        onTap(smartphone);

      },
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 10,
                decoration:  BoxDecoration(
                  color:  smartphone.read ? Colors.transparent:Color.fromARGB(255, 228, 4, 4) ,
                  shape: BoxShape.circle
                  
                ),
              )),
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(smartphone.modelo.toString()),
                    Text(smartphone.precio.toString())
                  ],
                ) )
          ],
        ),
      ),
    );
  }
}