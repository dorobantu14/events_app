import 'package:flutter/material.dart';
import 'package:ticketmaster/core/colors/app_colors.dart';

class RoundedCheckbox extends StatelessWidget {
  final bool value;

  const RoundedCheckbox({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: getBoxDecoration(),
      child: value
          ? Icon(Icons.check, size: 18.0, color: AppColors.whiteColor)
          : null,
    );
  }

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      shape: BoxShape.rectangle, // Use a circular shape
      border: Border.all(color: value ? AppColors.orangeColor : Colors.grey),
      color: value ? AppColors.orangeColor : Colors.transparent,
    );
  }
}
