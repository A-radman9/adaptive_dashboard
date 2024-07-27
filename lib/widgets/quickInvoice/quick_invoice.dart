import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_dashboard/widgets/lastTransactions/latest_transaction.dart';
import 'package:adaptive_dashboard/widgets/quickInvoice/quick_invoice_form.dart';
import 'package:adaptive_dashboard/widgets/quickInvoice/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          QuickInvoiceForm(),
          SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
