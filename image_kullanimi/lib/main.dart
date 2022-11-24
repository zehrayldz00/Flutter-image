import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Image Kullanımı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resimAdi = "downton-abbey-izle.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              /*Image.asset("resimler/$resimAdi"),
              ElevatedButton(
                child:Text("Resim 1"),
                onPressed:(){
                  setState(() {
                    resimAdi = "3.jfif";
                  });
                } ,
              ),
              ElevatedButton(
                child:Text("Resim 2"),
                onPressed:(){
                  setState(() {
                    resimAdi = "4.jfif";
                  });
                } ,
              ),*/
      
              FadeInImage.assetNetwork(
                placeholder: "resimler/3.jfif",
                image :"https://www.hdfilmcehennemi.life/uploads/poster/$resimAdi"
      
              ),
      
              ElevatedButton( 
                child:Text("Resim1"),
                onPressed: (){
                  setState(() {
                    resimAdi = "downton-abbey-izle.jpg";
                  });
                },),
                ElevatedButton( 
                child:Text("Resim2"),
                onPressed: (){
                  setState(() {
                    resimAdi = "under-wraps-2.jpg";
                  });
                },)
      
            ],
          ),
        ),
      ),
      
    );
  }
}
