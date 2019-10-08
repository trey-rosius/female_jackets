import 'package:female_jacket/jacket_data.dart';
import 'package:flutter/material.dart';
class JacketDetails extends StatefulWidget {
  JacketDetails({this.jacket});
  final Jacket jacket;
  @override
  _JacketDetailsState createState() => _JacketDetailsState();
}

class _JacketDetailsState extends State<JacketDetails> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,

                    margin: EdgeInsets.all(10),

                    child: InkWell(
                      onTap: ()=>Navigator.of(context).pop(),
                      child: Material(
                        color: Colors.white,
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(30.0),
                        shadowColor: Color(0x802196F3),
                        child: Container(

                            child: Icon(Icons.keyboard_backspace, size: 30.0,color: Colors.black,)),
                      ),
                    ),
                  ),
                  Column(
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

                              child: Image.asset('assets/images/cart.png',width: 30.0,height: 30.0,)),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(

              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300,

                    alignment: Alignment.center,
                    child:  Image.asset('assets/images/white.png'),



                  ),

                  Container(
                    alignment: Alignment.center,
                    child: Hero(tag: widget.jacket.id, child: Image.asset(widget.jacket.asset,)),



                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 50.0,
                      width: 50.0,

                      margin: EdgeInsets.all(10),

                      child: Material(
                        color: Colors.white,
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(30.0),
                        shadowColor: Color(0x802196F3),
                        child: Container(

                            child: Icon(Icons.favorite_border)),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:   Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(widget.jacket.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,letterSpacing: 3),),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Review"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.star,size: 15.0,color: Color(0xFFffb400),),
                            Icon(Icons.star,size: 15.0,color: Color(0xFFffb400),),
                            Icon(Icons.star,size: 15.0,color: Color(0xFFffb400),),
                            Icon(Icons.star,size: 15.0, color: Color(0xFFffb400),),
                            Icon(Icons.star,size: 15.0,),

                          ],
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 20.0,top: 10.0),
              child: Row(
                children: <Widget>[
                  Container(

                    height: 5,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF757def),
                    ),
                  ),
                ],
              ),
            )
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 20.0,top: 10.0),
              child: Text("It is a long established fact that a reader will be distracted "),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 20.0,top: 20.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      alignment: Alignment.center,
                      child: Text("XS",style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      alignment: Alignment.center,
                      child: Text("S",style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF757def),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      alignment: Alignment.center,
                      child: Text("M",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      alignment: Alignment.center,
                      child: Text("L",style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      alignment: Alignment.center,
                      child: Text("XL",style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 20.0,top: 20.0),
              child: Container(
                height: 70.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color(0xFF757def),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Total Amount",style: TextStyle(color: Colors.white),),
                        Text(widget.jacket.price,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFF4f4fec),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        alignment: Alignment.center,
                        child: Text("Add To Cart",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                )
              ),
            ),
          )

        ],
      ),
    );
  }
}
