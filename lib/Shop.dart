import 'package:flutter/material.dart';

import 'Animation.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          FadeAnimation(1, Container(
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     FadeAnimation(1.2,Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FadeAnimation(1.2,IconButton(
                          icon: Icon(Icons.favorite, color: Colors.white,), onPressed: (){},
                        )),
                        FadeAnimation(1.3, IconButton(
                          icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){},
                        )),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(1.5, Text("Our New Products", style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),)),
                          SizedBox(height: 15,),
                          FadeAnimation(1.7,Row(
                            children: <Widget>[
                              Text("View More", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,)
                            ],
                          )), 
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
          FadeAnimation(1.4 ,Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Categories", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("All")
                  ],
                ),
                SizedBox(height: 10,),
                FadeAnimation(1.5,Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      makeCategory(image: 'assets/images/beauty.jpg', title: 'Beauty'),
                      makeCategory(image: 'assets/images/clothes.jpg', title: 'Clothes'),
                      makeCategory(image: 'assets/images/perfume.jpg', title: 'Perfume'),
                      makeCategory(image: 'assets/images/glass.jpg', title: 'Glass'),

                    ],
                  ),
                )),

                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Best Sellings", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("All")
                  ],
                ),
                SizedBox(height: 10,),
                FadeAnimation(1.2, Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      makeBestCategory(image: 'assets/images/tech.jpg', title: 'Tech'),
                      makeBestCategory(image: 'assets/images/watch.jpg', title: 'Watch'),
                      makeBestCategory(image: 'assets/images/perfume.jpg', title: 'Perfume'),
                      makeBestCategory(image: 'assets/images/glass.jpg', title: 'Glass'),
                    ],
                  )
                ))
              ],
            ),
          ))
        ],
        ),
      ),
    );
  }
  Widget makeCategory({image, title}){
    return AspectRatio(
      aspectRatio: 2 / 2.5,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image)
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0),
              ]
            )
          ),
          child: 
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
          ),
        ),
      ),
    );
  }

  Widget makeBestCategory({image, title}){
    return AspectRatio(
      aspectRatio: 2.5 / 2.3,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image)
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0),
              ]
            )
          ),
          child: 
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
          ),
        ),
      ),
    );
  }
}