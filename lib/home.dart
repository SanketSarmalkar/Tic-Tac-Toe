import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool player = true;
  bool gameifON = true;
  String LT = "";
  String TT = "";
  String RT = "";
  String LM = "";
  String MM = "";
  String RM = "";
  String LB = "";
  String BB = "";
  String RB = "";
  int k = 0;
  String display = "";

  void clearGame(){
    setState(() {
      LT = "";
      TT = "";
      RT = "";
      LM = "";
      MM = "";
      RM = "";
      LB = "";
      BB = "";
      RB = "";
      k = 0;
      gameifON = false;
      display = "";
    });
  }
  void checkForWinner(int s) {
    setState(() {
      if ((LT == "X" && MM == "X" && RB == "X") ||
          (LT == "O" && MM == "O" && RB == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((RT == "X" && MM == "X" && LB == "X") ||
          (RT == "O" && MM == "O" && LB == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((LT == "X" && TT == "X" && RT == "X") ||
          (LT == "O" && TT == "O" && RT == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((LM == "X" && MM == "X" && RM == "X") ||
          (LM == "O" && MM == "O" && RM == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((LB == "X" && BB == "X" && RB == "X") ||
          (LB == "O" && BB == "O" && RB == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((LT == "X" && LM == "X" && LB == "X") ||
          (LT == "O" && LM == "O" && LB == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((TT == "X" && MM == "X" && BB == "X") ||
          (TT == "O" && MM == "O" && BB == "O"))
        display = (s == 1) ? ("X") : ("O");
      if ((RT == "X" && RM == "X" && RB == "X") ||
          (RT == "O" && RM == "O" && RB == "O"))
        display = (s == 1) ? ("X") : ("O");
      if (display != "") {
        /*LT = "";
        TT = "";
        RT = "";
        LM = "";
        MM = "";
        RM = "";
        LB = "";
        BB = "";
        RB = "";*/
        k = 0;
        gameifON = false;
      }
    });

  }

  void addCross() {
    setState(() {
      if(k==0){
        player = true;
        return;
      }
      if (k == 1) LT = "X";
      if (k == 2) TT = "X";
      if (k == 3) RT = "X";
      if (k == 4) LM = "X";
      if (k == 5) MM = "X";
      if (k == 6) RM = "X";
      if (k == 7) LB = "X";
      if (k == 8) BB = "X";
      if (k == 9) RB = "X";
      k = 0;
      if(!gameifON) display = "";
      gameifON = true;
      player = false;
    });
    checkForWinner(1);
  }

  void addNull() {
    setState(() {
      if (k==0) {
        player = false;
        return;
      }
      if (k == 1) LT = "O";
      if (k == 2) TT = "O";
      if (k == 3) RT = "O";
      if (k == 4) LM = "O";
      if (k == 5) MM = "O";
      if (k == 6) RM = "O";
      if (k == 7) LB = "O";
      if (k == 8) BB = "O";
      if (k == 9) RB = "O";
      k = 0;
      if(!gameifON) display = "";
      gameifON = true;
      player = true;
    });
    checkForWinner(0);
  }
    @override
    Widget build(BuildContext context) {
      double currentWidth = MediaQuery.of(context).size.width;
      double currentHeight = MediaQuery.of(context).size.height;

      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Tic Tac Toe", style: GoogleFonts.breeSerif(
              fontSize: currentHeight * 0.055,
              fontWeight: FontWeight.bold,
              color: Colors.purple[300]),)),
          backgroundColor: Colors.deepPurple,
          toolbarHeight: currentHeight * 0.1,
        ),
        body: Container(
          color: Colors.purpleAccent,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 10 / 3,
                child: Padding(
                  padding: EdgeInsets.all(currentHeight * 0.015),
                  child: PhysicalModel(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(currentHeight * 0.015),
                    child: Container(
                      child: Center(child: Text((display != "") ? (display +
                          " WINS") : "",
                        style: GoogleFonts.sonsieOne(
                            fontSize: currentHeight * 0.045,
                            fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 9 / 9,
                child: Padding(
                  padding: EdgeInsets.all(currentHeight * 0.02),
                  child: PhysicalModel(
                    elevation: 10,
                    color: Colors.purple,
                    shadowColor: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(currentHeight * 0.015),
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: (currentHeight * 0.02),
                                        left: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 1;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==1)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(right: BorderSide(
                                              color: Colors.white),
                                              bottom: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                            child: Text(LT,
                                                style: GoogleFonts.sonsieOne(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: currentHeight *
                                                      0.06,
                                                )

                                            )
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 2;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==2)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(right: BorderSide(
                                              color: Colors.white),
                                              left: BorderSide(
                                                  color: Colors.white),
                                              bottom: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            TT, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: (currentHeight * 0.02),
                                        right: (currentHeight * 0.02)),
                                    child: GestureDetector(

                                      onTap: () {
                                        setState(() {
                                          k = 3;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==3)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(left: BorderSide(
                                              color: Colors.white),
                                              bottom: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            RT, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 4;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==4)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(right: BorderSide(
                                              color: Colors.white),
                                              bottom: BorderSide(
                                                  color: Colors.white),
                                              top: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            LM, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 0.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 5;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==5)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(right: BorderSide(
                                              color: Colors.white),
                                              left: BorderSide(
                                                  color: Colors.white),
                                              bottom: BorderSide(
                                                  color: Colors.white),
                                              top: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            MM, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 6;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==6)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(left: BorderSide(
                                              color: Colors.white),
                                              bottom: BorderSide(
                                                  color: Colors.white),
                                              top: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            RM, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: (currentHeight * 0.02),
                                        left: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 7;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==7)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(right: BorderSide(
                                              color: Colors.white),
                                              top: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            LB, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 8;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==8)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(right: BorderSide(
                                              color: Colors.white),
                                              left: BorderSide(
                                                  color: Colors.white),
                                              top: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            BB, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: (currentHeight * 0.02),
                                        right: (currentHeight * 0.02)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          k = 9;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: (k==9)?Colors.white.withOpacity(0.5):Colors.white.withOpacity(0),
                                          border: Border(left: BorderSide(
                                              color: Colors.white),
                                              top: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            RB, style: GoogleFonts.sonsieOne(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: currentHeight * 0.06,
                                          ),),
                                        ),

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
                  ),
                ),
              ),


              AspectRatio(
                aspectRatio: 16 / 7,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: EdgeInsets.all(currentHeight * 0.03),
                          child: PhysicalModel(
                            color: (player)?Colors.red:Colors.black87,
                            borderRadius: BorderRadius.circular(
                                currentHeight * 0.025),
                            child: GestureDetector(
                              onTap: () {
                                addCross();
                              },
                              child: Container(
                                child: Center(child: Text("X",
                                  style: GoogleFonts.sonsieOne(
                                      fontSize: currentHeight * 0.05,
                                      fontWeight: FontWeight.bold),)),

                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                          child:GestureDetector(
                            onTap: (){
                              clearGame();
                            },
                            child: Container(
                              child: Center(child: Icon(Icons.restart_alt_rounded,)),
                            ),
                          ),
                      ),

                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: EdgeInsets.all(currentHeight * 0.03),
                          child: PhysicalModel(
                            color: (player)?Colors.black87:Colors.red,
                            borderRadius: BorderRadius.circular(
                                currentHeight * 0.025),
                            child: GestureDetector(
                              onTap: () {
                                addNull();
                              },
                              child: Container(
                                child: Center(child: Text("O",
                                  style: GoogleFonts.sonsieOne(
                                      fontSize: currentHeight * 0.05,
                                      fontWeight: FontWeight.bold),)),
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }


