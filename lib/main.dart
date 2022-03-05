import 'package:stateful_widget/data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Recipe());

class Recipe extends StatefulWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  String input = "";
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final url = 'https://images.app.goo.gl/3WAmtHEWEA7Dcs9r7';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'About Last Bite \n Since 2022',
              style: TextStyle(color: Color.fromARGB(255, 226, 222, 222)),
            ),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("bg11.jpeg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 30,
                ),
                child: TextField(
                  controller: myController,
                  decoration: const InputDecoration(labelText: "Enter a snack"),
                ),
              ),
              const SizedBox(height: 20),
              Text(teamsRank[input]!),
              ElevatedButton(
                child: const Text("Here's the Recipe!"),
                onPressed: () {
                  setState(() {
                    input = myController.text;
                  });
                  myController.clear();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
