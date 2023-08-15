import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketmaster/events_list/domain/bloc/events_bloc.dart';
import 'package:ticketmaster/core/core.dart';

class GenresMenu extends StatefulWidget {
  const GenresMenu({Key? key}) : super(key: key);

  @override
  State<GenresMenu> createState() => _GenresMenuState();
}

class _GenresMenuState extends State<GenresMenu> {
  List<String> listOfGenres = [
    Strings.filterByGenreText,
    Strings.allGenresText,
    Strings.musicText,
    Strings.danceText,
    Strings.sportText,
    Strings.cultureText,
    Strings.flutterText,
  ];

  List<bool?> genresCheckboxes = [
    null,
    true,
    false,
    false,
    false,
    false,
    false,
  ];

  String chosenGenre = Strings.allGenresText;
  int chosenGenreIndex = 1;
  bool isMenuExtended = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 16),
      child: PopupMenuButton<String>(
        color: AppColors.whiteColor,
        offset: const Offset(20, 40),
        onCanceled: onCancel,
        onOpened: onOpened,
        onSelected: onSelected,
        itemBuilder: buildMenuItems,
        child: getMenuTitle(),
      ),
    );
  }

  Widget getItemText(String e) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        e,
        style: listOfGenres.indexOf(e) == 0
            ? TextStyles.boldGreySubtitleTextStyle
            : TextStyles.blackSubtitleTextStyle,
      ),
    );
  }

  Widget getItemContent(String e) {
    return Row(
      children: [
        if (listOfGenres.indexOf(e) != 0) getCheckbox(e),
        getItemText(e),
      ],
    );
  }

  Widget getCheckbox(String e) {
    return RoundedCheckbox(
        value: genresCheckboxes[listOfGenres.indexOf(e)] ?? false);
  }

  List<PopupMenuEntry<String>> buildMenuItems(context) {
    return listOfGenres
        .map((e) => PopupMenuItem(
              value: e,
              child: getItemContent(e),
            ))
        .toList();
  }

  Widget getMenuTitle() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(chosenGenre, style: TextStyles.blackNormalTextStyle),
        ),
        isMenuExtended
            ? SvgPicture.asset(Strings.chevronUpIconPath)
            : SvgPicture.asset(Strings.chevronDownIconPath)
      ],
    );
  }

  void onSelected(String choice) {
    setState(() {
      chosenGenre = choice;
      genresCheckboxes.fillRange(1, genresCheckboxes.length, false);
      genresCheckboxes[listOfGenres.indexOf(choice)] = true;
      if (choice == Strings.allGenresText) {
        context.read<EventsBloc>().add(
            const EventsEvent.getAllEvents(eventsList: [], numberOfEvents: 20));
      } else {
        context.read<EventsBloc>().add(EventsEvent.getEventsByGenre(
              eventsList: [],
              genre: choice,
              numberOfEvents: 20,
            ));
      }
    });
  }

  void onOpened() {
    setState(() {
      isMenuExtended = true;
    });
  }

  void onCancel() {
    setState(() {
      isMenuExtended = false;
    });
  }
}
