import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({Key key, @required this.items}) : super(key: key);

  final List<BottomNavigationBarItem> items;

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _pageIndex,
      onTap: (int selectedIndex) {
        setState(() {
          _pageIndex = selectedIndex;
        });
      },
      selectedFontSize: Theme.of(context).textTheme.bodyText2.fontSize,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: SurfaceColors.darkBlue,
      items: widget.items,
    );
  }
}
