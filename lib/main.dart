import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenery NYC',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);
var productImage =
    'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(108.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.arrow_back),
                    SizedBox(height: 8.0),
                    Container(
                      width: 300.0,
                      color: Colors.grey,
                      child: Text(
                        'Fiddle Leaf Fig Topiary',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      '10 Nursery Pot',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            '\$',
                            style: TextStyle(
                                color: greenColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '85',
                          style: TextStyle(
                              color: greenColor,
                              fontSize: 52.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                          backgroundColor: greenColor,
                          child: Icon(
                            Icons.shopping_cart,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen()));
                          },
                        ),
                        Container(
                          width: 200.0,
                          child: Image.network(
                            productImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text(
                    'Planting',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '250',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'ml',
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'water',
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                          color: darkGreenColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '250',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'ml',
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'water',
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greenery'),
      ),
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Greenery NYC',
                  style: TextStyle(color: Colors.white54, letterSpacing: 1.1),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  width: 200.0,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 42.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                itemRow(Icons.star, 'water', 'every 7 days'),
                SizedBox(
                  height: 16,
                ),
                itemRow(Icons.ac_unit, 'water', 'every 7 days'),
                SizedBox(
                  height: 16,
                ),
                itemRow(Icons.straighten, 'water', 'every 7 days'),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    bottomLeft: Radius.circular(32),
                  )),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white54,
                    size: 16,
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    'Delivery Information',
                    style: TextStyle(fontSize: 22.0, color: Colors.white54),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    bottomLeft: Radius.circular(32),
                  )),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white54,
                    size: 16,
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    'Return Policy',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 90,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white54,
                  ),
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white54,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Add To Cart'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white54,
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white54),
        ),
      ],
    );
  }
}
