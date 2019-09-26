import 'package:flutter/material.dart';
import 'package:flutter_widgets/WidgetDetail.dart';

class DetailContainer extends DetailWidget {
  @override
  String getTitle() {
    return "Container";
  }

  @override
  Widget buildBody() {
    return Container(
      color: Colors.blue[100],
      width: 240,
      height: 240,
      margin: EdgeInsets.all(16.0),
    );
  }

  @override
  Widget buildCode() {
    return Container(
      margin: const EdgeInsets.all(48.0),
      child: Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    return Container(
      color: Colors.blue[100],
      width: 240,
      height: 240,
      margin: EdgeInsets.all(16.0),
    );''';
  }
}

class DetailCenter extends DetailWidget {
  @override
  String getTitle() {
    return "Center";
  }

  @override
  Widget buildBody() {
    return Center(
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        margin: EdgeInsets.all(16.0),
      ),
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(48.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    Center(
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        margin: EdgeInsets.all(16.0),
      ),
    );''';
  }
}

class DetailAlign extends DetailWidget {
  @override
  String getTitle() {
    return "Align";
  }

  @override
  Widget buildBody() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        margin: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FlutterLogo(
            size: 48.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    Align(
      alignment: Alignment.topRight,
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        margin: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FlutterLogo(
            size: 48.0,
          ),
        ),
      ),
    );
    ''';
  }
}

class DetailPadding extends DetailWidget {
  @override
  String getTitle() {
    return "Padding";
  }

  @override
  Widget buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Container(
            color: Colors.blue[200],
            width: 48,
            height: 48,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(48.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Container(
            color: Colors.blue[200],
            width: 48,
            height: 48,
          ),
        ),
      ),
    );''';
  }
}

class DetailRow extends DetailWidget {
  @override
  String getTitle() {
    return "Row";
  }

  @override
  Widget buildBody() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('default: MainAxisAlignment.start'),
          ],
        ),
        Row(
          children: <Widget>[
            FlutterLogo(
              size: 48,
            ),
            FlutterLogo(
              size: 48,
            ),
            FlutterLogo(
              size: 48,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text('MainAxisAlignment.spaceEvenly'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlutterLogo(
              size: 48,
            ),
            FlutterLogo(
              size: 48,
            ),
            FlutterLogo(
              size: 48,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(48.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlutterLogo(
          size: 48,
        ),
        FlutterLogo(
          size: 48,
        ),
        FlutterLogo(
          size: 48,
        ),
      ],
    ),''';
  }
}

class DetailColumn extends DetailWidget {
  @override
  String getTitle() {
    return "Column";
  }

  @override
  Widget buildBody() {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("default: start"),
              Text("center"),
              Text("spaceEvenly"),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlutterLogo(
                      size: 48,
                    ),
                    FlutterLogo(
                      size: 48,
                    ),
                    FlutterLogo(
                      size: 48,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(
                      size: 48,
                    ),
                    FlutterLogo(
                      size: 48,
                    ),
                    FlutterLogo(
                      size: 48,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlutterLogo(
                      size: 48,
                    ),
                    FlutterLogo(
                      size: 48,
                    ),
                    FlutterLogo(
                      size: 48,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(48.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlutterLogo(
          size: 48,
        ),
        FlutterLogo(
          size: 48,
        ),
        FlutterLogo(
          size: 48,
        ),
      ],
    ),''';
  }
}

class DetailAspectRatio extends DetailWidget {
  @override
  String getTitle() {
    return "AspectRatio";
  }

  @override
  Widget buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: AspectRatio(
          aspectRatio: 9 / 16,
          child: Container(
            color: Colors.blue[100],
            width: 240,
            height: 240,
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Container(
                color: Colors.blue[200],
                width: 48,
                height: 48,
              ),
            ),
          )),
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(48.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    AspectRatio(
      aspectRatio: 9 / 16,
      child: Container(
        color: Colors.blue[100],
        width: 240,
        height: 240,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Container(
            color: Colors.blue[200],
            width: 48,
            height: 48,
          ),
        ),
      ))
    ''';
  }
}

class DetailExpanded extends DetailWidget {
  @override
  String getTitle() {
    return "Expanded";
  }

  @override
  Widget buildBody() {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text("container"),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 100,
              child: Text("expanded"),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text("container"),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildCode() {
    return new Container(
      margin: const EdgeInsets.all(48.0),
      child: new Text(getCode()),
    );
  }

  @override
  String getCode() {
    return '''
    Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: Text("container"),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            width: 100,
            child: Text("expanded"),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: Text("container"),
        ),
      ],
    )
    ''';
  }
}
