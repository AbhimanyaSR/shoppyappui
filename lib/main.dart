import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "image":
            "https://images.pexels.com/photos/699501/pexels-photo-699501.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 1",
        "price": "\$100"
      },
      {
        "image":
            "https://images.pexels.com/photos/1441530/pexels-photo-1441530.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 2",
        "price": "\$150"
      },
      {
        "image":
            "https://images.pexels.com/photos/563237/pexels-photo-563237.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 3",
        "price": "\$200"
      },
      {
        "image":
            "https://images.pexels.com/photos/374016/pexels-photo-374016.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 4",
        "price": "\$120"
      },
      {
        "image":
            "https://images.pexels.com/photos/385998/pexels-photo-385998.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 5",
        "price": "\$180"
      },
      {
        "image":
            "https://images.pexels.com/photos/1933555/pexels-photo-1933555.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 6",
        "price": "\$130"
      },
      {
        "image":
            "https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 7",
        "price": "\$140"
      },
      {
        "image":
            "https://images.pexels.com/photos/1767429/pexels-photo-1767429.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 8",
        "price": "\$210"
      },
      {
        "image":
            "https://images.pexels.com/photos/3854324/pexels-photo-3854324.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 9",
        "price": "\$160"
      },
      {
        "image":
            "https://images.pexels.com/photos/256318/pexels-photo-256318.jpeg?auto=compress&cs=tinysrgb&w=400",
        "name": "Product 10",
        "price": "\$190"
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Discover",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: [
            Stack(
              children: [
                Icon(
                  Icons.notification_add_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Positioned(
                  right: 0,
                  top: 2,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 10,
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 5),
                          Text("search"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text("Men"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text("Women"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text("Kids"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: myDataList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        myDataList[index]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: CircleAvatar(
                                  backgroundColor:
                                      Colors.white.withOpacity(0.7),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          myDataList[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          myDataList[index]['price'],
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
