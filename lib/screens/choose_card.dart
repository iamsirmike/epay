import 'package:epay/screens/home.dart';
import 'package:epay/utils/util.dart';
import 'package:flutter/material.dart';

enum BackCard { ecobank, gtbank }

class ChooseCard extends StatefulWidget {
  @override
  _ChooseCardState createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    BackCard character = BackCard.gtbank;
    String cardName = 'gt';

    return Container(
      color: Color(0xff757575),
      child: Container(
        // height: 200,
        decoration: BoxDecoration(
          color: UIColors.bgcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  cardName = 'Ecobank';
                });
              },
              child: ListTile(
                title: const Text('Ecobank'),
                leading: Radio(
                  value: BackCard.ecobank,
                  groupValue: character,
                  onChanged: (BackCard value) {
                    setState(() {
                      character = value;
                      print(character);
                    });
                  },
                ),
              ),
            ),
            ListTile(
              title: const Text('GT Bank'),
              leading: Radio(
                value: BackCard.gtbank,
                groupValue: character,
                onChanged: (BackCard value) {
                  setState(() {
                    character = value;
                    print(character);
                  });
                },
              ),
            ),
            RaisedButton(onPressed: () {
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
