import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/payments/controller/payment_controller.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/cable_tv_view/cable_tv_2.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/electricity/electricity_view2.dart';

import '../../../../link_bank/widgets/bank_grid_view.dart';
import '../../../widgets/network_options.dart';

class ElectricityView extends StatelessWidget {
  ElectricityView({super.key});
  final ctrl = Get.put(PaymenController());

  @override
  Widget build(BuildContext context) {
    return NetworkOptions(
      itemCount: ctrl.power.length,
      ctrl: ctrl,
      title: 'Select Utility',
      builder: (p0, p1) {
        return LogoDispaly(
          onPressed: () {
            ctrl.setIndex(p1);
            Get.to(() => ElectricityView2());
          },
          asset: ctrl.power[p1],
        );
      },
    );
  }
}
