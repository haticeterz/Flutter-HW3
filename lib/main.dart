import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:odev3/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("en",""),
        Locale("tr","")
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFAEF2D9),
        primarySwatch: Colors.blue,
      ),
      home: const Odev3(),
    );
  }
}

class Odev3 extends StatefulWidget {
  const Odev3({Key? key}) : super(key: key);

  @override
  State<Odev3> createState() => _Odev3State();
}

class _Odev3State extends State<Odev3> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(d!.muzeBaslik,style: TextStyle(color: renk2,fontWeight: FontWeight.bold,fontFamily: "NotoSerifHK",fontSize: 25),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/museum.png",width: ekranGenisligi/1.2,height: 300,),
            Text(d.muzeYazi,
              style: TextStyle(fontSize: 26,color: renk3,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            //const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d.biletFiyat,style: TextStyle(fontSize: 30,color: renk4,fontWeight: FontWeight.bold)),
                TextButton(
                    onPressed: (){},
                    child: Text(d.biletAl,style: TextStyle(fontSize: 26,color: renk5)),
                    style: TextButton.styleFrom(
                        backgroundColor: renk4,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                    ),
                ),
              ],
            ),
            Text(d.muzeTarih,
              style: TextStyle(backgroundColor: renk5,fontSize: 26,color: renk3,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}


