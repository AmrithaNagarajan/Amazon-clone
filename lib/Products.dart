import 'package:amazon/ProductDetails.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String productName;
  final String brandName;
  final double price;
  final double perlPrice;
  final String productImg;
  const Products({Key key, this.productName, this.brandName, this.price, this.perlPrice,this.productImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height:150,
        width: 150,
        //color: Colors.red,
        padding: EdgeInsets.fromLTRB(20,10,20,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network("$productImg",height: 100,width: 100,),
            Text("$productName",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: Colors.grey[900]),),
            Text("$brandName",textAlign:TextAlign.left ,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,color: Colors.grey[700]),),
            Text("\u{20B9} $price",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text("(\u{20B9} $perlPrice/L)", style: TextStyle(fontSize: 12),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.amber,size: 17,),
                Icon(Icons.star, color: Colors.amber,size: 17,),
                Icon(Icons.star, color: Colors.amber,size: 17,),
                Icon(Icons.star, color: Colors.amber,size: 17,),
                Icon(Icons.star, color: Colors.amber,size: 17,),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductDetails()

        ),
      );
    },
    );
  }
}
