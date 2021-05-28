import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';


class BurcDetay extends StatelessWidget {

  int gelenIndex;

  BurcDetay(this.gelenIndex);



  @override
  Widget build(BuildContext context) {

    Burc secilenBurc=BurcListesi.tumburclar[gelenIndex];

    return Scaffold(

      primary: false,
      body: CustomScrollView(
        primary: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi+" Burcu ve özellikleri"),
            ),

          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 16,color: Colors.black)
                ),
            ),
            ),
          )

        ],
      ),

    );

  }
}
