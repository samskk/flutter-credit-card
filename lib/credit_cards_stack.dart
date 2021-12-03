import 'package:credit_card_project/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class CreditCsrdsStack extends StatelessWidget {
  CreditCsrdsStack({Key key, this.title}) : super(key: key);
  final String title;

  final List<Widget> fancyCards = [
    buildCreditCardClick(
        color: Color(0xFF090943),
        cardExpiration: "08/2022",
        cardHolder: "HOUSSEM SELMI",
        cardNumber: "3546 7532 XXXX 9742"),
    buildCreditCardClick(
        color: Color(0xFF090943),
        cardExpiration: "08/2022",
        cardHolder: "HOUSSEM SELMI",
        cardNumber: "3546 7532 XXXX 9742")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit cards'),
      ),
      body: StackedCardCarousel(
        items: fancyCards,
      ),
    );
  }
}
