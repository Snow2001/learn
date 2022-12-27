import 'package:flutter/material.dart';
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.3),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for hotels...',
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            //body
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business Hotels', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Airport Hotels', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Resort Hotels', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                        makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                        makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                        makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                        makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.1),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                SizedBox(width: 30,),
                IconButton(
                  onPressed: () {},
                  color: Colors.red,
                  iconSize: 25,
                  icon: Icon(
                    Icons.favorite,
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
