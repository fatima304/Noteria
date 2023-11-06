// import 'package:noteapp/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// class FloatingActionMenu extends StatelessWidget {
//   const FloatingActionMenu({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SpeedDial(
//       backgroundColor: Colors.black,
//       animatedIcon: AnimatedIcons.menu_close,
//       foregroundColor: Colors.white,
//       overlayColor: Colors.amber,
//       overlayOpacity: 0.4,
//       children: [
//         SpeedDialChild(
//           backgroundColor: Colors.white70,
//           child: const Icon(color: Color(0xff000000), Icons.note_alt_rounded),
//           label: 'Add Note',
//           onTap: () {
//             showModalBottomSheet(
//               isScrollControlled: true,
//               context: context,
//               builder: (context) {
//                 return const AddNoteBottomSheet();
//               },
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             );
//           },
//         ),
//         SpeedDialChild(
//           backgroundColor: Colors.green,
//           child: Icon(
//             NotesApp.themeNotifier.value == ThemeMode.light
//                 ? Icons.dark_mode
//                 : Icons.light_mode,
//           ),
//           onTap: () {
//             NotesApp.themeNotifier.value =
//                 NotesApp.themeNotifier.value == ThemeMode.light
//                     ? ThemeMode.dark
//                     : ThemeMode.light;
//           },
//           label: 'Dark',
//         ),
//       ],
//     );
//   }
// }
