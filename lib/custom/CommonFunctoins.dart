import 'dart:io';
import 'package:active_ecommerce_seller_app/custom/localization.dart';
import 'package:active_ecommerce_seller_app/helpers/shared_value_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommonFunctions{
  BuildContext context;

  CommonFunctions(this.context);

  appExitDialog() {
    showDialog(
        context: context,
        builder: (context) => Directionality(
          textDirection: app_language_rtl.$ ? TextDirection.rtl : TextDirection.ltr,
          child: AlertDialog(
            content: Text(LangText(context: context).getLocal().common_close_app),
            actions: [
              TextButton(
                  onPressed: () {
                    Platform.isAndroid ? SystemNavigator.pop() : exit(0);
                  },
                  child: Text(AppLocalizations.of(context).common_yes)),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(AppLocalizations.of(context).common_no)),
            ],
          ),
        ));
  }
}