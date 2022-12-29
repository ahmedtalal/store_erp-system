import 'package:erb_system/resources/assets_manager.dart';
import 'package:erb_system/resources/color_manger.dart';
import 'package:erb_system/resources/style_manager.dart';
import 'package:erb_system/size_config.dart';
import 'package:erb_system/view/auth/component/text_fom_feild.dart';
import 'package:erb_system/view/home/components/botton.dart';
import 'package:erb_system/view/home/components/default_botton.dart';
import 'package:erb_system/view/home/components/default_container.dart';
import 'package:erb_system/view/home/components/default_table.dart';
import 'package:erb_system/view/home/components/drop_down.dart';
import 'package:flutter/material.dart';


class ConfirmBackPurchases extends StatefulWidget {
  const ConfirmBackPurchases({Key? key}) : super(key: key);

  @override
  State<ConfirmBackPurchases> createState() => _ConfirmBackPurchasesState();
}

class _ConfirmBackPurchasesState extends State<ConfirmBackPurchases> {
  String? chose;
  String? chose1;
  String? chose2;
  int? selectedIndex;

  DateTime orderDate = DateTime.now();


  List dataTable = [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.red,
            )),
        const Text('اضافه صنف')
      ],
    )
  ];

  List data = [
    {
      "1": "١/١٢.٢٠٢٢",
      "2": "شراء",
      "3": "022",
      "4": "100",
      "5": "كيلو",
      "6": "٣٠",
    },
    {
      "1": "١/١٢.٢٠٢٢",
      "2": "شراء",
      "3": "022",
      "4": "100",
      "5": "كيلو",
      "6": "٣٠",
    },
  ];

  List<String> columnData = [
    "صوره الصنف",
    "الاجمالي",
    "السعر",
    "الوحده",
    "الكميه المرتجعه",
    "اسم الصنف",
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: orderDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != orderDate) {
      setState(() {
        orderDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    TextStyle style = TextStyle(fontSize: getProportionateScreenWidth(4));
    return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  DefaultContainer(title: 'تاكيد مرتجع فاتوره شراء'),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'التاريخ',
                            style: getSemiBoldStyle(color: ColorManager.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(40),
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () => _selectDate(context),
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                              child: Text(
                                '$orderDate',
                                style: const TextStyle(
                                  color: Color(0xff82225E),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Container(
                        width: getProportionateScreenWidth(70),
                        height: getProportionateScreenHeight(90),
                        padding: const EdgeInsets.only(top: 35),
                        child: dropDown(
                          const ['كلي', 'تم جزئي'],
                          selectTalab: chose,
                          onchanged: () => (val) {
                            setState(() {
                              chose = val;
                            });
                          },
                          label: 'حاله المرتجع',
                          foColor: Colors.white,
                          bgColor: ColorManager.primary,
                          dpColor: ColorManager.primary,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Column(
                        children: [
                          Text(
                            'اسم المورد',
                            style: getSemiBoldStyle(color: ColorManager.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width:getProportionateScreenWidth(50),
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
                          ),
                        ],
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Column(
                        children: [
                          Text(
                            'اسم الفاتوره',
                            style: getSemiBoldStyle(color: ColorManager.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width:getProportionateScreenWidth(50),
                            height: 60,
                            child: DefaultInputForm(
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
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  DefaultTable(
                    columnData: columnData,
                    size: getProportionateScreenWidth(5),
                    color: ColorManager.second,
                    rows: data
                        .map((data) => DataRow(cells: [
                      DataCell(Image.asset(ImageAssets.iconDropDown23,width: 50,height: 50,)),
                      DataCell(Text(
                        data['5'],style: style,
                      )),
                      DataCell(Text(
                        data['4'],style: style,
                      )),
                      DataCell(Text(
                        data['3'],style: style,
                      )),
                      DataCell(Text(
                        data['2'],style: style,
                      )),
                      DataCell(Text(
                        data['1'],style: style,
                      )),
                    ]))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                            width: getProportionateScreenWidth(59),
                            height: getProportionateScreenHeight(50),
                            child: dropDown(
                              const [
                                'خزينه المصنع',
                                'البنك الاهلي',
                                'فوافون كاش',
                                'بنك مصر',
                              ],
                              selectTalab: chose1,
                              onchanged: () => (val) {
                                setState(() {
                                  chose1 = val;
                                });
                              },
                              label: 'الخزينه',
                              foColor: Colors.white,
                              bgColor: ColorManager.primary,
                              dpColor: ColorManager.primary,
                            )),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Column(
                        children: [
                          Text(
                            'الشحن',
                            style: getSemiBoldStyle(color: ColorManager.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(60),
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
                          ),
                        ],
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Column(
                        children: [
                          Text(
                            'المبلغ المتبقي',
                            style: getSemiBoldStyle(color: ColorManager.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(60),
                            height: 60,
                            child: DefaultInputForm(
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
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Column(
                        children: [
                          Text(
                            'المبلغ المرتجع',
                            style: getSemiBoldStyle(color: ColorManager.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(60),
                            height: 60,
                            child: DefaultInputForm(
                              hint: '',
                              label: '',
                              onTab: () {},
                              validate: () {},
                              onSave: () {},
                              passFun: () {},
                              color: Colors.white,
                              obscureText: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Botton(
                    color: ColorManager.white, title: 'تاكيد', onTap: () {}, bgColor: ColorManager.black,),
                ],
              ),
            ),
          ),
        ));
  }
}
