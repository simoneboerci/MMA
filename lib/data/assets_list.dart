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
    _mainCard = new Card();
    _personalCard = new Card();
    _businessCard = new Card();

    _investmentAccount = new Account();
    _speculationAccount = new Account();
    _savingsAccount = new Account();
    _bonusAccount = new Account();
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