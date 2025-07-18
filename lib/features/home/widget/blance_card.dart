import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF65558F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Total Balance', style: TextStyle(color: Colors.white70)),
              Icon(Icons.more_horiz, color: Colors.white70),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '\$ 00.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.white70),
                      SizedBox(width: 4),
                      Text('Income', style: TextStyle(color: Colors.white70)),
                    ],
                  ),

                  SizedBox(width: 8),
                  Text(
                    '\$ 00.00',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold,),
                  ),
                ],
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.white70),
                      SizedBox(width: 4),
                      Text('Expenses', style: TextStyle(color: Colors.white70)),
                    ],
                  ),

                  Text(
                    '\$ 00.00',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
