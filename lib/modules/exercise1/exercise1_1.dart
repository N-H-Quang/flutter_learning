import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(children: [
          Flexible(
              flex: 2,
              child: Column(children: [
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue[50],
                        child: Column(
                          children: [
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                flex: 1,
                                child: Container(color: Colors.green),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(color: Colors.transparent))
                            ])),
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                flex: 1,
                                child: Container(color: Colors.orange),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(color: Colors.transparent))
                            ])),
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                flex: 1,
                                child: Container(color: Colors.blue),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(color: Colors.transparent))
                            ])),
                            Flexible(
                                child: Row(children: [
                              Flexible(
                                flex: 1,
                                child: Container(color: Colors.pink),
                              ),
                              Flexible(
                                  flex: 1,
                                  child: Container(color: Colors.green)),
                              Flexible(
                                  flex: 1,
                                  child: Container(color: Colors.yellow))
                            ]))
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.pink,
                      ),
                    )
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.pink,
                      ),
                    )
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Stack(fit: StackFit.expand, children: [
                      Row(mainAxisSize: MainAxisSize.max, children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.yellow,
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            color: Colors.pink,
                          ),
                        ),
                      ]),
                      Positioned(
                        top: 10,
                        left: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Container(
                            decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(3, 6),
                              blurRadius: 6)
                        ])),
                      ),
                    ]),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.pink,
                      ),
                    )
                  ]),
                )
              ])),
          Flexible(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Container(
                  color: Colors.pink,
                )),
          )
        ]));
  }
}
