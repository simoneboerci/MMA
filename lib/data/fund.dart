abstract class Fund{

  String _name;
  String _description;
  double _money;

  Fund(String name, String description, double money){
    _name = name;
    _description = description;
    _money = money;
  }

  String getName() => _name;
  String getDescription() => _description;
  double getMoney() => _money;

  void setMoney(double amount) => _money = amount;
  void addMoney(double amount) => _money += amount;
  void subtractMoney(double amount) => _money -= amount;
}