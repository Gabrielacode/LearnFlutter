import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home :MyApp(),
  ));
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
//
//
// }


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ninja ID CARD",
          style: TextStyle(color: Colors.white60),),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,)
      ,
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/images/ninja.jpg"),
                radius: 50.0,
              ),
            ),
            Divider(height: 90.0,
              color: Colors.grey[800],),

            Text("NAME :",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),

            SizedBox(height: 10.0,),
            Text("Gabriel Ukpeh",
              style: TextStyle(
                color: Colors.greenAccent,
                letterSpacing: 2.0,
                fontSize: 28.00,
                fontWeight: FontWeight.bold,

              ),),
            SizedBox(height: 25.0,),

            Text("CURRENT NINJA LEVEL:",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),

            SizedBox(height: 10.0,),
            Text("$ninjalevel",
              style: TextStyle(
                color: Colors.greenAccent,
                letterSpacing: 2.0,
                fontSize: 28.00,
                fontWeight: FontWeight.bold,

              ),),
            SizedBox(height: 25.0,),

            Row(

              children: [
                Icon(Icons.email,color: Colors.green,),
                SizedBox(width: 20.0,),
                Text("gabrielukpehdev@gmail.com",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.teal[200],

                  ),)
              ],
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel+=1;
          });

        },
        splashColor: Colors.deepPurple[200],

        child: Icon(Icons.add),
      )
    );
  }
}






