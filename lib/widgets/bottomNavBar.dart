import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatefulWidget {
  final int selectedItem;
  Navbar({Key? key, required this.selectedItem}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/home.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 0
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/search.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 1
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/notification.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 2
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/account.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 3
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
      ],
      selectedItemColor: Color(0xff2C4B6C),
      unselectedItemColor: Color(0xff95A6B9),
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: (index) {
        _changeSelectedNavBar(context, index);
      },
    );
  }

  void _changeSelectedNavBar(BuildContext context, int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      default:
        break;
    }
  }
}
