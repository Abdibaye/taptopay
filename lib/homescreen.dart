import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taptopay/giftscreen.dart';
import 'package:taptopay/topup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool textstate = false;
  bool iconSelected = true;
  String balanceText = "****";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _rfidCard(context),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _gift(context),
                          SizedBox(
                            height: 20,
                          ),
                          _topup(context),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _functionButton(context, "Analytics"),
                          SizedBox(
                            height: 20,
                          ),
                          _functionButton(context, "About Us"),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _recentHistory(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rfidCard(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          //Background card
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 58, 123, 213), // Start color
                      Color.fromARGB(255, 0, 210, 255), // End color
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  color: Color.fromARGB(255, 58, 123, 213),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ]),
            ),
          ),
          //Top Part of Card Content
          Positioned(
            top: 20,
            left: 20,
            child: Row(children: [
              Text("Balance:"),
              SizedBox(
                width: 10,
              ),
              Text(
                balanceText,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  isSelected: false,
                  onPressed: () {
                    setState(() {
                      balanceText = balanceText == "****" ? "0.00" : "****";
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                    size: 23,
                  ))
            ]),
          ),

          //button part of card
          Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: [
                  Text("02/11/2017"),
                  SizedBox(
                    width: 165,
                  ),
                  Text("Yoseph Belay")
                ],
              ))
        ],
      ),
    );
  }

  Widget _gift(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ]),
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Gift(),
                    ),
                  );
                });
              },
              child: Text("Gift"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _topup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ]),
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TopUpScreen(),
                    ),
                  );
                });
              },
              child: Text("Top Up"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _functionButton(
    BuildContext context,
    String text,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ]),
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TopUpScreen(),
                    ),
                  );
                });
              },
              child: Text(text),
            ),
          ),
        ),
      ],
    );
  }

  Widget _recentHistory(BuildContext context) {
    List<Map<String, String>> history = [
      {"date": "2023-10-01", "price": "\20.00 ETB"},
      {"date": "2023-10-02", "price": "\15.00 ETB"},
      {"date": "2023-10-03", "price": "\30.00 ETB"},
      {"date": "2023-10-03", "price": "\30.00 ETB"},
      {"date": "2023-10-03", "price": "\30.00 ETB"},
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        children: [
          Container(
            child: Text(
              "recent history",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ]),
            height: 330, // Set a fixed height for the scrollable area
            child: SingleChildScrollView(
              child: Column(
                children: history.map((item) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 4.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item["date"]!),
                          Text(item["price"]!),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
