import 'package:mma/data/assets_list.dart';
import 'package:mma/data/percentage_sheet.dart';
import 'package:mma/objects/mmc_func.dart';

class MoneyManagementCalculator{

  AssetsList _assetsList;
  PercentageSheet _percentageSheet;

  MoneyManagementCalculator(PercentageSheet percentageSheet){
    _percentageSheet = percentageSheet;
  }

  void run(double amount, MMCFunc mmcFunc){
    _assetsList = mmcFunc.execute(amount, _percentageSheet);
  }

  AssetsList getAssetsList() => _assetsList;
}