import 'package:flutter/material.dart';
import 'package:pricelive/homepage.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var firstController = TextEditingController();
  var secondController = TextEditingController();
  var thirdController = TextEditingController();
  var fourthController = TextEditingController();
  FocusNode secondFocusNode = FocusNode();
  FocusNode thirdFocusNode = FocusNode();
  FocusNode fourthFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20),
                    height: height / 5,
                    width: width / 5,
                    child: Image.network(
                        "https://img.freepik.com/free-vector/login-concept-illustration_114360-739.jpg?w=2000")),
                SizedBox(
                  height: height / 40,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verify details',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Enter the OTP sent to your mobile number',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(height: height / 20),
                      // OTP Box Start
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // 1 Start
                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                width: 0.2,
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: firstController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              onChanged: (v) {
                                if (firstController.text != '') {
                                  FocusScope.of(context)
                                      .requestFocus(secondFocusNode);
                                }
                              },
                            ),
                          ),
                          // 1 End
                          // 2 Start
                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                width: 0.2,
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                ),
                              ],
                            ),
                            child: TextField(
                              focusNode: secondFocusNode,
                              controller: secondController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              onChanged: (v) {
                                if (firstController.text != '' &&
                                    secondController.text != '') {
                                  FocusScope.of(context)
                                      .requestFocus(thirdFocusNode);
                                }
                              },
                            ),
                          ),
                          // 2 End
                          // 3 Start
                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(
                                width: 0.2,
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            child: TextField(
                              focusNode: thirdFocusNode,
                              controller: thirdController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              onChanged: (v) {
                                if (firstController.text != '' &&
                                    secondController.text != '' &&
                                    thirdController.text != '') {
                                  FocusScope.of(context)
                                      .requestFocus(fourthFocusNode);
                                }
                              },
                            ),
                          ),
                          // 3 End
                          // 4 Start
                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.0),
                              border: Border.all(width: 0.2, color: Colors.red),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            child: TextField(
                              focusNode: fourthFocusNode,
                              controller: fourthController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // 4 End
                        ],
                      ),
                      // OTP Box End
                      SizedBox(
                        height: height / 30,
                      ),
                      Text(
                        "Resend OTP",
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 83, 175, 149))),
                              onPressed: null,
                              child: Text(
                                "Continue",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
