import 'package:flutter/material.dart';
import 'package:flutter_widgets/WidgetDetail.dart';

class DetailForm extends DetailWidget {
  @override
  String getTitle() {
    return "Form";
  }

  @override
  Widget buildBody(BuildContext context) {
    return DetailFromStateful();
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
    final _formKey = GlobalKey<FormState>();
    Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    )
    ''';
  }
}

class DetailFromStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormState();
}

class _FormState extends State<DetailFromStateful> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
