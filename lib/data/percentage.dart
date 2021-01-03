class Percentage{

  String _name;
  double _value;
  double _minValue;
  double _maxValue;

  Percentage(String name, double defaultValue, double minValue, double maxValue){
    _name = name;
    _value = defaultValue;
    _minValue = minValue;
    _maxValue = maxValue;

    _clampValue();
  }

  void _clampValue(){
    if(_value < _minValue)
      _value = _minValue;
    else if(_value > _maxValue)
      _value = _maxValue;
  }

  //Getters

  String getName() => _name;

  double getValue() => _value;
  double getMinValue() => _minValue;
  double getMaxValue() => _maxValue;

  //Setters

  void setName(String name){
    _name = name;
  }

  void setValue(double value){
    _value = value;
    _clampValue();
  }
}