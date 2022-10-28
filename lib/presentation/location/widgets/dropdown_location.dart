import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/application/location/location_bloc.dart';
import 'package:learn_bloc/domain/location/province_data.dart';
import 'package:learn_bloc/shared/theme.dart';

class DropdownLocation<T> extends StatelessWidget {
  const DropdownLocation(
      {Key? key,
      required this.hint,
      required this.dropDownItemList,
      required this.onChanged,
      required this.selectedLocation})
      : super(key: key);

  final String hint;
  final List<DropdownMenuItem<T>> dropDownItemList;
  final ValueChanged<T?>? onChanged;
  final T? selectedLocation;

  ///

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: orangeColor, width: 0.5))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          icon: Icon(
            Icons.arrow_drop_down,
            color: orangeColor,
          ),
          isExpanded: true,
          hint: Text(
            hint,
            style: subtitleGreyTextStyle,
          ),
          items: dropDownItemList == null ? [] : dropDownItemList,
          onChanged: onChanged,
          value: selectedLocation,
        ),
      ),
    );
  }
}
