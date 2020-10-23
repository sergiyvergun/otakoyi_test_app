import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_app_bar.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_bottom_bar.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/badge.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_icon_button.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          CustomIconButton(
            onPressed: () {},
            icon: Badge(
                number: 12,
                child: SvgPicture.asset('assets/icons/reminder.svg')),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [],
      ),
      bottomNavigationBar: CustomBottomBar(
        items: [
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text('Refer'),
            icon: Icon(Icons.add_circle_outline),
          ),
          BottomNavigationBarItem(
            title: Text('Messages'),
            icon: Badge(
              number: 12,
              leftPositioned: 17,
              bottomPositioned: 14,
              child: Icon(Icons.mail_outline),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(OMIcons.accountCircle),
          ),
        ],
      ),
    );
  }
}
