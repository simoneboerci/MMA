import 'package:mma/data/assets_list.dart';
import 'package:mma/data/percentage_sheet.dart';
import 'package:mma/objects/mmc_func.dart';

class DefaultMMCFunc extends MMCFunc{

  AssetsList _assetsList;
  PercentageSheet _percentageSheet;

  @override
  AssetsList execute(double amount, PercentageSheet percentageSheet) {
    _percentageSheet = percentageSheet;

    _setup(amount);

    _calculateMainCardMoney();
    _calculatePersonalCardMoney();
    _calculateBusinessCardMoney();

    _evaluateResult(amount, _assetsList);

    return _assetsList;
  }

  void _setup(double amount) {
    _assetsList = new AssetsList();

    _assetsList.getMainCard().setMoney(amount);
  }

  void _calculateMainCardMoney(){
    double _commission = _assetsList.getMainCard().getMoney() / 100 * _percentageSheet.getCommissionPercentage().getValue();
    double _cashback = _commission / 100 * _percentageSheet.getCashbackPercentage().getValue();

    _assetsList.getBonusAccount().addMoney(_cashback);
    _assetsList.getMainCard().subtractMoney(_commission);

    _assetsList.getPersonalCard().addMoney(_assetsList.getMainCard().getMoney());
    _assetsList.getMainCard().setMoney(_commission - _cashback);
  }

  void _calculatePersonalCardMoney(){
    double _commission = _assetsList.getPersonalCard().getMoney() / 100 * _percentageSheet.getCommissionPercentage().getValue();
    double _cashback = _commission / 100 * _percentageSheet.getCashbackPercentage().getValue();

    _assetsList.getBonusAccount().addMoney(_cashback);
    _assetsList.getPersonalCard().subtractMoney(_commission);

    double _savings = _assetsList.getPersonalCard().getMoney() / 100 * _percentageSheet.getSavingsPercentage().getValue();
    _assetsList.getPersonalCard().subtractMoney(_savings);
    _assetsList.getSavingsAccount().addMoney(_savings);

    double _business = _assetsList.getPersonalCard().getMoney() / 100 * _percentageSheet.getBusinessPercentage().getValue();
    _assetsList.getPersonalCard().subtractMoney(_business);
    _assetsList.getBusinessCard().addMoney(_business);

    _assetsList.getPersonalCard().addMoney(_commission - _cashback);
  }

  void _calculateBusinessCardMoney(){
    double _commission = _assetsList.getBusinessCard().getMoney() / 100 * _percentageSheet.getCommissionPercentage().getValue();
    double _cashback = _commission / 100 * _percentageSheet.getCashbackPercentage().getValue();

    _assetsList.getBonusAccount().addMoney(_cashback);
    _assetsList.getBusinessCard().subtractMoney(_commission);

    double _investments = _assetsList.getBusinessCard().getMoney() / 100 * _percentageSheet.getInvestmentsPercentage().getValue();
    _assetsList.getBusinessCard().subtractMoney(_investments);
    _assetsList.getInvestmentAccount().addMoney(_investments);

    _assetsList.getSpeculationAccount().addMoney(_assetsList.getBusinessCard().getMoney());
    _assetsList.getBusinessCard().setMoney(_commission - _cashback);
  }

  void _evaluateResult(double amount, AssetsList assetsList) {
    double _leftovers = amount - assetsList.assetsValue();

    if(_leftovers > 0)
      assetsList.getBonusAccount().addMoney(_leftovers);
  }
}