import 'package:flutter/material.dart';

class collunmWidget extends StatelessWidget {
  const collunmWidget() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.blue[300],
            ),
          )
        ],
      ),
    );
  }
}

class rowWidget extends StatelessWidget {
  const rowWidget() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.blue[300],
            ),
          )
        ],
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                    
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.blue[300],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ex4Widget extends StatelessWidget {
  const ex4Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(color: Colors.blue[50],margin: const EdgeInsets.only(bottom: 10),),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.blue[50],),
                ),
                Expanded(
                  child: Container(color: Colors.blue[50],margin: const EdgeInsets.only(left: 10),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
