import 'package:flutter/material.dart';

class OptionsList extends StatefulWidget {
  final List<String> list;
  const OptionsList({super.key, required this.list});

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  int currentIndex = -1;

  changeIndex(int index) {
    setState(() {
      if (index == currentIndex) {
        currentIndex = -1;
      } else {
        currentIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: 22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      width: 1,
                      color: index == currentIndex
                          ? Colors.green
                          : Colors.black.withOpacity(0.5))),
              child: InkWell(
                onTap: () {
                  changeIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Center(
                    child: Text(
                      widget.list[index],
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 12,
                          color: index == currentIndex
                              ? Colors.green
                              : Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: widget.list.length,
      ),
    );
  }
}
