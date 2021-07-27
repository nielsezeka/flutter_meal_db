import 'package:flutter/material.dart';

class BarInfoItem extends StatefulWidget {
  const BarInfoItem({Key? key}) : super(key: key);

  @override
  _BarInfoItemState createState() => _BarInfoItemState();
}

class _BarInfoItemState extends State<BarInfoItem> {
  @override
  Widget build(BuildContext context) {
    final fPrimaryColor = Theme.of(context).primaryColor;
    final sPrimaryColor = Theme.of(context).accentColor;
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    return Container();
  }
}
