import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemsHeader extends StatelessWidget {

  final Color? imageColor, imageBackgroundColor;
  final String image;

  const AllExpensesItemsHeader({super.key, this.imageColor, this.imageBackgroundColor, required this.image});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackgroundColor ?? Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(image, colorFilter: ColorFilter.mode(imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),),),
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined,color: imageColor ?? Color(0xff064061),),),
      ],
    );
  }
}
