import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_erp/utils/global/pallate.dart';

class DashboardItems extends StatelessWidget {
  final Widget icon;
  final String lable;
  final bool isSelected;
  final VoidCallback ontap;
  const DashboardItems({
    super.key,
    required this.icon,
    required this.lable,
    required this.ontap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 3),
              decoration: BoxDecoration(
                color: isSelected ? tabselection : lightblue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: icon,
            ),
            Text(
              lable,
              style: GoogleFonts.novaSquare(
                  textStyle: const TextStyle(
                color: unselectedtext,
                fontSize: 14,
              )),
            )
          ],
        ),
      ),
    );
  }
}

class SubDashboardItems extends StatelessWidget {
  final String lable;
  final bool isSelected;
  final VoidCallback ontap;

  const SubDashboardItems({
    super.key,
    required this.lable,
    required this.ontap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? tabselection : background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          lable,
          style: GoogleFonts.novaSquare(
            textStyle: TextStyle(
              color: isSelected ? textPrimary : unselectedtext,
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
          softWrap: true,
        ),
      ),
    );
  }
}
