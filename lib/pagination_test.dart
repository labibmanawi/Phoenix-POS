// import 'package:flutter/material.dart';

// class MenuPage extends StatefulWidget {
//   @override
//   _MenuPageState createState() => _MenuPageState();
// }

// class _MenuPageState extends State<MenuPage> {
//   int currentPage = 1;
//   final int itemsPerPage = 20;
//   final int totalItems = 50;
//   final PageController _pageController = PageController(viewportFraction: 0.8);

//   @override
//   Widget build(BuildContext context) {
//     int totalPages = (totalItems / itemsPerPage).ceil();
//     List<int> menuList = List.generate(totalItems, (index) => index + 1);

//     return Container(
//       child: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               onPageChanged: (int page) {
//                 setState(() {
//                   currentPage = page + 1;
//                 });
//               },
//               itemCount: totalPages,
//               itemBuilder: (BuildContext context, int pageIndex) {
//                 int startIndex = pageIndex * itemsPerPage;
//                 int endIndex = (startIndex + itemsPerPage) > totalItems
//                     ? totalItems
//                     : (startIndex + itemsPerPage);
//                 List<int> pageItems = menuList.sublist(startIndex, endIndex);

//                 return Container(
//                   width: 300,
//                   height: 320,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: pageItems.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       int menuItem = pageItems[index];
//                       return GestureDetector(
//                         onTap: () {
//                           // Menggunakan value menuItem yang di-click
//                           print('Menu Item: $menuItem');
//                         },
//                         child: Container(
//                           width: 100,
//                           height: 68,
//                           margin: EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Menu $menuItem',
//                               style: TextStyle(fontSize: 16),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: currentPage > 1
//                       ? () {
//                           _pageController.previousPage(
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.ease);
//                         }
//                       : null,
//                   child: Text('Previous'),
//                 ),
//                 Text('Page $currentPage of $totalPages'),
//                 ElevatedButton(
//                   onPressed: currentPage < totalPages
//                       ? () {
//                           _pageController.nextPage(
//                               duration: Duration(milliseconds: 300),
//                               curve: Curves.ease);
//                         }
//                       : null,
//                   child: Text('Next'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final int totalMenu = 50;
  final int menusPerPage = 20;
  final int menusPerRow = 4;
  final int rowsPerPage = 6;
  final double containerWidth = 100;
  final double containerHeight = 80;
  final double paginationHeight = 100;

  late PageController _pageController;
  int _currentPage = 0;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  //MENUS CONTAINER (CONTENT)
  Widget _buildMenuContainer(int index) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          'Menu ${index + 1}',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  //MENU PAGE FUNCTION
  List<Widget> _buildMenuPage(int page) {
    final List<Widget> menus = [];
    final int startIndex = page * menusPerPage;
    final int endIndex = (startIndex + menusPerPage) > totalMenu
        ? totalMenu
        : (startIndex + menusPerPage);

    for (int i = startIndex; i < endIndex; i++) {
      menus.add(_buildMenuContainer(i));
    }

    return menus;
  }

  //MENU PAGE
  List<Widget> _buildFilteredMenuPage(int page) {
    final List<Widget> menus = _buildMenuPage(page);
    return menus.where((menu) {
      final String menuText = (menu as Container).child!.toString();
      return menuText.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();
  }

  Widget _buildPagination() {
    return Container(
      height: paginationHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            List<Widget>.generate((totalMenu / menusPerPage).ceil(), (index) {
          final pageNumber = index + 1;
          return GestureDetector(
            onTap: () {
              _goToPage(pageNumber);
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: _currentPage == index ? Colors.grey[800] : Colors.grey,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Center(
                child: Text(
                  pageNumber.toString(),
                  style: TextStyle(
                    color: _currentPage == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  //SEACRH BAR
  Widget _buildSearchBar() {
    return Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextField(
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Search menu...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }

  //NAVIGATION <<
  void goToFirstPage() {
    setState(() {
      _currentPage = 0;
    });
    _pageController.animateToPage(
      0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  //NAVIGATION NUMBER
  void _goToPage(int pageNumber) {
    final newPage = pageNumber - 1;
    if (newPage >= 0 && newPage < (totalMenu / menusPerPage).ceil()) {
      setState(() {
        _currentPage = newPage;
      });
      _pageController.animateToPage(
        newPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  //NAVIGATION >>
  void goToLastPage() {
    final int lastPage = (totalMenu / menusPerPage).ceil() - 1;
    setState(() {
      _currentPage = lastPage;
    });
    _pageController.animateToPage(
      lastPage,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //SEARCH BAR
          _buildSearchBar(),

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: (totalMenu / menusPerPage).ceil(),
              itemBuilder: (BuildContext context, int index) {
                final filteredMenus = _buildFilteredMenuPage(index);
                return GridView.count(
                  crossAxisCount: menusPerRow,
                  childAspectRatio: containerWidth / containerHeight,
                  children: filteredMenus,
                );
              },
            ),
          ),

          //BUTTON BACK FORWARD
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // if (_currentPage > 0)

                // ICON LEFT NAV PAGE LAST
                Flexible(
                  flex: 1,
                  child: FittedBox(
                    child: ElevatedButton(
                      onPressed: _currentPage == 0 ? null : goToFirstPage,
                      child: Icon(
                        CupertinoIcons.chevron_left_2,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fixedSize: Size(60, 40),
                      ),
                    ),
                  ),
                ),

                // ICON LEFT NAV PAGE
                Flexible(
                  flex: 1,
                  child: FittedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentPage--;
                        });
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fixedSize: Size(60, 40),
                      ),
                      child: Icon(CupertinoIcons.chevron_left),
                    ),
                  ),
                ),

                //PAGINATION NUMBER
                _buildPagination(),

                // if (_currentPage < (totalMenu / menusPerPage).ceil() - 1)

                // ICON RIGHT NAV PAGE
                Flexible(
                  flex: 1,
                  child: FittedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentPage++;
                        });
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fixedSize: Size(60, 40),
                      ),
                      child: Icon(CupertinoIcons.chevron_right),
                    ),
                  ),
                ),
                // ICON RIGHT NAV PAGE LAST
                Flexible(
                  flex: 1,
                  child: FittedBox(
                    child: ElevatedButton(
                      onPressed:
                          _currentPage == (totalMenu / menusPerPage).ceil() - 1
                              ? null
                              : goToLastPage,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fixedSize: Size(60, 40),
                      ),
                      child: Icon(CupertinoIcons.chevron_right_2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
