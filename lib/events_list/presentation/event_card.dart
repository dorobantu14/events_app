import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketmaster/core/Strings/strings.dart';
import 'package:ticketmaster/core/colors/app_colors.dart';
import 'package:ticketmaster/core/text_styles/text_styles.dart';

class EventCard extends StatelessWidget {
  final String name;
  final String date;
  final String imageUrl;

  const EventCard({
    Key? key,
    required this.name,
    required this.date,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        decoration: getCardDecoration(),
        child: getCardBody(),
      ),
    );
  }

  Widget getCardBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getEventImage(),
                getEventDetails(),
              ],
            ),
          ),
        ),
        getFavoriteIcon()
      ],
    );
  }

  Widget getFavoriteIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16),
      child: SvgPicture.asset(Strings.heartIconPath),
    );
  }

  BoxDecoration getCardDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: AppColors.lightGreyColor, //New
          blurRadius: 20.0,
        )
      ],
    );
  }

  Widget getEventDetails() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getEventName(),
            getEventDate(),
          ],
        ),
      ),
    );
  }

  Widget getEventDate() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          SvgPicture.asset(Strings.calendarIconPath, height: 16, width: 16),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(date, style: TextStyles.greySubtitleTextStyle),
          )
        ],
      ),
    );
  }

  Widget getEventName() =>
      Text.rich(TextSpan(text: name), style: TextStyles.subtitleTextStyle);

  Widget getEventImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Image.network(
        imageUrl,
        width: 81,
        height: 81,
        fit: BoxFit.fill,
      ),
    );
  }
}
