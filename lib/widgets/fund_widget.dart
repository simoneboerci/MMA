import 'package:flutter/material.dart';
import 'package:mma/data/fund.dart';

class FundWidget extends StatelessWidget{

  final Fund _fund;

  FundWidget(this._fund);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(_fund.getName() + ": ", style: TextStyle(color: Colors.white, fontSize: 20),),
          Text(_fund.getMoney().toStringAsFixed(2) + "€", style: TextStyle(color: Colors.white, fontSize: 20),)
        ],
      ),
    );
  }
}