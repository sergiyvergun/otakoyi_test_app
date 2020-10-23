import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otakoyi_test_app/models/user.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_button.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_chip.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/vertical_tag.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
  final User user;

  const UserInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<User>.value(
      value: user,
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 20),
              UserTitle(),
              Container(height: 16),
              UserInfoChips(),
              Container(height: 16),
              AboutUser(),
              Container(height: 16),
              CompanyInfoChips(),
              Container(height: 20),
              UserDetails(),
              Container(height: 5),
              if (user.organization != null)
                OrganizationButton(organizationName: user.organization),
              Container(height: 9),
              EditButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    return Text(
      '${user.name} ${user.surname} | ${user.companyName}',
      style: Theme.of(context).textTheme.headline2,
    );
  }
}

class UserInfoChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        CustomChip(
          labelText: 'Bidders: ',
          valueText: context.watch<User>().bidders.toString(),
        ),
        Container(width: 7),
        CustomChip(
          labelText: 'Interviews: ',
          valueText: context.watch<User>().interviews.toString(),
        ),
      ],
    );
  }
}

class AboutUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    return Text(
      user.about,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}

class CompanyInfoChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 7,
      runSpacing: 6,
      children: [
        CustomChip(
          valueText: context.watch<User>().practice.toString(),
        ),
        CustomChip(
          leading: SvgPicture.asset('assets/icons/location_icon.svg'),
          labelText: context.watch<User>().location.toString(),
        ),
        CustomChip(
          leading: SvgPicture.asset('assets/icons/bank_icon.svg'),
          labelText: context.watch<User>().location.toString(),
        ),
        CustomChip(
          leading: SvgPicture.asset('assets/icons/calendar_icon.svg'),
          labelText: context.watch<User>().registrationDate.toString(),
        ),
      ],
    );
  }
}

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    return GridView.count(
      physics: ClampingScrollPhysics(),
      childAspectRatio: 2.7,
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 0,
      semanticChildCount: 4,
      children: [
        VerticalTag(
          labelText: 'Min referral fee',
          valueText: '${user.minReferralFee}%',
        ),
        VerticalTag(
          labelText: 'Area of practice',
          valueText: user.areaOfPractice.toString(),
        ),
        VerticalTag(
          labelText: 'Posted',
          valueText: user.registrationDate.toString(),
        ),
        VerticalTag(
          labelText: 'Represent',
          valueText: user.represent.toString(),
        ),
      ],
    );
  }
}

class OrganizationButton extends StatelessWidget {
  final String organizationName;

  const OrganizationButton({Key key, this.organizationName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: 'More about ${organizationName}',
      backgroundColor: SurfaceColors.gold,
      titleColor: TypographyColors.white,
      trailing: Icon(
        Icons.info_outline,
        color: TypographyColors.white,
        size: 20,
      ),
      onPressed: () {},
    );
  }
}

class EditButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            title: 'Edit',
            backgroundColor: SurfaceColors.white,
            titleColor: TypographyColors.darkBlue,
            borderColor: SurfaceColors.mediumGrey,
            onPressed: () {},
          ),
        ),
        Container(width: 10),
        Expanded(
          child: CustomButton(
            title: 'Delete',
            backgroundColor: SurfaceColors.white,
            titleColor: NotificationColors.errors,
            borderColor: NotificationColors.errors,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
