import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_form.dart';

import 'micro_components/custom_divider.dart';

class CustomRangeSlider extends StatefulWidget {
  @override
  _CustomRangeSliderState createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _values = RangeValues(30, 100);

  var startRangeTextEditingController = TextEditingController();
  var endRangeTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomForm(
                controller: startRangeTextEditingController,
                onChanged: (String value) {
                  setState(() {
                    if (double.parse(value) < _values.end)
                      _values = RangeValues(double.parse(value), _values.end);
                  });
                },
                labelText: 'From',
                suffix: Text(
                  '%',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            Container(
                child: CustomDivider(),
                width: 16,
                margin: EdgeInsets.symmetric(horizontal: 9)),
            Expanded(
              child: CustomForm(
                controller: endRangeTextEditingController,
                onChanged: (String value) {
                  setState(() {
                    if (double.parse(value) > _values.end)
                      _values = RangeValues(_values.start, double.parse(value));
                  });
                },
                labelText: 'To',
                suffix: Text(
                  '%',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ],
        ),
        Container(height: 10),
        RangeSlider(
          activeColor: SurfaceColors.gold,
          inactiveColor: SurfaceColors.lightGrey,
          values: _values,
          min: 0,
          max: 100,
          onChanged: (RangeValues values) {
            setState(() {
              _values = values;
              startRangeTextEditingController.text =
                  values.start.round().toString();
              endRangeTextEditingController.text =
                  values.end.round().toString();
            });
          },
        ),
      ],
    );
  }
}
