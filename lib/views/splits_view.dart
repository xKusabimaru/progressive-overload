import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/services/data_service.dart';
import 'package:progressive_overload/views/main_appBar.dart';
import 'package:progressive_overload/views/main_drawer.dart';
import 'package:progressive_overload/wrapper.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'days_view.dart';

final supabase = Supabase.instance.client;

class SplitsView extends StatefulWidget {
  const SplitsView({Key? key}) : super(key: key);

  @override
  State<SplitsView> createState() => _SplitsViewState();
}

class _SplitsViewState extends State<SplitsView> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = 56.0; //kToolbarHeight;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double usedHeight =
        screenHeight - (2 * appBarHeight) - statusBarHeight;
    final double usedWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: MainAppBar(title: "Splits"),
        endDrawer: const MainDrawer(),
        body: Center(
            child: Container(
                color: Color(backGroundColor),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: (usedHeight / 36), horizontal: 20.0),
                    child: Center(
                      child: Column(children: [
                        Center(
                          child: Container(
                              height: 520,
                              child: StreamBuilder(
                                  stream: DataService.getAllUnhiddenSplits(),
                                  builder: (context, AsyncSnapshot snapshot) {
                                    if (snapshot.hasError) {
                                      return Text("Something went wrong.");
                                    }
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return Text("Loading");
                                    }

                                    final data = snapshot.data;

                                    return ListView.builder(
                                      itemCount: data.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DaysView(
                                                          split_id: data[index]
                                                              ["split_id"]),
                                                ));
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5),
                                            color: Colors.red,
                                            child: Text(data[index]["sname"]),
                                          ),
                                        );
                                      },
                                    );
                                  })),
                        )
                      ]),
                    )))));
  }
}
