import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'model/burc.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({
    required this.secilenBurc,
    super.key,
  });

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    super.initState();
    appBarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 400,
              pinned: true,
              backgroundColor: appBarRengi,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  widget.secilenBurc.burcadi + " Burcunun Özellikleri",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 41, 39, 39)),
                ),
                centerTitle: true,
                background: Image.asset(
                  'images/' + widget.secilenBurc.buyukResim,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    widget.secilenBurc.burcDetay,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void appBarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.secilenBurc.buyukResim}'));
    appBarRengi = _generator.dominantColor!.color;
    setState(() {});
  }
}
