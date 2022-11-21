import 'package:intl/intl.dart';

String nubmerPriceFormat(String price) {
  final formatter = NumberFormat("#,###");
  return formatter.format(int.parse(price));
}
