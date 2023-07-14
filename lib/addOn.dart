import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Pagination Example')),
        body: ContainerPagination(),
      ),
    );
  }
}

class ContainerPagination extends StatefulWidget {
  @override
  _ContainerPaginationState createState() => _ContainerPaginationState();
}

class _ContainerPaginationState extends State<ContainerPagination> {
  int _currentPage = 0;
  final int _itemsPerPage = 20;
  final int _totalItems = 50;
  final int _columns = 5;
  final int _rows = 5;

  List<int> get _visibleItems {
    final int startIndex = _currentPage * _itemsPerPage;
    final int endIndex = startIndex + _itemsPerPage;
    return List<int>.generate(
        endIndex - startIndex, (index) => index + startIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: 400,
          child: ListView.builder(
            itemCount: (_totalItems / _itemsPerPage).ceil(),
            itemBuilder: (context, pageIndex) {
              if (pageIndex == _currentPage) {
                return GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: _columns,
                  children: _visibleItems
                      .map((itemIndex) => GestureDetector(
                            onTap: () {
                              print('Container/Card clicked: $itemIndex');
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.all(2),
                              color: Colors.blue,
                              child: Center(
                                child: Text(
                                  'Container $itemIndex',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: _currentPage > 0
                    ? () {
                        setState(() {
                          _currentPage--;
                        });
                      }
                    : null,
              ),
              Text('Page ${_currentPage + 1}'),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: _currentPage < (_totalItems / _itemsPerPage - 1)
                    ? () {
                        setState(() {
                          _currentPage++;
                        });
                      }
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
