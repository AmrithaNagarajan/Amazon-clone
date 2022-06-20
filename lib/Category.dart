import 'package:amazon/Essentials.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final IconData catIcon;
  final String catText;
  final Color catColor;
  const Category({Key key, this.catIcon, this.catText, this.catColor}) : super(key: key);
  //Category(this.catColor,this.catIcon, this.catText);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child:Container(
          width: 70,
          height:100,
          //padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                CircleAvatar(
                    backgroundColor: catColor,
                    radius: 30,
                    child:Icon(catIcon,size:30,color: Colors.grey[500]),
                ),
                Padding(padding:EdgeInsets.fromLTRB(3, 6, 3, 3),
                child:Text("$catText",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                ),
              ],
          ),
        ),
      onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Essentials()),
      );
    },
    );
  }
}


