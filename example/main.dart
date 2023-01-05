import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stepper_flutter_form/stepper_flutter_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> item = [];
    item.add("Sign up");
    item.add("Enter Details");
    item.add("Upload documents");
    item.add("Esign");
    item.add("Upload documents");
    item.add("Esign");
    item.add("Upload documents");
    item.add("Esign");

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Stepper Form Demo', items: item, selectedColor: Colors.green, unSelectedColor: Colors.red, inProcess: 5, menuTitleSize: 15,),
    );
  }
}

class MyHomePage extends StatefulWidget {

  int inProcess = 1;
  Color selectedColor;
  Color unSelectedColor;
  final String title;
  List<String> items;
  double menuTitleSize;


  MyHomePage({super.key,
    required this.title,
    required this.items,
    required this.inProcess,
    required this.selectedColor,
    required this.unSelectedColor,
    required this.menuTitleSize});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> item2 = [];
  List<String> item3 = [];
  @override
  void initState() {
    // TODO: implement initState

    item2.add("Basic Detail");
    item2.add("Contact Information");
    item2.add("Address");
    item2.add("Documents");

    item3.add("PAN");
    item3.add("Aadhar");
    item3.add("Bank Detail");
    item3.add("Documents");
    item3.add("eSign");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Scrollable Stepper"),
            SizedBox(height: 10,),
            FormStepper(items: widget.items, selectedColor: Colors.green, unSelectedColor: Colors.red, inProcess: 5, menuTitleSize: 12, height: 80, onItemClicked: (index){
              print('ClickedIndex'+index.toString());
            },),
            SizedBox(height: 20,),
            Text("Stepper with custom colors "),
            SizedBox(height: 10,),
            FormStepper(items: item2, selectedColor: Colors.blue, unSelectedColor: Colors.black, inProcess: 1, menuTitleSize: 12, height: 80, onItemClicked: (index){
              print('ClickedIndex'+index.toString());
            },),
            SizedBox(height: 20,),
            Text("Stepper with custom colors "),
            SizedBox(height: 10,),
            FormStepper(items: item3, selectedColor: Colors.green, unSelectedColor: Colors.pinkAccent, inProcess: 0, menuTitleSize: 12, height: 80, onItemClicked: (index){
              print('ClickedIndex'+index.toString());
            },),
            SizedBox(height: 20,),
            Text("Stepper with custom colors "),
            SizedBox(height: 10,),
            FormStepper(items: item3, selectedColor: Colors.green, unSelectedColor: Colors.pinkAccent, inProcess: 2, menuTitleSize: 12, height: 80, onItemClicked: (index){
              print('ClickedIndex'+index.toString());
            },),

          ],
        ),
      ),
    );
  }
}
