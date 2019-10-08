import 'package:female_jacket/jacket_data.dart';
import 'package:female_jacket/jacket_details.dart';
import 'package:flutter/material.dart';
class JacketItem extends StatelessWidget {
  JacketItem({this.jacket});
  final Jacket jacket;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         Container(
          height: 180.0,
          margin: EdgeInsets.only(left:10.0,top: 10.0),

           child: Stack(

                children: <Widget>[
                  Image.asset('assets/images/white.png',width: 150,height: 200,),
                  Positioned(
                    left: 25.0,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => JacketDetails(jacket: jacket,),
                              ));
                        },
                          child: Hero(
                             tag: jacket.id,
                              child: Image.asset(jacket.asset,width: 90,height: 90)))),

                ],

            ),
         ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(jacket.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.star,size: 15.0,color: Color(0xFFffb400),),
                      Icon(Icons.star,size: 15.0,color: Color(0xFFffb400),),
                      Icon(Icons.star,size: 15.0,color: Color(0xFFffb400),),
                      Icon(Icons.star,size: 15.0, ),
                      Icon(Icons.star,size: 15.0,),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 20.0),
                  child: Text(jacket.price,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0XFF4f4fec)),),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
