import 'package:flutter/material.dart';
import 'package:mma/data/fund.dart';

class FundWidget extends StatelessWidget{

  final Fund _fund;

  FundWidget(this._fund);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(_fund.getName()),
          Text(_fund.getMoney().toStringAsFixed(2))
        ],
      ),
    );
  }
}