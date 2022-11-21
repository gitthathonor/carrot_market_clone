import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyText1),
          SizedBox(height: 4.0),
          Text("${product.address}*${product.publishedAt}"),
          SizedBox(height: 4.0),
          Text("${product.price}원", style: textTheme().headline2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildIcons(icondata: CupertinoIcons.chat_bubble_2, count: product.commentsCount),
              const SizedBox(width: 4),
              _buildIcons(icondata: CupertinoIcons.heart, count: product.heartCount),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcons({required IconData icondata, required int count}) {
    return Visibility(
      visible: count > 0,
      child: Row(
        children: [
          Icon(icondata),
          Text("${count}"),
        ],
      ),
    );
  }
}
