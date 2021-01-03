import 'package:flutter/material.dart';
import 'package:mma/data/percentage.dart';
import 'package:mma/data/percentage_sheet.dart';
import 'package:mma/objects/default_mmc_func.dart';
import 'package:mma/objects/money_management_calculator.dart';
import 'package:mma/widgets/asset_list_widget.dart';

class HomePage extends StatefulWidget{

  final Percentage _commissionPercentage = new Percentage("Commission", 6, 5, 15);
  final Percentage _cashbackPercentage = new Percentage("Cashback", 50, 20, 50);
  final Percentage _savingsPercentage = new Percentage("Savings", 20, 20, 60);
  final Percentage _businessPercentage = new Percentage("Business", 70, 20, 70);
  final Percentage _investmentsPercentage = new Percentage("Investments", 74, 50, 90);

  @override
  State<StatefulWidget> createState() => HomePageState(PercentageSheet(_commissionPercentage, _cashbackPercentage, _savingsPercentage, _businessPercentage, _investmentsPercentage));
}

class HomePageState extends State{

  final TextEditingController _textEditingController = new TextEditingController();

  final PercentageSheet _percentageSheet;
  MoneyManagementCalculator _mma;


  HomePageState(this._percentageSheet);

  @override
  void initState() {
    if(_mma == null) {
      _mma = new MoneyManagementCalculator(_percentageSheet);
      _mma.run(0, DefaultMMCFunc());
    }
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            AssetListWidget(
                _mma.getAssetsList()
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                child: Text("Calculate"),
                onPressed: (){
                  setState(() {
                    _mma.run(double.parse(_textEditingController.text), DefaultMMCFunc());
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}