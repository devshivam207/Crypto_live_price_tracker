import 'package:flutter/material.dart';
import 'package:pricelive/otpscreen.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height / 5,
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                height: height / 5,
                width: width / 5,
                child: Image.network(
                    "https://img.freepik.com/free-vector/login-concept-illustration_114360-739.jpg?w=2000")),
            SizedBox(
              height: height / 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              fillColor: Colors.blue,
                              hintText: "Enter Phone Number",
                              labelText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)))),
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => OTPScreen())));
                      },
                      child: Container(
                        width: width / 6,
                        height: height / 20,
                        margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 83, 175, 149),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                          textScaleFactor: 1,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
