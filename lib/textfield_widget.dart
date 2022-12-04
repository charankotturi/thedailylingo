import 'package:flutter/material.dart';

class EditTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final Axis scrollDir;
  final int maxLines;
  final String hintText;
  const EditTextWidget(
      {super.key,
      required this.controller,
      this.scrollDir = Axis.horizontal,
      required this.hintText,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 35.0, bottom: 10),
      child: Container(
        height: maxLines == 1 ? 40 : 100,
        width: MediaQuery.of(context).size.width / 3.5,
        constraints: const BoxConstraints(maxWidth: 400, minWidth: 200),
        child: TextField(
          style: theme.textTheme.bodyText1,
          maxLines: maxLines,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: const EdgeInsets.only(
                  left: 15, top: 20.0, bottom: 20.0), // Added this
              hintStyle: theme.textTheme.bodyText1),
          controller: controller,
        ),
      ),
    );
    // SizedBox(
    //   width: scrollDir == Axis.horizontal ? 10 : 0,
    //   height: scrollDir == Axis.horizontal ? 0 : 10,
    // ),
    // Container(
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       border: Border.all(
    //         width: 1,
    //         color: Colors.black.withOpacity(0.5),
    //       ),
    //       color: Colors.green),
    //   child: Center(
    //       child: Text(
    //     "Subscribe",
    //     style: theme.textTheme.bodyText1,
    //   )),
    // )
  }
}
