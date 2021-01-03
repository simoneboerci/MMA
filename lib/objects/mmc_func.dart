import 'package:mma/data/assets_list.dart';
import 'package:mma/data/percentage_sheet.dart';

abstract class MMCFunc{
  AssetsList execute(double amount, PercentageSheet percentageSheet);
}