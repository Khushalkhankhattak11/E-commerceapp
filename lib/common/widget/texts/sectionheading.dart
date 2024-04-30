
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  final Color? textcolor;
  final bool showActionbutton;
  final String title, buttontitle;
  final VoidCallback? onpres;
  const TSectionHeading({
    super.key,
    this.textcolor,
    this.showActionbutton = true,
    required this.title,
    this.buttontitle = "View all",
    this.onpres,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textcolor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionbutton)
          TextButton(
            onPressed: onpres,
            child: Text(buttontitle),
          ),
      ],
    );
  }
}
