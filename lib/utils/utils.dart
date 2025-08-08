import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mvvm_with_getx/resource/colors/app_color.dart';

class Utils {
  // this function is used to sent fous to the next text filed
  static void fieldFocusChange(
    BuildContext context,
    FocusNode current,
    FocusNode nextFocus,
  ) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  // toast massges
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.black,
      textColor: AppColor.white,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.black,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
      textColor: AppColor.white,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}

// | Category          | Utilities Included                        |
// | ----------------- | ----------------------------------------- |
// | ✅ Text/Validation | Email, password, phone, string formatting |
// | ✅ Date/Time       | Format, check today, time difference      |
// | ✅ Navigation      | Go to, go back, replace screens (GetX)    |
// | ✅ UI Feedback     | Toasts, Snackbars, Loading dialog         |
// | ✅ Device/Platform | isAndroid, isIOS                          |
// | ✅ Storage         | SharedPreferences simplified              |
// | ✅ Connectivity    | Check if device has internet              |
// | ✅ Security        | Hash strings (optional)                   |
