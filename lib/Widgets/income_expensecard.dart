import 'package:flutter/material.dart';
import 'package:moneymanager/Utils/constants.dart';


class ExpanceData{
  final String label;
  final String amount;
  final IconData icon;

  const ExpanceData(this.amount,this.label,this.icon);
}

class IncomeExpenceCard extends StatelessWidget {
  final ExpanceData expanceData;
  const IncomeExpenceCard({Key? key, required this.expanceData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      height: 80,
      margin: const EdgeInsets.only(right: defaultSpacing),
      padding:const EdgeInsets.all(defaultSpacing),
      decoration:  BoxDecoration(color: expanceData.label=="Income" ? primaryDark : accent,
      borderRadius:const BorderRadius.all(Radius.circular(defaultRadius))

      ),
      child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(expanceData.label,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.w600),),Text(expanceData.amount,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),

              ],

            ),
          ),
          Icon(expanceData.icon)
        ],
      ),
    );
  }
}
