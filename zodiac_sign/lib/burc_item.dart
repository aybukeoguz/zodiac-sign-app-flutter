import 'package:flutter/material.dart';
import 'burc_detay.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc)));
          },
          leading: Image.asset(
            "images/" + listelenenBurc.kucukResim,
          ),
          title: Text(
            listelenenBurc.burcadi,
            style: myTextStyle.headlineSmall,
          ),
          subtitle: Text(
            listelenenBurc.burcTarihi,
            style: myTextStyle.titleMedium,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: const Color.fromARGB(255, 31, 78, 32),
          ),
        ),
      ),
    );
  }
}
