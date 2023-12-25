import 'package:flutter/material.dart';

class CorrectAnswers extends StatelessWidget {
  const CorrectAnswers({super.key, required this.summary});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summary.map(
        (data) {
          return Row(
            children: [
              Text(data['index'] as String),
              Column(
                children: [
                  Text(data['question'] as String),
                  Text(data['answer'] as String),
                  Text(data['selected_answer'] as String),
                ],
              )
            ],
          );
        },
      ).toList(),
    );
  }
}
// return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               questions[0].question,
//               style: GoogleFonts.openSans(
//                 color: Colors.white,
//                 fontSize: 15,
//               ),
//               textAlign: TextAlign.left,
//             ),
//             const SizedBox(height: 10),
//             Text(
//               questions[0].answers[0],
//               style: GoogleFonts.openSans(
//                 color: Colors.white,
//                 fontSize: 15,
//               ),
//               textAlign: TextAlign.left,
//             ),
//             const SizedBox(height: 10),
//             Text(
//               selectedAnswers[0],
//               style: GoogleFonts.openSans(
//                 color: Colors.white,
//                 fontSize: 15,
//               ),
//               textAlign: TextAlign.left,
//             ),
//             const SizedBox(height: 10),
//           ],
//         );
//       },)toList(),