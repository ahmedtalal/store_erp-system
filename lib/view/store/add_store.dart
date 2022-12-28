import 'package:erb_system/resources/color_manger.dart';
import 'package:erb_system/resources/style_manager.dart';
import 'package:erb_system/size_config.dart';
import 'package:erb_system/view/auth/component/text_fom_feild.dart';
import 'package:erb_system/view/home/components/botton.dart';
import 'package:erb_system/view/home/components/default_botton.dart';
import 'package:erb_system/view/home/components/default_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class add_Stock extends StatefulWidget {
  const add_Stock({Key? key}) : super(key: key);

  @override
  State<add_Stock> createState() => _add_StockState();
}

class _add_StockState extends State<add_Stock> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            DefaultContainer(
              title: 'اضافة مخزون',
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      'الوصف',
                      style: getSemiBoldStyle(color: ColorManager.black),
                    ),
                    Container(
                      width: getProportionateScreenWidth(50),
                      height: 60,
                      child: DefaultInputForm(
                        hint: '',
                        label: '',
                        onTab: () {},
                        validate: () {},
                        onSave: () {},
                        passFun: () {},
                        color: Colors.white70,
                        obscureText: false,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      'اسم المخزن',
                      style: getSemiBoldStyle(color: ColorManager.black),
                    ),
                    Container(
                      width: getProportionateScreenWidth(50),
                      height: 60,
                      child: DefaultInputForm(
                        hint: '',
                        label: '',
                        onTab: () {},
                        validate: () {},
                        onSave: () {},
                        passFun: () {},
                        color: Colors.white70,
                        obscureText: false,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 120,
                ),
              ],
            ),
            const SizedBox(
              height: 300,
            ),
            Botton(
                color: ColorManager.white, title: 'اضافه', onTap: () {}, bgColor: ColorManager.black,),
          ],
        ),
      ),
    ));
  }
}