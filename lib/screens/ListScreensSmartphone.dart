import 'dart:math';

import 'package:evaluacion_practica/screens/DetailScreensSmartphone.dart';
import 'package:flutter/material.dart';

import '../model/Smarthphone.dart';
import '../model/backend.dart';
import '../widget/Smarthphonewidget.dart';

class ListScreenSmartPhone extends StatefulWidget {
  const ListScreenSmartPhone({super.key});

  @override
  State<ListScreenSmartPhone> createState() => _ListScreenSmartPhoneState();
}

class _ListScreenSmartPhoneState extends State<ListScreenSmartPhone> {

  var smartphones = Backend().get_Smartphones();

  void markSmartphoneAsRead( int id ){
    Backend().markSmartphoneAsRead(id);
    setState(() {
      smartphones = Backend().get_Smartphones();
    });
  }

  void deleteSmartphone( int id ){
    Backend().deleteSmartphone(id);
    setState(() {
      smartphones = Backend().get_Smartphones()
;    });
  }
void showSmartphoneDetails( Smartphone smartphone){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return DetailSmartphone(smartphone: smartphone);
  },));
  Backend().markSmartphoneAsRead(smartphone.id);
  setState(() {
    smartphones= Backend().get_Smartphones();
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List SmartPhone'),),
      body: ListView.separated(
        itemCount: smartphones.length,
        separatorBuilder: (BuildContext context, int index) =>const Divider(
          color: Colors.black,
          indent: 40.0,
          endIndent: 20.0,
        ) ,
        itemBuilder:( BuildContext context, int index) =>(
          smartphoneWidget(

            smartphone:  smartphones[index],
            onLongPress: markSmartphoneAsRead ,
            onTap: showSmartphoneDetails,
            onSwipe: deleteSmartphone ,
          )),
      ),
    );
    
  }
}