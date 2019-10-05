import 'package:flutter/material.dart';
import 'package:flutter_widgets/WidgetDetail.dart';

class DetailText extends DetailWidget {
  @override
  String getTitle() {
    return "Text";
  }

  @override
  Widget buildBody() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "align center",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "align left",
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "Text ellipsis, hello world",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 100,
              child: Text(
                "Text ellipsis, hello world",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
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
    Row(
      children: <Widget>[
        Expanded(
          child: Text(
            "align left",
            textAlign: TextAlign.left,
          ),
        ),
      ],
    )
    ''';
  }
}

class DetailRichText extends DetailWidget {
  BuildContext _context;

  DetailRichText(BuildContext context) {
    _context = context;
  }

  @override
  String getTitle() {
    return "RichText";
  }

  @override
  Widget buildBody() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: "Hello ",
                  style: DefaultTextStyle.of(_context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: "bold",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " world!"),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: "Hello ",
                  style: DefaultTextStyle.of(_context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: "red parend ",
                        style: TextStyle(color: Colors.red[300]),
                        children: [
                          TextSpan(
                            text: "red child bold",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                    TextSpan(text: " world!"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
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
    RichText(
      text: TextSpan(
        text: "Hello ",
        style: DefaultTextStyle.of(_context).style,
        children: <TextSpan>[
          TextSpan(
              text: "bold",
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: " world!"),
        ],
      ),
    )
    ''';
  }
}
