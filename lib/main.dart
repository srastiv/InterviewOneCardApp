import 'package:flutter/material.dart';
import 'box.dart';

void main() {
  runApp(const MyApp());
}

box listnumber = box();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              OuterListViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

class OuterListViewBuilder extends StatelessWidget {
  const OuterListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listnumber.num.length,
        itemBuilder: (BuildContext context, int outerIndex) => Container(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: listnumber.num[outerIndex],
            itemBuilder: (BuildContext context, int index) => SizedBox(
              width: 50,
              child: Card(
                child: Center(
                  child: Text(
                    listnumber.num[outerIndex].toString(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
