import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class NextPageItemWidget extends StatelessWidget {
  const NextPageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96.h,
      child: CustomImageView(
        imagePath: ImageConstant.img2032a79b08bfa91,
        height: 51.v,
        width: 96.h,
      ),
    );
  }
}
