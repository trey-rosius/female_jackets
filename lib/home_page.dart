import 'package:female_jacket/jacket_data.dart';
import 'package:female_jacket/jacket_item.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0Xfff4f4fb),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,

                    margin: EdgeInsets.all(10),

                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Color(0x802196F3),
                      child: Container(

                          child: Icon(Icons.keyboard_backspace, size: 30.0,color: Colors.black,)),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,

                    margin: EdgeInsets.all(10),

                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Color(0x802196F3),
                      child: Container(

                          child: Image.asset('assets/images/cart.png',width: 30.0,height: 30.0,)),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(

              padding: EdgeInsets.only(left:10.0,right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,bottom: 30.0),
                    child: Text("Female Jackets",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,letterSpacing: 3),),
                  ),
              Material(
                color: Colors.white,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color(0x802196F3),
                  child:Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Search Jacket...",style: TextStyle(color: Colors.grey),),
                        Text("Filter",style: TextStyle(color: Color(0XFF4f4fec)),)
                      ],
                    ),
                  )
              )


                ],
              ),
            ),
          ),

          SliverList(

              delegate: SliverChildBuilderDelegate((BuildContext context, int index){

                Jacket jacket = jackets[index];

                return JacketItem(
                  jacket: jacket,

                );

              },
                childCount: jackets.length,
              )
          ),


        ],
      ),
    );
  }
}
