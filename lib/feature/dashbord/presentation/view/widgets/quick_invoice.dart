import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_container.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/lastest_transation_sec.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/quck_invoice_header.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/quick_voice.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 20),
          LatestTransaction(),
          Divider(height: 24, thickness: 1, color: const Color(0xfff1f1f1)),
          QuickVoiceForm(),
        ],
      ),
    );
  }
}

