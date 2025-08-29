// Step 2: Start Expense Tracker
    double balance = 0;
    List<String> history = [];

    while (true) {
      print("1) Add Income");
      print("2) Add Expense");
      print("3) View Balance");
      print("4) View History");
      print("5) Exit");
      stdout.write("Choose option: ");
      String? choice = stdin.readLineSync();

      if (choice == "1") {
        stdout.write("Enter income amount: ");
        double income = double.parse(stdin.readLineSync()!);
        balance += income;
        history.add("Income: +$income");
        print("Income added!\n");
      } else if (choice == "2") {
        stdout.write("Enter expense amount: ");
        double expense = double.parse(stdin.readLineSync()!);
        if (expense <= balance) {
          balance -= expense;
          history.add("Expense: -$expense");
          print("Expense recorded!\n");
        } else {
          print("Not enough balance!\n");
        }
      } else if (choice == "3") {
        print("Current Balance: $balance\n");
      } else if (choice == "4") {
        print("Transaction History:");
        history.forEach((t) => print(t));
        print("");
      } else if (choice == "5") {
        print("Exiting... Goodbye!");
        break;
      } else {
        print(" Invalid option! Try again.\n");
      }
    }
  } else {
    print("\n Login failed. Exiting program.");
  }
}
