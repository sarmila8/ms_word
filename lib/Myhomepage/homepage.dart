import 'package:flutter/material.dart';

import '../data/data.dart';
import '../screens/aboutpage.dart';

class Homepage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text("Ms Word Guide", style: TextStyle(color: Colors.black54, fontSize: 30.0, ),),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return Aboutpage();
                  }

                ),
                );
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Ms Word Shortcuts Guide"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.info_outline),
          iconSize: 26.0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return Aboutpage();
              },
            ) );
          },
        ),
      ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index ) {
          return Divider(
            thickness: 2.0,
          );
          
        },
        itemCount: data.length,
        itemBuilder: (context, index) {
          return  ListTile(
            leading: CircleAvatar(
              radius: 22.0,
              backgroundColor:Colors.tealAccent ,
              child: Text("${index + 1}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              ),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );
        }

      ),
    );
  }
}
