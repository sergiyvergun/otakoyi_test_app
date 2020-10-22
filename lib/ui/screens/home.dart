import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_app_bar.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/badge.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_icon_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
