import 'package:flutter/material.dart';
import 'package:flutter_widgets/WidgetDetail.dart';

class DetailContainer extends DetailWidget {
  @override
  String getTitle() {
    return "Container";
  }

  @override
  Widget buildBody(BuildContext context) {
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
  Widget buildBody(BuildContext context) {
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
  Widget buildBody(BuildContext context) {
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
  Widget buildBody(BuildContext context) {
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

class DetailMediaQuery extends DetailWidget {
  @override
  String getTitle() {
    return "MediaQuery";
  }

  @override
  Widget buildBody(BuildContext context) {
    var data = MediaQuery.of(context);
    var size = data.size;
    if (size.height / size.width >= 1) {
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blue[100],
              width: 240,
              height: 240,
              child: Text("size.height / size.width >= 1"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.blue[100],
                width: 240,
                height: 240,
                child: Text("width: ${size.width} , height: ${size.height}")),
          ),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.green[100],
              width: 240,
              height: 240,
              child: Text("size.height / size.width < 1"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.green[100],
                width: 240,
                height: 240,
                child: Text("width: ${size.width} , height: ${size.height}")),
          ),
        ],
      );
    }
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
    var data = MediaQuery.of(context);
    var size = data.size;
    if (size.height / size.width >= 1) {
      // some layouts for portrait
    } else {
      // some layouts for landscape
    }
    ''';
  }
}

class DetailRow extends DetailWidget {
  @override
  String getTitle() {
    return "Row";
  }

  @override
  Widget buildBody(BuildContext context) {
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
  Widget buildBody(BuildContext context) {
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
  Widget buildBody(BuildContext context) {
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
  Widget buildBody(BuildContext context) {
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

class DetailGridView extends DetailWidget {
  @override
  String getTitle() {
    return "GridView";
  }

  @override
  Widget buildBody(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: <Widget>[
        Container(
          child: const Text("child1"),
          color: Colors.teal[100],
        ),
        Container(
          child: const Text("child2"),
          color: Colors.teal[200],
        ),
        Container(
          child: const Text("child3"),
          color: Colors.teal[300],
        ),
        Container(
          child: const Text("child4"),
          color: Colors.teal[400],
        ),
        Container(
          child: const Text("child5"),
          color: Colors.teal[500],
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailCustomScrollView(),
                ),
              );
            },
            child: const Text("see. jump to CustomScrollView"),
          ),
          color: Colors.teal[600],
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
    GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: <Widget>[
        Container(
          child: const Text("child1"),
          color: Colors.teal[100],
        ),
        Container(
          child: const Text("child2"),
          color: Colors.teal[200],
        ),
        Container(
          child: const Text("child3"),
          color: Colors.teal[300],
        ),
        Container(
          child: const Text("child4"),
          color: Colors.teal[400],
        ),
        Container(
          child: const Text("child5"),
          color: Colors.teal[500],
        ),
      ],
    )
    ''';
  }
}

class DetailCustomScrollView extends DetailWidget {
  @override
  String getTitle() {
    return "CustomScrollView";
  }

  @override
  Widget buildBody(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: <Widget>[
              Container(
                child: const Text("child1"),
                color: Colors.teal[100],
              ),
              Container(
                child: const Text("child2"),
                color: Colors.teal[200],
              ),
              Container(
                child: const Text("child3"),
                color: Colors.teal[300],
              ),
              Container(
                child: const Text("child4"),
                color: Colors.teal[400],
              ),
              Container(
                child: const Text("child5"),
                color: Colors.teal[500],
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailGridView(),
                      ),
                    );
                  },
                  child: const Text("see. jump to GridView"),
                ),
                color: Colors.teal[600],
              ),
            ],
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
    CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: <Widget>[
              Container(
                child: const Text("child1"),
                color: Colors.teal[100],
              ),
              Container(
                child: const Text("child2"),
                color: Colors.teal[200],
              ),
              Container(
                child: const Text("child3"),
                color: Colors.teal[300],
              ),
              Container(
                child: const Text("child4"),
                color: Colors.teal[400],
              ),
              Container(
                child: const Text("child5"),
                color: Colors.teal[500],
              ),
            ],
          ),
        ),
      ],
    )
    ''';
  }
}

class DetailImage extends DetailWidget {
  @override
  String getTitle() {
    return "Image";
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ),
        Container(
          child: Image.asset(
              'android/app/src/main/res/mipmap-hdpi/ic_launcher.png'),
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
    Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    
    Image.asset('android/app/src/main/res/mipmap-hdpi/ic_launcher.png'),
    ''';
  }
}

class DetailFlutterLogo extends DetailWidget {
  @override
  String getTitle() {
    return "FlutterLogo";
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        FlutterLogo(size: 16.0 * 4),
        FlutterLogo(size: 16.0 * 5),
        FlutterLogo(size: 16.0 * 6),
        FlutterLogo(size: 16.0 * 7),
        FlutterLogo(size: 16.0 * 8),
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
    FlutterLogo(size: 48.0)
    ''';
  }
}
