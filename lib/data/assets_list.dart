import 'package:mma/data/account.dart';
import 'package:mma/data/card.dart';

class AssetsList{

  Card _mainCard;
  Card _personalCard;
  Card _businessCard;

  Account _investmentAccount;
  Account _speculationAccount;
  Account _savingsAccount;
  Account _bonusAccount;

  AssetsList(){
    _mainCard = new Card(name: "Main Card");
    _personalCard = new Card(name: "Personal Card");
    _businessCard = new Card(name: "Business Card");

    _investmentAccount = new Account(name: "Investments Account");
    _speculationAccount = new Account(name: "Speculation Account");
    _savingsAccount = new Account(name: "Savings Account");
    _bonusAccount = new Account(name: "Bonus Account");
  }

  double assetsValue() => _mainCard.getMoney() + _personalCard.getMoney() + _businessCard.getMoney() + _investmentAccount.getMoney() + _speculationAccount.getMoney() + _savingsAccount.getMoney() + _bonusAccount.getMoney();

  Card getMainCard() => _mainCard;
  Card getPersonalCard() => _personalCard;
  Card getBusinessCard() => _businessCard;

  Account getInvestmentAccount() => _investmentAccount;
  Account getSpeculationAccount() => _speculationAccount;
  Account getSavingsAccount() => _savingsAccount;
  Account getBonusAccount() => _bonusAccount;
}