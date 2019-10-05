import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

//abstract class WidgetDetail {
//  String getTitle();
//
//  Widget buildBody();
//
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: AppBar(
//        title: Text(this.getTitle()),
//      ),
//      body: buildBody(),
//    );
//  }
//}

abstract class DetailWidget extends StatelessWidget {
  @protected
  String getTitle();

  @protected
  Widget buildBody(BuildContext context);

  @protected
  Widget buildCode();

  @protected
  String getCode();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(getTitle()),
      ),
      body: buildBody(context),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                title: Text(getTitle()),
                children: <Widget>[
                  Container(child: buildCode()),
                  IconButton(
                    onPressed: () async {
                      final data = ClipboardData(text: getCode());
                      await Clipboard.setData(data);
                    },
                    icon: Icon(Icons.print),
                  )
                ],
              );
            },
          );
        },
        child: Icon(Icons.code),
      ),
    );
  }
}
