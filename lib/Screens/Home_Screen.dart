import 'package:flutter/material.dart';
import 'package:moneymanager/Utils/constants.dart';
import 'package:moneymanager/Widgets/income_expensecard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(

          children:const [
            const SizedBox(height: defaultSpacing*4
              ,),
            ListTile(
              title: Text("saroj"),
              leading: Icon(Icons.person),
            trailing: Icon(Icons.notifications),),
            const SizedBox(height: defaultSpacing*4
              ,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded ( child: IncomeExpenceCard(expanceData: ExpanceData("NPR.50000","Income",Icons.arrow_upward),)),
                Expanded ( child: IncomeExpenceCard(expanceData: ExpanceData("NPR.40000","Expense",Icons.arrow_downward),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
