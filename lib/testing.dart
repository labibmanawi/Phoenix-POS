import 'package:flutter/material.dart';

class StickyNote extends StatefulWidget {
  @override
  _StickyNoteState createState() => _StickyNoteState();
}

class _StickyNoteState extends State<StickyNote>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<Offset> _buttonSlideAnimation;
  bool _isNoteVisible = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _buttonSlideAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(13.2, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleNoteVisibility() {
    setState(() {
      _isNoteVisible = !_isNoteVisible;

      if (_isNoteVisible) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  Widget _buildOrderList() {
    // Daftar order list
    List<String> orders = [
      'Order 1',
      'Order 2',
      'Order 3',
      'Order 4',
      'Order 5',
    ];

    return Container(
      width: 670,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.zero,
          bottomLeft: Radius.zero,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(orders[index]),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(orders[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            child: SlideTransition(
              position: _slideAnimation,
              child: Visibility(
                visible: _isNoteVisible,
                child: _buildOrderList(),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            child: SlideTransition(
              position: _buttonSlideAnimation,
              child: GestureDetector(
                onTap: _toggleNoteVisibility,
                child: Container(
                  width: 50,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.zero,
                      bottomLeft: Radius.zero,
                    ),
                  ),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Order List',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
