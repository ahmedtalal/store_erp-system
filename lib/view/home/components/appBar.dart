import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DefaultAppBar extends StatelessWidget {
  DefaultAppBar({
    Key? key,
  }) : super(key: key);

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd/MM/yy').format(now);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 50,
              color: Color(0xff82225E),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 16),
          child: Text(
            formattedDate,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
        ),
      ],
    );
  }
}