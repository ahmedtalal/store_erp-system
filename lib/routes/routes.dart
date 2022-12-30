
import 'package:erb_system/routes/deferred_loader.dart';
import 'package:erb_system/view/home/homepage.dart';
import 'package:erb_system/view/orders/add_orders.dart';
import 'package:erb_system/view/orders/collection_order_details.dart';
import 'package:erb_system/view/orders/confirm_order.dart';
import 'package:erb_system/view/orders/load_order.dart';
import 'package:erb_system/view/orders/order_maintenance.dart';
import 'package:erb_system/view/orders/orders_details.dart';
import 'package:erb_system/view/store/add_store.dart' deferred as store;
import 'package:erb_system/view/store/fiber_details.dart' deferred as fiber_details;
import 'package:erb_system/view/store/store_transfer/balance_modification.dart' deferred as balance_modification;
import 'package:erb_system/view/store/store_transfer/damage_details_transfer.dart'deferred as damage_details_transfer;
import 'package:erb_system/view/store/store_transfer/transfer_material.dart' deferred as transfer_material;
import 'package:erb_system/view/store/store_transfer/transfir_to_under_work.dart' deferred as transfir_to_under_work;
import 'package:erb_system/view/store/store_transfer/damage_details_transfer.dart';
import 'package:erb_system/view/store/store_transfer/store_transfer.dart';
import 'package:erb_system/view/store/stores.dart' deferred as stores;
import 'package:erb_system/view/store/store_transfer/store_transfer.dart' deferred as Stores_transfer;
import 'package:erb_system/view/store/po1_details.dart' deferred as po1_details;
import 'package:erb_system/view/store/mo4_details.dart' deferred as mo4_details;
import 'package:erb_system/view/store/mo_fiber.dart' deferred as mo_fiber;
import 'package:erb_system/view/store/d1_fiper.dart' deferred as d1_fiper;
import 'package:erb_system/view/store/PO_fiper.dart' deferred as PO_fiper;
import 'package:erb_system/view/suppliers/add_sup.dart' deferred as AddSup;
import 'package:erb_system/view/suppliers/add_cat_sup.dart' deferred as add_cat_sup;
import 'package:erb_system/view/suppliers/sup_cat.dart' deferred as sup_cat;
import 'package:erb_system/view/suppliers/suppliers.dart' deferred as suppliers;
import 'package:erb_system/view/purchases/add_purchase_bill.dart' deferred as add_purchase_bill;
import 'package:erb_system/view/purchases/purchases.dart' deferred as purchases;
import 'package:erb_system/view/purchases/confirm_back_purchase.dart' deferred as confirm_back_purchase;
import 'package:erb_system/view/purchases/confirm_purchase.dart' deferred as confirm_purchase;
import 'package:erb_system/view/category/add_cat.dart'deferred as Addcat;
import 'package:erb_system/view/category/category.dart'deferred as Categories;
import 'package:erb_system/view/category/add_nyotin.dart'deferred as AddNyotin;
import 'package:erb_system/view/category/nyotins.dart'deferred as Nyotins;
import 'package:erb_system/view/category/production.dart'deferred as Production;
import 'package:erb_system/view/industry/add_desc_industry.dart'deferred as AddDescIndustry;
import 'package:erb_system/view/industry/industry_desc.dart'deferred as IndustryDesc;
import 'package:erb_system/view/industry/confirm_indus.dart'deferred as ConfirmIndus;
import 'package:erb_system/view/industry/indus_orders.dart'deferred as IndustryOrder;
import 'package:erb_system/view/industry/spechial_add_indus.dart'deferred as IndustrySpecialAddition;
import 'package:erb_system/view/orders/add_orders.dart'deferred as AddOrderv;
import 'package:erb_system/view/orders/orders_details.dart'deferred as Talabat;
import 'package:erb_system/view/orders/confirm_order.dart'deferred as ConfirmOrder;
import 'package:erb_system/view/orders/load_order.dart'deferred as LoadOrder;
import 'package:erb_system/view/orders/order_maintenance.dart'deferred as OrderMaintenance;
import 'package:erb_system/view/orders/collection_order.dart'deferred as CollectionOrder;
import 'package:erb_system/view/orders/collection_order_details.dart'deferred as CollectionOrderDetails;


import 'package:qlevar_router/qlevar_router.dart';
//updated
class Routes {
  static final routes = <QRoute>[
    QRoute(path: '/', builder: () =>  HomePage()),

    // route Store
    QRoute(
      path: '/addStore',
      builder: () =>  store.add_Stock(),
      middleware: [
        DefferedLoader(store.loadLibrary),
      ],
    ),


    QRoute(
      path: '/balance_modification',
      builder: () =>  balance_modification.ModificationBalance(),
      middleware: [
        DefferedLoader(balance_modification.loadLibrary),
      ],
    ),
    QRoute(
      path: '/damage_details_transfer',
      builder: () =>  damage_details_transfer.ExchangePart(),
      middleware: [
        DefferedLoader(damage_details_transfer.loadLibrary),
      ],
    ),
    QRoute(
      path: '/fiber_details',
      builder: () =>  fiber_details.FiperDetails(),
      middleware: [
        DefferedLoader(fiber_details.loadLibrary),
      ],
    ),

    QRoute(
      path: '/transfir_to_under_work',
      builder: () =>  transfir_to_under_work.transfer_to_under_work(),
      middleware: [
        DefferedLoader(transfir_to_under_work.loadLibrary),
      ],
    ),
    QRoute(
      path: '/transfer_material',
      builder: () =>  transfer_material.transfer_to_under_work(),
      middleware: [
        DefferedLoader(transfer_material.loadLibrary),
      ],
    ),

    QRoute(
      path: '/mo4_details',
      builder: () =>  mo4_details.MO4Details(),
      middleware: [
        DefferedLoader(mo4_details.loadLibrary),
      ],
    ),
    QRoute(
      path: '/mo_fiber',
      builder: () =>  mo_fiber.MODetails(),
      middleware: [
        DefferedLoader(mo_fiber.loadLibrary),
      ],
    ),
    QRoute(
      path: '/PO_fiper',
      builder: () =>  PO_fiper.POFiper(),
      middleware: [
        DefferedLoader(PO_fiper.loadLibrary),
      ],
    ),
    QRoute(
      path: '/d1_fiper',
      builder: () =>  d1_fiper.D1Details(),
      middleware: [
        DefferedLoader(d1_fiper.loadLibrary),
      ],
    ),


    QRoute(
      path: '/po1_details',
      builder: () =>  po1_details.PO1Details(),
      middleware: [
        DefferedLoader(po1_details.loadLibrary),
      ],
    ),
    QRoute(
      path: '/Stores',
      builder: () => stores.Stock(),
      middleware: [
        DefferedLoader(stores.loadLibrary),
      ],
    ),
    QRoute(
      path: '/Stores_transfer',
      builder: () => Stores_transfer.StoreTransfer(),
      middleware: [
        DefferedLoader(Stores_transfer.loadLibrary),
      ],
    ),

    //route supplier
    QRoute(
      path: '/AddSup',
      builder: () =>AddSup.AddSup(),
      middleware: [
        DefferedLoader(AddSup.loadLibrary),
      ],
    ),
    QRoute(
      path: '/sup_cat',
      builder: () =>sup_cat.SupCat(),
      middleware: [
        DefferedLoader(sup_cat.loadLibrary),
      ],
    ),
    QRoute(
      path: '/add_cat_sup',
      builder: () =>add_cat_sup.AddSupCat(),
      middleware: [
        DefferedLoader(add_cat_sup.loadLibrary),
      ],
    ),
    QRoute(
      path: '/suppliers',
      builder: () =>suppliers.Suppliers(),
      middleware: [
        DefferedLoader(suppliers.loadLibrary),
      ],
    ),

    // route category
    QRoute(
      path: '/addcat',
      builder: () =>Addcat.AddCat(),
      middleware: [
        DefferedLoader(Addcat.loadLibrary),
      ],
    ),
    QRoute(
      path: '/Categories',
      builder: () =>Categories.Categories(),
      middleware: [
        DefferedLoader(Categories.loadLibrary),
      ],
    ),
    QRoute(
      path: '/AddNyotin',
      builder: () =>AddNyotin.AddNyotin(),
      middleware: [
        DefferedLoader(AddNyotin.loadLibrary),
      ],
    ),
    QRoute(
      path: '/Nyotins',
      builder: () =>Nyotins.Nyotins(),
      middleware: [
        DefferedLoader(Nyotins.loadLibrary),
      ],
    ),
    QRoute(
      path: '/Production',
      builder: () =>Production.Production(),
      middleware: [
        DefferedLoader(Production.loadLibrary),
      ],
    ),


    //route purchases
    QRoute(
      path: '/add_purchase_bill',
      builder: () =>add_purchase_bill.AddPurchaseBill(),
      middleware: [
        DefferedLoader(add_purchase_bill.loadLibrary),
      ],
    ),
    QRoute(
      path: '/purchases',
      builder: () =>purchases.Purchases(),
      middleware: [
        DefferedLoader(purchases.loadLibrary),
      ],
    ),


    QRoute(
      path: '/confirm_purchase',
      builder: () =>confirm_purchase.ConfirmPurchase(),
      middleware: [
        DefferedLoader(confirm_purchase.loadLibrary),
      ],
    ),
    QRoute(
      path: '/confirm_back_purchase',
      builder: () =>confirm_back_purchase.ConfirmBackPurchases(),
      middleware: [
        DefferedLoader(confirm_back_purchase.loadLibrary),
      ],
    ),


    //industry
    QRoute(
      path: '/AddDescIndustry',
      builder: () =>AddDescIndustry.AddDescIndustry(),
      middleware: [
        DefferedLoader(AddDescIndustry.loadLibrary),
      ],
    ),
    QRoute(
      path: '/IndustryDesc',
      builder: () =>IndustryDesc.IndustryDesc(),
      middleware: [
        DefferedLoader(IndustryDesc.loadLibrary),
      ],
    ),
    QRoute(
      path: '/ConfirmIndus',
      builder: () =>ConfirmIndus.ConfirmIndus(),
      middleware: [
        DefferedLoader(ConfirmIndus.loadLibrary),
      ],
    ),
    QRoute(
      path: '/IndustryOrder',
      builder: () =>IndustryOrder.IndustryOrder(),
      middleware: [
        DefferedLoader(IndustryOrder.loadLibrary),
      ],
    ),
    QRoute(
      path: '/IndustrySpecialAddition',
      builder: () =>IndustrySpecialAddition.IndustrySpecialAddition(),
      middleware: [
        DefferedLoader(IndustrySpecialAddition.loadLibrary),
      ],
    ),

    // route orders
    //orders
    QRoute(
      path: '/AddOrderv',
      builder: () =>AddOrderv.AddOrder(),
      middleware: [
        DefferedLoader(AddOrderv.loadLibrary),
      ],
    ),
    QRoute(
      path: '/Talabat',
      builder: () =>Talabat.Talabat(),
      middleware: [
        DefferedLoader(Talabat.loadLibrary),
      ],
    ),
    QRoute(
      path: '/ConfirmOrder',
      builder: () =>ConfirmOrder.ConfirmOrder(),
      middleware: [
        DefferedLoader(ConfirmOrder.loadLibrary),
      ],
    ),
    QRoute(
      path: '/LoadOrder',
      builder: () =>LoadOrder.LoadOrder(),
      middleware: [
        DefferedLoader(LoadOrder.loadLibrary),
      ],
    ),
    QRoute(
      path: '/OrderMaintenance',
      builder: () =>OrderMaintenance.OrderMaintenance(),
      middleware: [
        DefferedLoader(OrderMaintenance.loadLibrary),
      ],
    ),
    QRoute(
      path: '/CollectionOrder',
      builder: () =>CollectionOrder.CollectionOrder(),
      middleware: [
        DefferedLoader(CollectionOrder.loadLibrary),
      ],
    ),
    QRoute(
      path: '/CollectionOrderDetails',
      builder: () =>CollectionOrderDetails.CollectionOrderDetails(),
      middleware: [
        DefferedLoader(CollectionOrderDetails.loadLibrary),
      ],
    ),




  ];
}
