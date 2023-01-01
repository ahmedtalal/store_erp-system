import 'package:erb_system/resources/color_manger.dart';
import 'package:erb_system/resources/style_manager.dart';
import 'package:erb_system/size_config.dart';
import 'package:erb_system/view/auth/component/text_fom_feild.dart';
import 'package:erb_system/view/home/components/botton.dart';
import 'package:erb_system/view/home/components/default_container.dart';
import 'package:erb_system/view/home/components/drop_down.dart';
import 'package:flutter/material.dart';

class DespositTreasury extends StatefulWidget {
  DespositTreasury({Key? key}) : super(key: key);

  @override
  State<DespositTreasury> createState() => _DespositTreasuryState();
}

class _DespositTreasuryState extends State<DespositTreasury> {
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  String? chose1;

  String? chose2;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    TextStyle style = TextStyle(fontSize: getProportionateScreenWidth(5));
    return Center(
      child: Container(
        width: getProportionateScreenWidth(230),
        height: getProportionateScreenWidth(150),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorManager.primary, width: 2)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              DefaultContainer(title: 'ايداع في الخزينه'),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width <= 708
                        ? getProportionateScreenWidth(65)
                        : getProportionateScreenWidth(43),
                    height: getProportionateScreenHeight(90),
                    padding: const EdgeInsets.only(top: 35),
                    child: dropDown(
                      const [
                        "شخصي",
                        "ارباح محتجزه",
                      ],
                      selectTalab: chose1,
                      onchanged: () => (val) {
                        setState(() {
                          chose1 = val;
                        });
                      },
                      label: 'مصدر الايداع',
                      foColor: Colors.white,
                      bgColor: ColorManager.primary,
                      dpColor: ColorManager.primary,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'مبلغ الايداع',
                        style: getSemiBoldStyle(
                            color: ColorManager.black,
                            fontSize: getProportionateScreenWidth(5)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(50),
                        height: 60,
                        child: DefaultInputForm(
                          controller: controller3,
                          hint: '',
                          label: '',
                          onTab: () {},
                          validate: () {},
                          onSave: () {},
                          passFun: () {},
                          color: Colors.grey,
                          obscureText: false,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width <= 708
                        ? getProportionateScreenWidth(65)
                        : getProportionateScreenWidth(43),
                    height: getProportionateScreenHeight(90),
                    padding: const EdgeInsets.only(top: 35),
                    child: dropDown(
                      const [
                        "خزينة المصنع",
                        "البنك االاهلي",
                      ],
                      selectTalab: chose2,
                      onchanged: () => (val) {
                        setState(() {
                          chose2 = val;
                        });
                      },
                      label: 'الخزينه المودع فيها',
                      foColor: Colors.white,
                      bgColor: ColorManager.primary,
                      dpColor: ColorManager.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Container(
                width: getProportionateScreenWidth(90),
                height: getProportionateScreenHeight(250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: ColorManager.primary, width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: ColorManager.primary,
                        ),
                        Text(
                          'يرجي توضيح سبب الايداع',
                          style: style,
                        ),
                        Icon(
                          Icons.close,
                          color: ColorManager.primary,
                        )
                      ],
                    ),
                    Divider(
                      color: ColorManager.primary,
                      thickness: 2,
                    ),
                    TextFormField(
                      controller: controller4,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Botton(
                bgColor: Colors.black,
                color: Colors.white,
                title: 'ايداع',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
