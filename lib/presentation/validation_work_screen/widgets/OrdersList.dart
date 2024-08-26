// import 'package:flutter/material.dart';
// import 'package:gecimmoa/presentation/validation_work_screen/widgets/order_cart.dart'; // Import the OrderCard widget
// class OrdersList extends StatelessWidget {
//   final List<Map<String, String>> orders = [
//     {
//       'orderNumber': 'FA-111',
//       'amount': '10000.0000',
//       'responsible': 'Yassine',
//     },
//     {
//       'orderNumber': 'FA-112',
//       'amount': '15000.0000',
//       'responsible': 'Ahmed',
//     },
//     {
//       'orderNumber': 'FA-113',
//       'amount': '20000.0000',
//       'responsible': 'Sara',
//     },
//   ];

//   void _acceptOrder(String orderNumber) {
//     print('Accepted $orderNumber');
//   }

//   void _rejectOrder(String orderNumber) {
//     print('Rejected $orderNumber');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: orders.length,
//       itemBuilder: (context, index) {
//         final order = orders[index];
//         return OrderCard(
//           orderNumber: order['orderNumber']!,
//           amount: order['amount']!,
//           responsible: order['responsible']!,
//           onAccept: () => _acceptOrder(order['orderNumber']!),
//           onReject: () => _rejectOrder(order['orderNumber']!),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gecimmoa/presentation/validation_work_screen/widgets/order_cart.dart'; // Import the OrderCard widget


class OrdersList extends StatelessWidget {
  final List<Map<String, String>> orders = [
    {
      'orderNumber': 'FA-111',
      'amount': '10000.0000',
      'responsible': 'Yassine',
    },
    {
      'orderNumber': 'FA-112',
      'amount': '15000.0000',
      'responsible': 'Ahmed',
    },
    {
      'orderNumber': 'FA-113',
      'amount': '20000.0000',
      'responsible': 'Sara',
    },
  ];

  void _acceptOrder(String orderNumber) {
    print('Accepted $orderNumber');
  }

  void _rejectOrder(String orderNumber) {
    print('Rejected $orderNumber');
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderCard(
          orderNumber: order['orderNumber']!,
          amount: order['amount']!,
          responsible: order['responsible']!,
          onAccept: () => _acceptOrder(order['orderNumber']!),
          onReject: () => _rejectOrder(order['orderNumber']!),
        );
      },
    );
  }
}
