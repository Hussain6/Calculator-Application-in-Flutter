import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var output = "";
  Widget btn(var tex) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            if (tex == "clear") {
              output = "";
            } else if (tex == "=") {
              Parser p = Parser();
              Expression e = p.parse(output);
              ContextModel c = ContextModel();
              double evaluation = e.evaluate(EvaluationType.REAL, c);
              output = evaluation.toString();
            } else if (output == "Error") {
              output = tex;
            } else {
              output += tex;
            }
          });
        },
        child: Text(
          tex,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                output,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("1")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("2")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("3")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("4")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("5")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("6")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("7")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("8")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("9")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("0")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("+")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("-")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("*")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("/")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("clear")),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.24,
                    child: btn("=")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
