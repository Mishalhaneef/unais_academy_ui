import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
              // padding: EdgeInsets.only(left: 30, right: 30),
              height: 150,
              width: 357,
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                  color: kDeepBlueTheme,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 30, width: 100,),
                    const Text('50% off',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('For Any Courses',
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w300)),
                    const SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                      //on pressed
                      onPressed: () async {},
                      //text to shoe in to the button
                      child: const Text('Join Now!',
                          style: TextStyle(color: kMainTheme)),
                      //style section code here
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image.asset('assets/person_home.png'),
          ),
        ],
      ),
    );
  }
}
