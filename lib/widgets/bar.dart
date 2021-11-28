import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final String label;
  final int spentAmount;
  final double spentPercantage;

  Bar(this.label, this.spentAmount, this.spentPercantage);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (contxt, constraints) {
        return Column(
          children: [
            Container(
              height: constraints.maxHeight * .1,
              child: FittedBox(
                child: Text('$spentAmount tk '),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: constraints.maxHeight * .65,
              width: 15,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: spentPercantage,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.1,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        );
      },
    );
  }
}
