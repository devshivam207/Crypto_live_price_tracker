import 'package:flutter/material.dart';
import 'package:pricelive/buttons.dart';
import 'package:pricelive/firstpage.dart';
import 'package:pricelive/profilepage.dart';
import 'package:pricelive/repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Cryto',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Stocks',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: Profile',
  //     style: optionStyle,
  //   ),
  // ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Wallet Balance",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$ 95.6",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.wallet,
                    color: Colors.white,
                  )),
            ],
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 2,
            color: Colors.white,
          ),
          Container(
            color: Color.fromARGB(255, 6, 9, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(text: "Coin", active: true),
                    MyButton(text: "Deposit", active: false),
                    MyButton(text: "Withdraw", active: false),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: FirstPage(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money_outlined,
            ),
            label: 'Cryto',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                child: Icon(Icons.account_circle_rounded)),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
