import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';

void main(){//ilk main metodunu arar
  runApp(MyApp());//uygulamayı başlatacak ilkj widget
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "burc Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",

      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name!.split("/"); //  / burcDetay/1
        if(pathElemanlari[1]== 'burcDetay' ){
          return MaterialPageRoute(builder: (context)=> BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

    );
  }









}