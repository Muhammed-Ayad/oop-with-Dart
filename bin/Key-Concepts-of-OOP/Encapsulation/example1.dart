class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  double getBalance() {
    return balance;
  }
}

void main() {
  var account = BankAccount(1000.0);
  account.deposit(500.0);
  account.withdraw(200.0);
  print('Balance: ${account.getBalance()}');
}
