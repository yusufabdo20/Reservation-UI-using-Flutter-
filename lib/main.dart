import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counterAddToCard = 0;
  int countShopping = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Stack(alignment: Alignment.topRight, children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 35, 0),
                child: IconButton(
                  padding: const EdgeInsets.all(5),
                  // margin: EdgeInsets.fromLTRB(0, 0,10, 0),
                  icon: const Icon(Icons.shopping_bag),
                  color: Color.fromRGBO(255, 117, 130, 1),
                  onPressed: () {},
                  iconSize: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 35, 0),
                child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(53, 92, 125, 1),
                    radius: 8,
                    child: Text(
                      '$countShopping',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
              ),
            ]),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 0, 30),
                    alignment: Alignment.topLeft,
                    child: Text("Burger",
                        style: TextStyle(
                            color: Color.fromRGBO(53, 92, 125, 1),
                            fontSize: 35,
                            fontWeight: FontWeight.bold))),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 0, 5),
                      alignment: Alignment.centerLeft,
                      child: Image.asset("assets/images/burger.png",
                          width: 150, height: 150),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Column(children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.add_circle_outline),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(53, 92, 125, 1)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              elevation: MaterialStateProperty.all(10.0),
                            )),
                        Divider(thickness: 15),
                        ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.favorite_border),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(53, 92, 125, 1)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              elevation: MaterialStateProperty.all(10.0),
                            )),
                      ]),
                    )
                  ],
                ),
                Divider(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 30, 0),
                      child: Text("45\$",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              color: Color.fromRGBO(53, 92, 125, 1))),
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: Color.fromRGBO(255, 117, 130, 1)),
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(53, 92, 125, 1)),
                            child: Row(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    elevation: MaterialStateProperty.all(0),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counterAddToCard > 0) {
                                        counterAddToCard -= 1;
                                      }
                                    });
                                  },
                                  child:
                                      Text("-", style: TextStyle(fontSize: 30)),
                                ),
                                Text("$counterAddToCard",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(255, 117, 130, 1))),
                                TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    elevation: MaterialStateProperty.all(0),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      counterAddToCard += 1;
                                    });
                                  },
                                  child:
                                      Text("+", style: TextStyle(fontSize: 25)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  countShopping =counterAddToCard; 
                                });
                              },
                              child: Text("Add to Cart",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "FEATURED",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                              anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                              anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          anotherItems('assets/images/crepe.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Crepe', '20'),
                          anotherItems(
                              'assets/images/fried-chicken.png',
                              Color.fromRGBO(88, 24, 69, 1),
                              'Fried chicken',
                              '20'),
                              anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                              anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          anotherItems('assets/images/Pasta.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pasta', '20'),
                          anotherItems('assets/images/sushi.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Sushi', '20'),
                        anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                              anotherItems('assets/images/pizza.png',
                              Color.fromRGBO(53, 92, 125, 1), 'Pizza', '20'),
                          anotherItems('assets/images/cheese.png',
                              Color.fromRGBO(88, 24, 69, 1), 'Cheese', '20'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  anotherItems(String imagePathOfItem, Color imageBackgroundColor,
      String itemName, String itemPrice) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: imageBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(imagePathOfItem, width: 40, height: 40),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(
                '\$ $itemPrice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.red[300],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
