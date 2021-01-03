import 'package:mma/data/percentage.dart';

class PercentageSheet{

  Percentage _commissionPercentage;
  Percentage _cashbackPercentage;
  Percentage _savingsPercentage;
  Percentage _businessPercentage;
  Percentage _investmentsPercentage;

  PercentageSheet(Percentage commissionPercentage, Percentage cashbackPercentage, Percentage savingsPercentage, Percentage businessPercentage, Percentage investmentsPercentage){
    _commissionPercentage = commissionPercentage;
    _cashbackPercentage = cashbackPercentage;
    _savingsPercentage = savingsPercentage;
    _businessPercentage = businessPercentage;
    _investmentsPercentage = investmentsPercentage;
  }

  Percentage getCommissionPercentage() => _commissionPercentage;
  Percentage getCashbackPercentage() => _cashbackPercentage;
  Percentage getSavingsPercentage() => _savingsPercentage;
  Percentage getBusinessPercentage() => _businessPercentage;
  Percentage getInvestmentsPercentage() => _investmentsPercentage;
}