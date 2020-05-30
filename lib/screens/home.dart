import 'package:epay/components/cardModels/choose_card_model.dart';
import 'package:epay/components/cards.dart';
import 'package:epay/screens/choose_card.dart';
import 'package:epay/utils/util.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CardModel cardmodel = CardModel();
  String selectedCard = 'Ecobank';

  List<DropdownMenuItem> getDRopDownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String card in cardsList) {
      var newItem = DropdownMenuItem(child: Text(card), value: card);
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  var color;
  var cardNumber;
  var cardExpiry;

  void getCardModel() {
    setState(() {
      cardNumber = cardmodel.getCardNumber(selectedCard);
      color = cardmodel.getColor(selectedCard);
      cardExpiry = cardmodel.getCardExpiry(selectedCard);
    });
  }

  @override
  Widget build(BuildContext context) {
    getCardModel();
    double size = 10;
    var card;
    return Scaffold(
      backgroundColor: UIColors.bgcolor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: screenWidth(context, 1),
              height: screenWidth(context, 0.20),
              color: UIColors.color2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back_ios,
                              color: UIColors.color5,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'Back',
                              style: TextStyle(color: UIColors.color5),
                            ),
                            Spacer(),
                            Text(
                              'Mobile money',
                              style: TextStyle(
                                color: UIColors.color5,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 50,
                          left: 8,
                          child: Container(
                            height: screenWidth(context, 0.20),
                            width: screenWidth(context, 0.5),
                            decoration: BoxDecoration(
                              color: UIColors.color5,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[200],
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/mike.jpeg'),
                                      ),
                                      SizedBox(
                                        width: screenWidth(context, 0.03),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          RichText(
                                            text: TextSpan(
                                              text: 'Asamoah Michael ',
                                              style: TextStyle(
                                                color: UIColors.color4,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'received',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: screenHeight(
                                              context,
                                              0.01,
                                            ),
                                          ),
                                          Text(
                                            'GHC200',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: screenHeight(
                                              context,
                                              0.01,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/images/logo.png',
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(
                                                width:
                                                    screenWidth(context, 0.01),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: 'MOMO ',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '0548971277',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 80, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: screenHeight(context, 0.50),
                    width: screenWidth(context, 1),
                    color: UIColors.color5,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Pay with'),
                          Spacer(),
                          Container(
                            width: screenWidth(context, 1),
                            height: screenHeight(context, 0.07),
                            color: UIColors.bgcolor,
                            child: DropdownButtonFormField(
                              value: selectedCard,
                              items: getDRopDownItems(),
                              onChanged: (value) {
                                setState(() {
                                  selectedCard = value;
                                });
                              },
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: screenWidth(context, 1),
                            height: screenHeight(context, 0.27),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/cardlogo.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Spacer(),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      SizedBox(width: 7),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      SizedBox(width: 7),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.color5,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: size,
                                        color: UIColors.bgcolor,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        cardNumber,
                                        style: TextStyle(
                                          color: UIColors.bgcolor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'ASAMOAH MICHAEL',
                                        style: TextStyle(
                                          color: UIColors.bgcolor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        cardExpiry,
                                        style: TextStyle(
                                          color: UIColors.bgcolor,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          // GestureDetector(
                          //   onTap: () {
                          //     showModalBottomSheet(
                          //         context: context,
                          //         builder: (context) => card = ChooseCard());
                          //     print(card);
                          //   },
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     child: Text(
                          //       'Use Another Card',
                          //       style: TextStyle(
                          //           color: Color(0xff90B0BF),
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  // Spacer(),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: screenWidth(context, 1),
                    height: screenHeight(context, 0.1),
                    child: RaisedButton(
                      onPressed: () {},
                      color: UIColors.color4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: UIColors.color5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
