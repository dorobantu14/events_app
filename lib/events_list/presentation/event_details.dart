import 'package:flutter/material.dart';
import 'package:ticketmaster/core/core.dart';
import 'package:ticketmaster/events_list/presentation/images_carousel.dart';

class EventDetails extends StatelessWidget {
  final List<String> images;
  final String name;

  const EventDetails({
    Key? key,
    required this.images,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text('$name Details', style: TextStyles.subtitleTextStyle),
      content: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Pictures of the event:'),
          ),
          ImagesCarousel(images: images),
        ],
      ),
      actions: <Widget>[
        getGoBackButton(context),
      ],
    );
  }

  Widget getGoBackButton(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: Theme.of(context).textTheme.labelLarge,
      ),
      child: Text(
        Strings.goBackText,
        style: TextStyles.orangeTextStyle,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
