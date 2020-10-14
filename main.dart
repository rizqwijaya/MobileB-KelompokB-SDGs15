import 'package:flutter/material.dart'; //import library

void main() { 
  runApp(MyApp());  //bagian main
}

class MyApp extends StatelessWidget {     //static widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 1',   //judul aplikasi untuk recent app  
      debugShowCheckedModeBanner: false, //menghilangkan tulisan debug

      theme: ThemeData( //tema widget
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Scaffold(  //widget untuk dasar desain
        appBar: AppBar( 
          title: Text('Kelompok B - SDGs 15'),    //bikin judul di appbar
        ),
        body: Center(   //memposisikan widget body ke tengah
        child: Column(  //widgetlayout yang dapat berisi beberapa layout dalam vertikal
          mainAxisAlignment: MainAxisAlignment.center, //ngatur vertikal (disini diaturnya ke tengah)
          children: <Widget>[ //nampung widget
            Text( //widget text
              'Chulsum Alimah Nahdah - 182410103084', 
            ),
            Text( //widget text
              'Mohammad Abuemas Rizq Wijaya - 182410103087'
            ),
            Text( //widget text
              'Fajriah Ikawati Valentina 182410103013'
            ),
            Text( //widget text
              'Yunand Nidzar Rifazmi Alihakim 182410103061'
            ),
          ],
        ),
      ),
      ) 
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelompok B - SDGs 5'),    //mereturn nama di widget untuk bikin judul dil appbar
      ),
      body: Center(   //isi (body) 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Chulsum Alimah Nahdah - 182410103084',
            ),
            Text(
              'Mohammad Abuemas Rizq Wijaya - 182410103087'
            ),
            Text(
              'Fajriah Ikawati Valentina 182410103013'
            ),
            Text(
              'Yunand Nidzar Rifazmi Alihakim 182410103061'
            ),
          ],
        ),
      ),
    );
  }
}

