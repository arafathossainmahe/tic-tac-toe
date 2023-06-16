import 'package:class16/boxicon.dart';
import 'package:class16/boxstate.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //1st row
  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  //2nd row
  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  //3rd row
  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  bool isCrossTurn = true;
  GameState gamestate = GameState.gameisnotfinished;
  void GameReset() {
    setState(() {
      a = BoxState.empty;

      b = BoxState.empty;

      c = BoxState.empty;

      //2nd row
      d = BoxState.empty;

      e = BoxState.empty;

      f = BoxState.empty;

      //3rd row
      g = BoxState.empty;

      h = BoxState.empty;

      i = BoxState.empty;
      gamestate = GameState.gameisnotfinished;
    });
  }

  void GameLogic() {
    //1st row
    if (a == b && b == c && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    //2nd row
    if (d == e && e == f && d != BoxState.empty) {
      if (d == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    //3rd row
    if (g == h && h == i && g != BoxState.empty) {
      if (g == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    //1st colum
    if (a == d && d == g && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    //2nd colum
    if (b == e && e == h && b != BoxState.empty) {
      if (b == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    //3rd colum
    if (c == f && f == i && c != BoxState.empty) {
      if (c == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    if (a == e && e == i && a != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
    if (c == e && e == g && c != BoxState.empty) {
      if (a == BoxState.circle) {
        gamestate = GameState.circlewon;
      } else {
        gamestate = GameState.crosswon;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Turn :${isCrossTurn ? 'Cross' : 'Circle'}',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (a == BoxState.empty) {
                            if (isCrossTurn) {
                              a = BoxState.cross;
                            } else {
                              a = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn; //trun break
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: a),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (b == BoxState.empty) {
                            if (isCrossTurn) {
                              b = BoxState.cross;
                            } else {
                              b = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: b),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (c == BoxState.empty) {
                            if (isCrossTurn) {
                              c = BoxState.cross;
                            } else {
                              c = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: c),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (d == BoxState.empty) {
                            if (isCrossTurn) {
                              d = BoxState.cross;
                            } else {
                              d = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: d),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (e == BoxState.empty) {
                            if (isCrossTurn) {
                              e = BoxState.cross;
                            } else {
                              e = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: e),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (f == BoxState.empty) {
                            if (isCrossTurn) {
                              f = BoxState.cross;
                            } else {
                              f = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: f),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (g == BoxState.empty) {
                            if (isCrossTurn) {
                              g = BoxState.cross;
                            } else {
                              g = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: g),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (h == BoxState.empty) {
                            if (isCrossTurn) {
                              h = BoxState.cross;
                            } else {
                              h = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: h),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (i == BoxState.empty) {
                            if (isCrossTurn) {
                              i = BoxState.cross;
                            } else {
                              i = BoxState.circle;
                            }
                            isCrossTurn = !isCrossTurn;
                            GameLogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
                        child: BoxIcon(boxstate: i),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          gamestate != GameState.gameisnotfinished
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.red.withOpacity(0.8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${gamestate == GameState.circlewon ? 'Circle' : 'Cross'} : Won',
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            GameReset();
                          },
                          child: const Text("Game Restart"),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
