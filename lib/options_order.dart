// import 'theme.dart';
// import 'package:flutter/material.dart';

// class OptionsOrder extends StatefulWidget {
//   @override
//   _OptionsOrderState createState() => _OptionsOrderState();
// }

// class _OptionsOrderState extends State<OptionsOrder> {
//   late int selectedRadio;

//   @override
//   void initState() {
//     super.initState();
//     selectedRadio = 0; // Initially, no radio button is selected
//   }

//   setSelectedRadio(int val) {
//     setState(() {
//       selectedRadio = val;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData(
//         unselectedWidgetColor: blackColor,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Flexible(
//             flex: 1,
//             child: RadioListTile(
//               value: 1,
//               groupValue: selectedRadio,
//               onChanged: (val) {
//                 setSelectedRadio(val!);
//               },
//               title: FittedBox(
//                 child: Text(
//                   'Takeaway',
//                   textAlign: TextAlign.left,
//                   style: selectedRadio == 1
//                       ? buttonTextStyle.copyWith(
//                           fontSize: 18,
//                           fontWeight: semibold,
//                         )
//                       : primaryTextStyle.copyWith(
//                           fontSize: 18,
//                           fontWeight: semibold,
//                         ),
//                 ),
//               ),
//               dense: true,
//               tileColor: selectedRadio == 1 ? purpleColor : null,
//               activeColor: whiteColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: RadioListTile(
//               value: 2,
//               groupValue: selectedRadio,
//               onChanged: (val) {
//                 setSelectedRadio(val!);
//               },
//               title: FittedBox(
//                 child: Text(
//                   'Dine In',
//                   style: selectedRadio == 2
//                       ? buttonTextStyle.copyWith(
//                           fontSize: 18,
//                           fontWeight: semibold,
//                         )
//                       : primaryTextStyle.copyWith(
//                           fontSize: 18,
//                           fontWeight: semibold,
//                         ),
//                 ),
//               ),
//               dense: true,
//               tileColor: selectedRadio == 2 ? purpleColor : null,
//               activeColor: whiteColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: RadioListTile(
//               value: 3,
//               groupValue: selectedRadio,
//               onChanged: (val) {
//                 setSelectedRadio(val!);
//               },
//               title: FittedBox(
//                 child: Text(
//                   'Ojol',
//                   style: selectedRadio == 3
//                       ? buttonTextStyle.copyWith(
//                           fontSize: 18,
//                           fontWeight: semibold,
//                         )
//                       : primaryTextStyle.copyWith(
//                           fontSize: 18,
//                           fontWeight: semibold,
//                         ),
//                 ),
//               ),
//               dense: true,
//               tileColor: selectedRadio == 3 ? purpleColor : null,
//               activeColor: whiteColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:testapp/theme.dart';
import 'package:flutter/material.dart';

class OptionsOrder extends StatefulWidget {
  @override
  _OptionsOrderState createState() => _OptionsOrderState();
}

class _OptionsOrderState extends State<OptionsOrder> {
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0; // Initially, no radio button is selected
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: blackColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: RadioListTile(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: FittedBox(
                child: Text(
                  'Takeaway',
                  textAlign: TextAlign.left,
                  style: selectedRadio == 1
                      ? buttonTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        )
                      : primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                ),
              ),
              dense: true,
              tileColor: selectedRadio == 1 ? purpleColor : null,
              activeColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: RadioListTile(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: FittedBox(
                child: Text(
                  'Dine In',
                  style: selectedRadio == 2
                      ? buttonTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        )
                      : primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                ),
              ),
              dense: true,
              tileColor: selectedRadio == 2 ? purpleColor : null,
              activeColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: RadioListTile(
              value: 3,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: FittedBox(
                child: Text(
                  'Ojol',
                  style: selectedRadio == 3
                      ? buttonTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        )
                      : primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                ),
              ),
              dense: true,
              tileColor: selectedRadio == 3 ? purpleColor : null,
              activeColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
