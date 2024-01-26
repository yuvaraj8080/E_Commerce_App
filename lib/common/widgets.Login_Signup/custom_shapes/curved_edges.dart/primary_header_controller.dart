import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../container/circular_container.dart';
import 'curved_edges.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              /// Creating the Stack Position
              Positioned(
                top: -220,
                right: -80,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 50,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              // Add your other widgets or content here
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvesEdge(),
      child: child,
    );
  }
}
