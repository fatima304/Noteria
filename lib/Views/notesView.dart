import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:noteapp/Views/Widgets/addNoteSheet.dart';
import 'package:noteapp/Views/Widgets/notesViewBody.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  bool isDarkTheme = true;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Theme(
          data: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
          child: Scaffold(
            body: const NotesViewBody(),
            floatingActionButton: SpeedDial(
              backgroundColor: const Color(0xff39a092),
              animatedIcon: AnimatedIcons.menu_close,
              children: [
                SpeedDialChild(
                  child: const Icon(Icons.add),
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(30, 30),
                          topRight: Radius.elliptical(30, 30),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return const AddNoteSheet();
                      },
                    );
                  },
                ),
                SpeedDialChild(
                  child: Icon(
                    isDarkTheme ? Icons.brightness_4 : Icons.brightness_2,
                  ),
                  onTap: () {
                    // Toggle the theme
                    setState(() {
                      isDarkTheme = !isDarkTheme;
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
