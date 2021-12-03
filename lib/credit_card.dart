import 'package:credit_card_project/widget/card.dart';
import 'package:flutter/material.dart';

class CredtCatd extends StatelessWidget {
  const CredtCatd(
      {Key key,
      this.cardNumber,
      this.color,
      this.cardExpiration,
      this.cardHolder})
      : super(key: key);
  final String cardNumber;
  final Color color;
  final String cardExpiration;
  final String cardHolder;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Credit card'),
        ),
        body: Container(
          child: buildCreditCard(
              color: color,
              cardExpiration: cardExpiration,
              cardHolder: cardHolder,
              cardNumber: cardNumber),
        ));
  }
}
