class BankAccount {
  double _balance; // private instance variable

  BankAccount(this._balance);

  // deposit method
  void deposit(double amount) {
    _balance += amount;
  }

  // withdraw method
  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
    } else {
      print("Insufficient balance.");
    }
  }

  // balance getter
  double get balance => _balance;
}

void main() {
  var account = BankAccount(1000);
  account.deposit(500);
  account.withdraw(200);
  print(account.balance); 
}
