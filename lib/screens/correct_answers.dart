import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CorrectAnswers extends StatelessWidget {
  const CorrectAnswers(this.summary, {super.key});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 470,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: summary.map(
            (data) {
              return Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: data['selected_answer'] == data['answer']
                          ? Colors.greenAccent
                          : Colors.blue,
                    ),
                    child: Text(((data['index'] as int) + 1).toString()),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['selected_answer'] as String,
                          style: const TextStyle(color: Colors.blueAccent),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          data['answer'] as String,
                          style: const TextStyle(color: Colors.greenAccent),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                        // Text('Question'),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
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