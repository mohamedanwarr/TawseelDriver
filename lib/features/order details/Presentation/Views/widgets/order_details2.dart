import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/call_customer_button.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/cancellation_reason.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/card%20details/first%20card.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/card%20details/second%20card.dart';
import 'package:tawsel_driver/features/order%20details/Presentation/Views/widgets/order_details_list.dart';
import 'customer_details.dart';

class OrderDetails2 extends StatelessWidget {
  const OrderDetails2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
          },
          icon: SvgPicture.asset("images/notifications icon2.svg"),
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "تفاصيل الطلب",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children:  [
          containercard(
          ),
          const SizedBox(
            height: 18,
          ),
          CancellationReason(),

          const SizedBox(
            height: 18,
          ),
          const SizedBox(
            height: 12,
          ),
          const OrderDetailsList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Text(
              "بيانات العميل",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const CustomerData(
            data: 'اسم العميل',
            value: 'إبراهيم خالد احمد',
          ),
          const CustomerData(
            data: 'عنوان العميل',
            value: 'شارع 44 - السبتية - القاهره',
          ),
          const CustomerData(
            data: 'طريقة الدفع',
            value: 'تم الدفع بالفيزا',
          ),
          const CustomerData(
            data: 'رقم العميل',
            value: '01452202515',
          ),
          const SizedBox(
            height: 12,
          ),
          const CallCustomerButton(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
