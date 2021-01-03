import 'package:mma/data/fund.dart';

class Account extends Fund{

  Account({String name = "Account", String description = "A fund for which we do not have a physical card", double money = 0}) : super(name, description, money);
}