class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('$owner deposited $amount, new balance is $balance');
  }

  bool withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('$owner withdrew $amount, new balance is $balance');
      return true;
    } else {
      print(
          '$owner tried to withdraw $amount, but the balance is only $balance');
      return false;
    }
  }

  double getBalance() {
    return balance;
  }
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String owner, double balance, this.interestRate)
      : super(owner, balance);

  void addInterest() {
    double interest = balance * interestRate / 100;
    balance += interest;
    print(
        'Interest of $interest added to $owner account, new balance is $balance');
  }
}

class CheckingAccount extends BankAccount {
  double overdraftLimit;

  CheckingAccount(String owner, double balance, this.overdraftLimit)
      : super(owner, balance);

  @override
  bool withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('$owner withdrew $amount, new balance is $balance');
      return true;
    } else {
      print(
          '$owner tried to withdraw $amount, but the available balance is only $balance, with an overdraft limit of $overdraftLimit');
      return false;
    }
  }
}

void main() {
  List<BankAccount> accounts = [
    SavingsAccount('John Doe', 1000.0, 1.5),
    CheckingAccount('Jane Smith', 500.0, 200.0),
    SavingsAccount('Bob Johnson', 2000.0, 2.0)
  ];

  for (var account in accounts) {
    print('Account owner: ${account.owner}');
    print('Account balance: ${account.getBalance()}');

    account.deposit(100.0);
    account.withdraw(50.0);

    if (account is SavingsAccount) {
      SavingsAccount savingsAccount = account;
      savingsAccount.addInterest();
    } else if (account is CheckingAccount) {
      CheckingAccount checkingAccount = account;
      checkingAccount.withdraw(300.0);
    }

    print('Final balance: ${account.getBalance()}');
    print('---------------------');
  }
}
