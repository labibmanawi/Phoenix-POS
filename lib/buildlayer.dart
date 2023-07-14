import 'package:flutter/material.dart';
import 'package:testapp/options_order.dart';
import 'package:testapp/pagination_test.dart';

class BuildLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              Flexible(
                flex: 25,
                child: Container(
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //section left
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey[200],
                          child: Column(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.red,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                          child: OptionsOrder(),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.red,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          height: 200,
                                          width: 200,
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                'Exit',
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          height: 200,
                                          width: 200,
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  Colors.purple[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                'Re-Print',
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          height: 200,
                                          width: 200,
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  Colors.purple[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                'Special \n Cart',
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          height: 200,
                                          width: 200,
                                          margin: EdgeInsets.all(5),
                                          color: Colors.grey,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.green,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                'Checkout',
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //SECTION RIGHT

                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey[200],
                          child: Column(
                            children: [
                              Flexible(
                                flex: 6,
                                child: Container(
                                  color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            FittedBox(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                margin: EdgeInsets.all(8),
                                                child: Icon(
                                                  Icons.short_text_sharp,
                                                ),
                                              ),
                                            ),

                                            //STORE LIST
                                            FittedBox(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                margin: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[800],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            FittedBox(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                margin: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[800],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            FittedBox(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                margin: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[800],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            FittedBox(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                margin: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[800],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            FittedBox(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                margin: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[800],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //Pagination Menu
                                      Flexible(
                                        flex: 5,
                                        child: MenuPage(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      currentWidth.toString(),
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
