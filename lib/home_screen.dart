import 'package:flutter/material.dart';
import 'constrants.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";

  var answer = "";

  @override
  Widget build(BuildContext context) {
    void equalPress() {
      String finalUserInput = userInput;
      finalUserInput = userInput.replaceAll("x", "*");

      Parser p = Parser();
      Expression expression = p.parse(finalUserInput);
      ContextModel contextModel = ContextModel();

      double evel = expression.evaluate(EvaluationType.REAL, contextModel);

      answer = evel.toString();
    }

    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text("Calculator"),
      // ),
      body: SafeArea(
          child: Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: const TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Text(
                        answer.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: "AC",
                          onPress: () {
                            userInput = "";
                            answer = "";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+/-",
                          onPress: () {
                            userInput += "+/-";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "%",
                          onPress: () {
                            userInput += "%";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "/",
                          color: Colors.orange,
                          onPress: () {
                            userInput += "/";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "7",
                          onPress: () {
                            userInput += "7";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "8",
                          onPress: () {
                            userInput += "8";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "0",
                          onPress: () {
                            userInput += "0";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "x",
                          color: Colors.orange,
                          onPress: () {
                            userInput += "x";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "4",
                          onPress: () {
                            userInput += "4";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "5",
                          onPress: () {
                            userInput += "5";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "6",
                          onPress: () {
                            userInput += "6";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "-",
                          color: Colors.orange,
                          onPress: () {
                            userInput += "-";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "1",
                          onPress: () {
                            userInput += "1";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "2",
                          onPress: () {
                            userInput += "2";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "3",
                          onPress: () {
                            userInput += "3";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+",
                          color: Colors.orange,
                          onPress: () {
                            userInput += "+";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "00",
                          onPress: () {
                            userInput += "00";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: ".",
                          onPress: () {
                            userInput += ".";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "DEL",
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          },
                        ),
                        MyButton(
                          title: "=",
                          color: Colors.orange,
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
