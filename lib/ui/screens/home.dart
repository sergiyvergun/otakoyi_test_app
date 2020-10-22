import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_app_bar.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_form.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/badge.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_icon_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SurfaceColors.lightGrey,
      appBar: CustomAppbar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 30,
        ),
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
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Container(height: 21),
          CustomForm(
            hintText: 'Search for cases',
            suffixIcon: Icon(
              Icons.search,
              color: SurfaceColors.gold,
            ),
            enabled: true,
          ),
          Container(height: 25),
          Text('Filters'),
          Container(height: 16),
          CustomForm(
            enabled: false,
            initialText: 'All areas',
            labelText: 'Area of practice',
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: SurfaceColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
