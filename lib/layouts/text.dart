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
