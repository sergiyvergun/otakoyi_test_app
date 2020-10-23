import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/models/user.dart';
import 'package:otakoyi_test_app/ui/widgets/micro_components/custom_chip.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
  final User user;

  const UserInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<User>.value(
      value: user,
      child: Container(
        child: Column(
          children: [
            Container(height: 20),
            UserTitle(),
            Container(height: 16),
            UserInfoChips(),
          ],
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
    return CustomChip(
      labelText: 'Bidders: ',
      valueText: context.watch<User>().bidders.toString(),
    );
  }
}
