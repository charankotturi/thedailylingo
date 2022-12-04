import 'package:flutter/material.dart';
import 'package:thedailylingo/constants.dart';
import 'package:thedailylingo/list_options.dart';
import 'package:thedailylingo/textfield_widget.dart';
import 'package:thedailylingo/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Daily Lingo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        child: Column(
          children: [
            // APP BAR
            Container(
              width: double.infinity,
              height: APP_BAR_HEIGHT,
              color: Colors.green,
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Daily Lingo",
                              style: theme.textTheme.headline1,
                            ),
                            Text(
                              "Learn any language by reading two pages a day",
                              style: theme.textTheme.headline2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: ListView(
                    children: [
                      // Body
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Subscribe now to get a two page article everyday to your personal email address.",
                          style: theme.textTheme.bodyText1
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OptionsList(list: [
                          "Hindi",
                          "English",
                          "Telugu",
                          "Kanada",
                          "Tamil"
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                        child: const OptionsList(list: ["Story", "Articles"]),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25.0),
                            child: EditTextWidget(
                              controller: TextEditingController(),
                              hintText: "Email Address",
                            ),
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            child: Center(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                "Subscribe",
                                style: theme.textTheme.subtitle1
                                    ?.copyWith(fontSize: 13),
                              ),
                            )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.75,
                        color: Colors.black.withOpacity(0.1),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "About Us",
                          style: theme.textTheme.subtitle2,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "We are making learning any new language easy through consistancy and quality. We have two types of content which we share to your email they are articles and stories type. In story mode, we send two pages of a story everyday until the story is finish and we start with a different story and in the articles mode, we provide two page articles which are fun to read and the difficulty level increases everyday and also through feedback. We believe this product will help increase the vocabulary and efficiency of reading.",
                          style: theme.textTheme.bodyText1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      EditTextWidget(
                        controller: TextEditingController(),
                        hintText: "Let us know if there is any issue.😀",
                        maxLines: 4,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green),
                              child: Center(
                                  child: Text(
                                "Send!",
                                style: theme.textTheme.subtitle1
                                    ?.copyWith(fontSize: 13),
                              )),
                            ),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                      Container(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              color: Colors.grey.shade300,
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "@2023 Tech Notification",
                          style: theme.textTheme.bodyText2,
                        ),
                        Expanded(child: Container()),
                        Text("Contact", style: theme.textTheme.bodyText2),
                        const SizedBox(
                          width: 25,
                        ),
                        Text("Privacy", style: theme.textTheme.bodyText2),
                        const SizedBox(
                          width: 25,
                        ),
                        Text("Terms", style: theme.textTheme.bodyText2)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
