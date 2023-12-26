enum TransactionType{
  outflow,
  inflow
}
enum ItemCategoryType{
  faction,grocery,payments
}

class UserInfo{
  final String name;
  final String TotalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transaction;
  const UserInfo({required this.name,required this.TotalBalance,required this.inflow,required this.outflow,required this.transaction});

}
class Transaction{
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction( this.categoryType,this.transactionType,this.date,this.amount, this.itemCategoryName,this.itemName);

}
const List<Transaction> transactions1=[
  Transaction(ItemCategoryType.faction,TransactionType.outflow, "oct 16,2023","NRS.3000","Shoes", "puma Sneaker"),
  Transaction(ItemCategoryType.faction,TransactionType.outflow, "oct 6,2023","NRS.30000","Shirt", "Zara "),
];

const List<Transaction> transactions2=[
  Transaction(ItemCategoryType.payments,TransactionType.inflow, "oct 16,2023","NRS.3000","Payments", "Transfer from shyam"),
  Transaction(ItemCategoryType.grocery,TransactionType.outflow, "oct 6,2023","NRS.30000","Mutton", "whole mutton"),
];

const Userdata=UserInfo(name: "Saroj kumar sah",
    TotalBalance: "NRS.500000",
    inflow: "NRS.10000",
    outflow: "NRS.10000",
    transaction: transactions1);