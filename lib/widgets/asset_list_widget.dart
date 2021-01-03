import 'package:flutter/material.dart';
import 'package:mma/data/assets_list.dart';
import 'package:mma/widgets/fund_widget.dart';

class AssetListWidget extends StatelessWidget{
  
  final AssetsList _assetsList;
  
  AssetListWidget(this._assetsList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FundWidget(_assetsList.getMainCard()),
          FundWidget(_assetsList.getPersonalCard()),
          FundWidget(_assetsList.getBusinessCard()),
          FundWidget(_assetsList.getInvestmentAccount()),
          FundWidget(_assetsList.getSpeculationAccount()),
          FundWidget(_assetsList.getSavingsAccount()),
          FundWidget(_assetsList.getBonusAccount()),
          SizedBox(height: 5),
          Divider(color: Colors.white, thickness: 1,),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Asset Value: ", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
              Text(_assetsList.assetsValue().toStringAsFixed(2) + "€", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}