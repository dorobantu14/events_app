import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketmaster/core/core.dart';
import 'package:ticketmaster/events_list/domain/bloc/events_bloc.dart';
import 'package:ticketmaster/events_list/presentation/genres_menu.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({Key? key}) : super(key: key);

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  final focusNode = FocusNode();
  String? initialValueText;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(refreshCallback);
  }

  void refreshCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        height: 48,
        decoration: focusNode.hasFocus ? getBoxDecoration() : null,
        child: TextFormField(
          initialValue: initialValueText,
          cursorColor: AppColors.greyColor,
          focusNode: focusNode,
          decoration: getDecoration(),
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
        ),
      ),
    );
  }

  void onFieldSubmitted(value) {
    setState(() {
      initialValueText = value;
    });
  }

  void onChanged(value) {
    context.read<EventsBloc>().add(EventsEvent.getEventsByName(
        eventsList: [], name: value, numberOfEvents: 20));
  }

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      border: Border.all(
        color: AppColors.orangeColor.withOpacity(0.3),
        width: 2.0,
      ),
    );
  }

  InputDecoration getDecoration() {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      focusedBorder: getFocusedBorder(),
      suffixIcon: getGenreFilter(),
      prefixIcon: getPrefixIcon(),
      hintText: Strings.searchText,
      hintStyle: TextStyles.greyNormalTextStyle,
      border: getBorder(),
    );
  }

  OutlineInputBorder getBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyColor),
      borderRadius: BorderRadius.circular(100),
    );
  }

  OutlineInputBorder getFocusedBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.orangeColor,
      ),
      borderRadius: BorderRadius.circular(100),
    );
  }

  Widget getPrefixIcon() {
    return SvgPicture.asset(
      Strings.searchIconPath,
      width: 24,
      height: 24,
      fit: BoxFit.scaleDown,
    );
  }

  Widget getGenreFilter() {
    return SizedBox(
      width: 136,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          getDivider(),
          const GenresMenu(),
        ],
      ),
    );
  }

  Widget getDivider() {
    return SizedBox(
      height: 24,
      child: VerticalDivider(
        thickness: 1,
        color: AppColors.greyBorderColor
      ),
    );
  }
}
