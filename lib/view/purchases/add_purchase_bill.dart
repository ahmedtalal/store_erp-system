import 'package:erb_system/resources/assets_manager.dart';
import 'package:erb_system/resources/color_manger.dart';
import 'package:erb_system/resources/style_manager.dart';
import 'package:erb_system/size_config.dart';
import 'package:erb_system/view/auth/component/text_fom_feild.dart';
import 'package:erb_system/view/home/components/appBar.dart';
import 'package:erb_system/view/home/components/botton.dart';
import 'package:erb_system/view/home/components/default_botton.dart';
import 'package:erb_system/view/home/components/default_container.dart';
import 'package:erb_system/view/home/components/default_table.dart';
import 'package:erb_system/view/home/components/drop_down.dart';
import 'package:erb_system/view/home/drop_down_par.dart';
import 'package:flutter/material.dart';


class AddPurchaseBill extends StatefulWidget {
  const AddPurchaseBill({Key? key}) : super(key: key);

  @override
  State<AddPurchaseBill> createState() => _AddPurchaseBillState();
}

class _AddPurchaseBillState extends State<AddPurchaseBill> {
  String? chose;
  String? chose1;
  String? chose2;
  DateTime orderDate = DateTime.now();
  int? selectedIndex;
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
    "الكميه المطلوبه",
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
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              DefaultContainer(title: 'اضافه فاتوره مشتريات'),
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
                                      SizedBox(
                                        width: getProportionateScreenWidth(40),
                                        height: 60,
                                        child: ElevatedButton(
                                          onPressed: () => _selectDate(context),
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(Colors.white)),
                                          child: Text(
                                            "${orderDate.year.toString()}/${orderDate.month.toString().padLeft(2, '0')}/${orderDate.day.toString().padLeft(2, '0')}",
                                            style:  TextStyle(
                                              color: ColorManager.black,
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
                                    width: getProportionateScreenWidth(50),
                                    height: getProportionateScreenHeight(90),
                                    padding: const EdgeInsets.only(top: 35),
                                    child: dropDown(
                                      const ['تم الطلب', 'تم الاستلام'],
                                      selectTalab: chose,
                                      onchanged: () => (val) {
                                        setState(() {
                                          chose = val;
                                        });
                                      },
                                      label: 'حاله الشراء',
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
                                        width: 200,
                                        height: 60,
                                        child: DefaultInputForm(
                                          hint: '',
                                          label: '',
                                          onTab: () {},
                                          validate: () {},
                                          onSave: () {},
                                          passFun: () {},
                                          perFix: Icon(Icons.search),
                                          color: Colors.white70,
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:getProportionateScreenWidth(35) ,
                                        height:getProportionateScreenHeight(132) ,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            )
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('اضافة صورة',style: style,),
                                            Image.asset(ImageAssets.iconDropDown20,width: getProportionateScreenWidth(35),height: getProportionateScreenHeight(85),)
                                          ],
                                        ),

                                      ),
                                      const SizedBox(width: 20,),

                                    ],),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      DefaultTable(
                                        columnData: columnData,
                                        size: getProportionateScreenWidth(15),
                                        color: ColorManager.primary,
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
                                      InkWell(
                                        onTap: (){},
                                        child: Container(
                                          width:getProportionateScreenWidth(42),
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(25)),
                                              border: Border.all(color: ColorManager.primary)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.add,
                                                color: ColorManager.primary,
                                              ),

                                              Text(
                                                'اضافه صنف ',
                                                style: TextStyle(
                                                  fontSize: getProportionateScreenWidth(5),
                                                  fontWeight: FontWeight.w500,
                                                  // color: ColorManager.primary

                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
                                        'المبلغ المدفوع',
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
                              const SizedBox(
                                height: 50,
                              ),
                              Botton(
                                color: ColorManager.white, title: 'اضافه', onTap: () {}, bgColor: ColorManager.black,)
                            ],
                          ),
                        ),
                      ),
                      DefaultAppBar()
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                      ),
                      child: DropDownList())),
            ],
          ),


        ));
  }
}
