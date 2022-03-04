import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Assignment 2',
      home: HomeScreen(title: '   Dollars to Rupees'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String input = "Hello User !!\nPlease Input your Amount in Dollar\$";
  var tmp = 0;

  void setValue() {
    tmp *= 75;
    setState(() {
      input = tmp != 0
          ? "The corresponding value of your amount in Indian Currency is $tmp Rs ."
          : "Hello User !!\nPlease Input your Amount in Dollar\$";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff329CEE),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            "   Dollar \(\$) -> Rupees (₹)",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontStyle: FontStyle.italic,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset('images/tv3.jpg'),
            SizedBox(
              height: 10,
            ),
            Text(
              input,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                // onSubmitted: (value){
                //   tmp=int.parse(value);
                //   tmp*=75;
                //   setState(() {
                //     input=tmp!=0?"The converted value of your fund in Rs is $tmp ." : "Hello User !!\nPlease Input your Amount in Dollar\$";
                //   });
                // },
                onChanged: (value) {
                  tmp = int.parse(value);
                },
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setValue();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:Text(
                        "Thank you for using this app",
                      ),

                  ),
                  );
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shadowColor: Colors.black,
                  // textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Created by 2020BTEIT00015',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
