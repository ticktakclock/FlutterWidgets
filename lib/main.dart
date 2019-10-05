import 'package:flutter/material.dart';
import 'package:flutter_widgets/layouts/text.dart';
import 'WidgetDetail.dart';
import 'layouts/layouts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Study Flutter Widgets')),
        body: MyHomePage(),
//        floatingActionButton: new FloatingActionButton(
//          onPressed: null,
//          child: Icon(Icons.add),
//        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  _onTap(DetailWidget detail) {
    print(detail.getTitle());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => detail,
      ),
    );
  }

  Widget _buildRow(DetailWidget detail) {
    return ListTile(
      title: Text(detail.getTitle()),
      onTap: () {
        _onTap(detail);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<DetailWidget> _messages = [
      DetailContainer(),
      DetailCenter(),
      DetailAlign(),
      DetailPadding(),
      DetailRow(),
      DetailColumn(),
      DetailAspectRatio(),
      DetailExpanded(),
      DetailGridView(context),
      DetailCustomScrollView(context),
      DetailText(),
      DetailRichText(context),
    ];
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemBuilder: (_, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        return _buildRow(_messages[index]);
      },
      itemCount: _messages.length * 2,
    );
  }
}
