import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{

  final IconData _icon;
  final String _text;
  final Function _onPressed;
  final Color _backgroundColor;
  final Color _textColor;

  const RoundedButton(this._icon, this._text, this._onPressed, this._backgroundColor, this._textColor);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          color: _backgroundColor,
          onPressed: _onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _icon,
                color: _textColor,
              ),
              SizedBox(width: 10,),
              Text(
                _text,
                style: TextStyle(
                  color: _textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}