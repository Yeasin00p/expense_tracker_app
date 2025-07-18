import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:expense_tracker_app/core/widget/app_bar_clipper.dart';
import 'package:expense_tracker_app/features/home/widget/blance_card.dart';
import 'package:expense_tracker_app/features/home/widget/bottom_nav_bar_widget.dart';
import 'package:expense_tracker_app/features/home/widget/greeting_header_widegt.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 320,
            child: ClipPath(
              clipper: AppBarClipper(),
              child: Container(color: AppColors.primary),
            ),
          ),
          const SafeArea(
            child: SizedBox(
              height: 100,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: GreetingHeaderWidegt(name: 'yeasin arafat'),
              ),
            ),
          ),
          Positioned(top: 180, left: 0, right: 0, child: BalanceCard()),
        ],
      ),

      floatingActionButton: SizedBox(
        height: 74,
        width: 74,
        child: FloatingActionButton(
          onPressed: () {},
           backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(74),
          ),
          child: const Icon(Icons.add,color: Colors.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
