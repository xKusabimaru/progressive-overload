import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/services/data_service.dart';
import 'package:progressive_overload/views/main_appBar.dart';
import 'package:progressive_overload/views/main_drawer.dart';
import 'package:progressive_overload/wrapper.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class DaysView extends StatefulWidget {
  final int split_id;

  const DaysView({Key? key, required this.split_id}) : super(key: key);

  @override
  State<DaysView> createState() => _SplitsViewState();
}

class _SplitsViewState extends State<DaysView> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = 56.0; //kToolbarHeight
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double usedHeight =
        screenHeight - (2 * appBarHeight) - statusBarHeight;
    final double usedWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: MainAppBar(title: "Days"),
        endDrawer: const MainDrawer(),
        body: Center(
            child: Container(
                color: Color(backGroundColor),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: (usedHeight / 36), horizontal: 20.0),
                    child: Center(
                      child: Column(children: [
                        Container(
                            height: 520,
                            child: StreamBuilder(
                                stream: DataService.getAllDays(widget.split_id),
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
                                      return Container(
                                        padding: const EdgeInsets.all(10),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5),
                                        color: Colors.red,
                                        child: Text(data[index]["date"]),
                                      );
                                    },
                                  );
                                }))
                      ]),
                    )))));
  }
}
