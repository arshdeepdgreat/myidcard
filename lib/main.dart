import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ArshCard(),
  ));
}

class ArshCard extends StatefulWidget {
  @override
  _ArshCardState createState() => _ArshCardState();
}

class _ArshCardState extends State<ArshCard> {

  int level=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("My ID Card"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
          elevation: 0.0,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level++;
          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("images/arshdeep dp.png"),
              radius: 40.0,
            ),
            Divider(
              height: 60.0,
              thickness: 1.5,
              color: Colors.amber,
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Arshdeep Singh",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "Current Flutter Proficiency",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$level'+"%",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.mail,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 10.0,),
                Text(
                  "arshdeepdgreat@gmail.com",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

