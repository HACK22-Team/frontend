import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack_22/presentation/components/place_dialog.dart';
import 'package:hack_22/presentation/components/quick_suggestions.dart';
import 'package:hack_22/presentation/components/searchbar.dart';
import 'package:hack_22/presentation/components/square_card.dart';
import '../../services/track_space.dart';
import '../global_styles/design_system/styles.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset('assets/images/background_top.png'),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text("Your Spaces",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 40,
                                    color: black,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(height: 12),
                            Searchbar(),
                            SizedBox(height: 60),
                            Text("Quick Recommendations",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: gray)),
                            SizedBox(height: 8),
                            QuickSuggestions(),
                            SizedBox(height: 20),
                            Text("Your Organizations",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: gray)),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SquareCard(
                                        imageSrc:
                                            "assets/images/logo_company.png"),
                                    SizedBox(height: 8),
                                    Container(
                                      child: Text("Quiver",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: black)),
                                    ),
                                    Text("Company",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: gray,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.only(top: 14.0),
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xffCBCBCB),
                                      child: IconButton(
                                        color: azul,
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          final trackService =
                                              TrackSpaceService();
                                          trackService
                                              .determinePosition()
                                              .then((value) {
                                            print(value.longitude);
                                            print(value.latitude);
                                            print(trackService.checkIfInArea(
                                                value.longitude,
                                                value.latitude));
                                          });
                                        },
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/map.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text("Recently passed by",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: gray)),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SquareCard(
                                            imageSrc:
                                                "assets/images/logo_1.jpg"),
                                        SizedBox(width: 12),
                                        Flexible(
                                          child: Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 8),
                                              Text("Vock Interieur",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black)),
                                              Text("Company",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: lightGray))
                                            ],
                                          )),
                                        )
                                      ]),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SquareCard(
                                            imageSrc:
                                                "assets/images/logo_2.png"),
                                        SizedBox(width: 12),
                                        Flexible(
                                          child: Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 8),
                                              Text("Klima Komfort",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black)),
                                              Text("Company",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: lightGray))
                                            ],
                                          )),
                                        )
                                      ]),
                                )
                              ],
                            ),
                            SizedBox(height: 48),
                            Text("Location based",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: gray)),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SquareCard(
                                            imageSrc:
                                                "assets/images/flag_swiss.png"),
                                        SizedBox(width: 12),
                                        Flexible(
                                          child: Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 8),
                                              Text("Swiss",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black)),
                                              Text("Current Country",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: lightGray))
                                            ],
                                          )),
                                        )
                                      ]),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      AutoRouter.of(context)
                                          .pushNamed('/space');
                                    },
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SquareCard(
                                            imageSrc:
                                                "assets/images/st_gallen.jpg",
                                            clipRound: true,
                                          ),
                                          SizedBox(width: 12),
                                          Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 8),
                                              Text("St. Gallen",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: black)),
                                              Text("Current City",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: lightGray))
                                            ],
                                          ))
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
