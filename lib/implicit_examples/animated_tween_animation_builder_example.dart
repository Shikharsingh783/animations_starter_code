import 'package:flutter/material.dart';

class PulsatingCircleAnimation extends StatelessWidget {
  const PulsatingCircleAnimation({super.key});
  final double size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsating Circle Animation'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 200),
          duration: const Duration(milliseconds: 3000),
          builder: (context, size, widget) {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    blurRadius: size,
                    spreadRadius: size / 2,
                  ),
                ],
              ),
            );
          },
          child: null,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class PulsatingCircleAnimation extends StatefulWidget {
//   const PulsatingCircleAnimation({super.key});

//   @override
//   State<PulsatingCircleAnimation> createState() =>
//       _PulsatingCircleAnimationState();
// }

// class _PulsatingCircleAnimationState
//     extends State<PulsatingCircleAnimation> {
//   bool expanded = false;

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration.zero, () {
//       setState(() {
//         expanded = true;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double size = expanded ? 200 : 0;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Pulsating Circle Animation'),
//       ),
//       body: Center(
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 1500),
//           width: size,
//           height: size,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.blue,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.blue.withOpacity(0.5),
//                 blurRadius: size,
//                 spreadRadius: size / 2,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
