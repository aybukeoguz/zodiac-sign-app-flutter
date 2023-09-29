import 'package:flutter/material.dart';
import '../burc_item.dart';
import '../data/strings.dart';
import 'burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text(
          'Burçlar Listesi',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ), 
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var KucukResim = Strings.BURC_ADLARI[i].toLowerCase() + ('.png');
      var BuyukResim = Strings.BURC_ADLARI[i].toLowerCase() + '_b.jpg';
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarih, burcDetay, KucukResim, BuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
