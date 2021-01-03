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
          FundWidget(_assetsList.getBonusAccount())
        ],
      ),
    );
  }
}