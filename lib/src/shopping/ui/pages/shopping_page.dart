import 'package:flutter/material.dart';

import '../../../atoms.dart';
import '../../../organisms.dart';
import '../../../templates.dart';

import '../../data/models.dart';

class ShoppingPage extends StatefulWidget {
  final String title;
  final List<ProductModel> products;

  const ShoppingPage({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  late double _total;

  @override
  void initState() {
    super.initState();
    _total = .0;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      title: widget.title,
      primaryActionButton: _total > 0
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop(_total);
              },
              child: const Icon(Icons.attach_money_rounded),
            )
          : null,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('\$${_total.toString()}'),
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.products.length,
                itemBuilder: (_, index) {
                  final product = widget.products[index];

                  return CardWidget.outlined(
                    headline: product.title,
                    subhead: '\$${product.price}',
                    supportingText: product.description,
                    supportingImage: ImageWidget.network(product.image),
                    buttonText: 'Add',
                    onButtonPressed: () {
                      setState(() {
                        _total += product.price;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
