import 'package:flutter/material.dart';
import 'package:flutterbase/Constant/image.dart';
import 'package:flutterbase/Constant/styles.dart';
import 'package:flutterbase/Utils/common.dart';
import 'package:get/get.dart';
import 'package:flutterbase/Controllers/loginController.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: w(context, 0.06)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Hero(
                          tag: 'logo',
                          child: Image.asset(
                            logo,
                            scale: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: h(context, 0.01),
                        ),
                        Text('A simpler way to deliver', style: loginTagLine),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h(context, 0.15),
                  ),
                  Text('phoneNum'.tr, style: inputLabel),
                  new TextFormField(
                    focusNode: loginController.phoneFocus.value,
                    decoration: new InputDecoration(
                        isDense: true, border: InputBorder.none),
                    onChanged: loginController.setPhone,
                    style: inputText,
                  ),
                  Obx(
                    () => Divider(
                      thickness: 1,
                      height: 1,
                      color: loginController.phoneFocus.value.hasFocus
                          ? activeInputBorder
                          : inactiveInputBorder,
                    ),
                  ),
                  SizedBox(
                    height: h(context, 0.03),
                  ),
                  Text('code'.tr, style: inputLabel),
                  Stack(
                    children: [
                      new TextFormField(
                        focusNode: loginController.codeFocus.value,
                        decoration: new InputDecoration(
                            isDense: true, border: InputBorder.none),
                        onChanged: loginController.setVerifyCode,
                        style: inputText,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              loginController.sendCode();
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: borderGrey),
                                    borderRadius: BorderRadius.circular(80)),
                                child: Obx(() => Text(
                                    loginController.countDown.value == 0
                                        ? 'sendcode'.tr
                                        : '${loginController.countDown.value}s',
                                    style: sendCode))),
                          ))
                    ],
                  ),
                  Obx(
                    () => Divider(
                      thickness: 1,
                      height: 10,
                      color: loginController.codeFocus.value.hasFocus
                          ? activeInputBorder
                          : inactiveInputBorder,
                    ),
                  ),
                  SizedBox(
                    height: h(context, 0.05),
                  ),
                  InkWell(
                    onTap: () {
                      loginController.login();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      alignment: Alignment.center,
                      width: w(context, 1),
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow()],
                          color: primary,
                          borderRadius: BorderRadius.circular(120)),
                      child: Text(
                        'signin'.tr,
                        style: loginButtonText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h(context, 0.05),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        showMaterialModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          context: context,
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: h(context, 0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 5, left: 20, right: 20),
                                  child: Text(
                                    'Language',
                                    style: languageTitle,
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        loginController.updateLocale('en');
                                      },
                                      child: Container(
                                        width: w(context, 1),
                                        color: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'English',
                                          style: languageText,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                Divider(
                                  height: 1,
                                ),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    loginController.updateLocale('tr');
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: w(context, 1),
                                        color: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Turkish',
                                          style: languageText,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Language: ${loginController.selectedLanguage.value}'),
                              Icon(Icons.arrow_drop_down_rounded),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Obx(() => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey[300], blurRadius: 10)
                ]),
                height: h(context, 0.1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            loginController.setSelectedTab(0);
                          },
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    loginController.selectedTab.value == 0
                                        ? userActive
                                        : userInactive,
                                    scale: 1.5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'user'.tr,
                                    style:
                                        loginController.selectedTab.value == 0
                                            ? activeloginTabText
                                            : inactiveloginTabText,
                                  ),
                                ],
                              )),
                        )),
                    VerticalDivider(
                      indent: 30,
                      endIndent: 20,
                      color: divider,
                    ),
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            loginController.setSelectedTab(1);
                          },
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    loginController.selectedTab.value == 1
                                        ? driverActive
                                        : driverInactive,
                                    scale: 1.5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'driver'.tr,
                                    style:
                                        loginController.selectedTab.value == 1
                                            ? activeloginTabText
                                            : inactiveloginTabText,
                                  ),
                                ],
                              )),
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
