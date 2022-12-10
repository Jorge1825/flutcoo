// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';

class IVTobBackSkipViewWidget extends StatelessWidget {
  const IVTobBackSkipViewWidget(
      {super.key,
      required this.animationController,
      required this.onBackClick,
      required this.onSkipClick});
  final AnimationController animationController;
  final VoidCallback onBackClick;
  final VoidCallback onSkipClick;

  @override
  Widget build(BuildContext context) {
    final _animation =
        Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0.0, 0.0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    // final _backAnimation =
    //     Tween<Offset>(begin: Offset(0, 0), end: Offset(-2, 0))
    //         .animate(CurvedAnimation(
    //   parent: animationController,
    //   curve: Interval(
    //     0.6,
    //     0.8,
    //     curve: Curves.fastOutSlowIn,
    //   ),
    // ));
    final _skipAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(2, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    return SlideTransition(
      position: _animation,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SizedBox(
          height: 58,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SlideTransition(
                //   position: _backAnimation,
                //   child:
                IconButton(
                  onPressed: onBackClick,
                  color: const Color.fromARGB(255, 139, 132, 132),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  //   ),
                ),
                // SlideTransition(
                //   position: _skipAnimation,
                //   child: IconButton(
                //     onPressed: onSkipClick,
                //     icon: const Text('Skip'),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
