// ignore_for_file: prefer_const_constructors

import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        /* leading: SizedBox(
          height: 48,
          width: 48,
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: Text("Boleto está pago?"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Não"),
                            textColor: AppColors.primary,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text("Sim"),
                            textColor: AppColors.primary,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ));
            },
            icon: Icon(
              Icons.edit,
              color: AppColors.primary,
            ),
          ),
        ), */
        title: Text(
          data.name!,
          style: TextStyles.titleListTile,
        ),
        subtitle: Text(
          "Vence em ${data.dueDate}",
          style: TextStyles.captionBody,
        ),
        trailing: Text.rich(
          TextSpan(
            text: "R\$ ",
            style: TextStyles.trailingRegular,
            children: [
              TextSpan(
                text: "${data.value!.toStringAsFixed(2)}",
                style: TextStyles.trailingBold,
              ),
              TextSpan(text: "    status = ${data.status}")
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
