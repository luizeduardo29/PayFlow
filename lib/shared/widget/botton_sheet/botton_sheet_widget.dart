import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widget/set_label_buttons/set_label_buttons.dart';

class BottonSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final String title;
  final String subTitle;

  const BottonSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secundaryLabel,
      required this.secundaryOnPressed,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: RotatedBox(
          quarterTurns: 1,
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                          text: title,
                          style: TextStyles.buttonBoldHeading,
                          children: [
                            TextSpan(
                                text: "\n$subTitle",
                                style: TextStyles.buttonHeading)
                          ], //$ = access variable in String
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    SetLabelButtons(
                        enablePrimaryColor: true,
                        primaryLabel: primaryLabel,
                        primaryOnPressed: primaryOnPressed,
                        secundaryLabel: secundaryLabel,
                        secundaryOnPressed: secundaryOnPressed)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
