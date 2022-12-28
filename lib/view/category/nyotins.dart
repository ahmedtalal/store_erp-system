import 'package:erb_system/resources/assets_manager.dart';
import 'package:erb_system/resources/color_manger.dart';
import 'package:erb_system/resources/style_manager.dart';
import 'package:erb_system/view/auth/component/text_fom_feild.dart';
import 'package:erb_system/view/home/components/default_botton.dart';
import 'package:erb_system/view/home/components/default_container.dart';
import 'package:erb_system/view/home/components/default_table.dart';
import 'package:erb_system/view/home/components/drop_down.dart';
import 'package:flutter/material.dart';

class Nyotins extends StatefulWidget {
  const Nyotins({Key? key}) : super(key: key);

  @override
  State<Nyotins> createState() => _NyotinsState();
}

class _NyotinsState extends State<Nyotins> {
  String? chose;
  String? chose1;
  String? chose2;
  int? selectedIndex;

  List data = [
    {
      "1": "كيلو",
    },
    {
      "1": "كيلو",
    },
  ];

  List<String> columnData = [
    "اسم الوحده",
  ];

  @override
  Widget build(BuildContext context) {
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
              DefaultContainer(title: 'وحدات القياس'),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 71),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                          data.length,
                          (index) => Column(
                                children: [
                                  SizedBox(
                                      width: 200,
                                      child: dropDown(
                                        const [
                                          'تعديل',
                                          'حزف',
                                        ],
                                        selectTalab: index == selectedIndex
                                            ? chose1
                                            : chose2,
                                        onchanged: () => (val) {
                                          setState(() {
                                            selectedIndex = index;
                                            chose1 = val;
                                          });
                                        },
                                        label: 'خيارات',
                                        foColor: Colors.white,
                                        bgColor: ColorManager.primary,
                                        dpColor: ColorManager.primary,
                                      )),
                                  const SizedBox(
                                    height: 10,
                                  )
                                ],
                              )),
                    ),
                  ),
                  DefaultTable(
                    columnData: columnData,
                    size: 90,
                    color: Colors.grey.shade800,
                    rows: data
                        .map((data) => DataRow(cells: [
                              DataCell(Text(
                                data['1'],
                              )),
                            ]))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}