import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  bool flag = false;

  _click() async {
    setState(() {
      flag = !flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
                duration: Duration(seconds: 3),
                width: flag ? 100 : 50,
                height: flag ? 50 : 100,
                padding: flag ? EdgeInsets.all(0) : EdgeInsets.all(30),
                margin: flag ? EdgeInsets.all(0) : EdgeInsets.all(30),
                transform: flag ? Matrix4.skewX(0) : Matrix4.skewY(0.3),
                color: flag ? Colors.black : Colors.deepPurpleAccent),
            AnimatedSwitcher(
              duration: Duration(seconds: 4),
              child: flag
                  ? Icon(
                      Icons.face_retouching_natural,
                      color: Colors.amberAccent,
                      size: 100,
                    )
                  : Image.network(
                      'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png',
                      width: 100,
                      height: 100,
                    ),
            )
          ],
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(onPressed: _click, child: Icon(Icons.add)),
      ]),
    );
  }
}
