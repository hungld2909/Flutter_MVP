import 'package:flutter/material.dart';
import 'package:flutter_demo_mvp/counter/counter_presenter.dart';
import 'package:flutter_demo_mvp/counter/counter_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterWidget();
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> implements CounterView {
  int count = 0;
  CounterPresenter presenter; // tạo countructor để init 1 số thông tin.
  _CounterWidgetState() {
    presenter = new CounterPresenter(); 
    presenter.attachView(this); 
  }
  @override
  void dispose() {
    super.dispose();
    if (presenter != null) {
      presenter.deAttachView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo MVP"),
        ),
        body: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    presenter.decrement();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "$count",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  width: 30,
                ),
                RaisedButton(
                  onPressed: () {
                    presenter.increment();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onDecrement(int value) {
    setState(() { // gán count = value
      count = value;
    });
  }

  @override
  void onIncrement(int value) {
    setState(() {
      count = value;
    });
  }
}
