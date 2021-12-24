import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
          const CircleAvatar(backgroundImage:AssetImage('lib/img/profile.jpg')  ,radius: 60,),
            const Padding(
              padding: EdgeInsets.only(top : 10.0),
              child: Text('Yılmaz Yağız Dokumacı',
              style: TextStyle(
                fontFamily: 'Indie Flower',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: SizedBox(
                width: 320,
                height: 40,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: const [
                      Icon(Icons.email,),
                      Padding(
                        padding: EdgeInsets.only(left : 10.0),
                        child: Text('dokumaciyagiz@gmail.com',
                        style: TextStyle(
                          fontSize: 18
                        ),),
                      )
                    ],),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: SizedBox(
                width: 320,
                height: 40,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: const [
                      Icon(Icons.web,),
                      Padding(
                        padding: EdgeInsets.only(left : 10.0),
                        child: Text('www.yagizdokumaci.com',
                          style: TextStyle(
                              fontSize: 18
                          ),),
                      )
                    ],),
                  ),
                ),
              ),
            ),
        ],),
      ),
    );
  }
}
