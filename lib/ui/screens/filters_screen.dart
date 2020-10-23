import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otakoyi_test_app/ui/screens/users_screen.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_app_bar.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_button.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_form.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_pop_menu_button.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_range_slider.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/badge.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_divider.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_icon_button.dart';

class FiltersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SurfaceColors.backgroundColor,
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
          ),
          Container(height: 20),
          Text(
            'Filters',
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(height: 16),
          CustomForm(
            labelText: 'Area of practice',
            popupMenuDetails: [
              PopUpMenuItemDetails(value: 'All areas'),
              PopUpMenuItemDetails(value: 'Banking and Debt Finance Law'),
            ],
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: SurfaceColors.darkBlue,
            ),
            controller: TextEditingController(),
          ),
          Container(height: 20),
          CustomForm(
            labelText: 'Type of case',
            popupMenuDetails: [
              PopUpMenuItemDetails(value: 'Reasons'),
              PopUpMenuItemDetails(value: 'Costs and Benefits'),
            ],
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: SurfaceColors.darkBlue,
            ),
            controller: TextEditingController(),
          ),
          Container(height: 20),
          CustomForm(
            labelText: 'State',
            popupMenuDetails: [
              PopUpMenuItemDetails(value: 'North Dakota'),
              PopUpMenuItemDetails(value: 'Oklahoma'),
            ],
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: SurfaceColors.darkBlue,
            ),
            controller: TextEditingController(),
          ),
          Container(height: 20),
          CustomDivider(),
          Container(height: 10),
          Text(
            'Choose the rate',
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(height: 17),
          CustomRangeSlider(),
          Container(height: 19),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UsersScreen()));
          },
          title: 'Apply Filters',
          backgroundColor: SurfaceColors.darkBlue,
          titleColor: TypographyColors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
