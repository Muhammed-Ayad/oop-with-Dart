class Account {
  String accountNumber;
  String accountHolderName;
  double balance;

  Account(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposit of $amount successful. New balance is $balance.');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawal of $amount successful. New balance is $balance.');
    } else {
      print('Insufficient funds. Withdrawal failed.');
    }
  }

  void checkBalance() {
    print('Account balance is $balance.');
  }
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(String accountNumber, String accountHolderName, double balance,
      this.interestRate)
      : super(accountNumber, accountHolderName, balance);

  void calculateInterest() {
    double interest = balance * interestRate / 100;
    balance += interest;
    print('Interest of $interest added. New balance is $balance.');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(String accountNumber, String accountHolderName, double balance,
      this.overdraftLimit)
      : super(accountNumber, accountHolderName, balance);

  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdrawal of $amount successful. New balance is $balance.');
    } else {
      print('Insufficient funds. Withdrawal failed.');
    }
  }
}

void main() {
  var savingsAccount = SavingsAccount('123456', 'Ahmed', 1000, 2.5);
  savingsAccount.deposit(500);
  savingsAccount.calculateInterest();

  var currentAccount = CurrentAccount('654321', 'Mohamed', 5000, 1000);
  currentAccount.checkBalance();
  currentAccount.withdraw(6000);
}
