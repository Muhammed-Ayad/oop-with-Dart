class Bank {
  final String _name; // private instance variable
  final List<Account> _accounts = []; // private instance variable

  Bank(this._name);

  // name getter
  String get name => _name;

  // account creation method
  void createAccount(Account account) {
    _accounts.add(account);
  }

  // account listing method
  void listAccounts() {
    print('Accounts for $_name:');
    _accounts.forEach((account) {
      print('${account.owner} (${account.type}): \$${account.balance}');
    });
  }
}

class Account {
  final String _owner; // private instance variable
  final AccountType _type; // private instance variable
  double _balance = 0; // private instance variable

  Account(this._owner, this._type);

  // owner getter
  String get owner => _owner;

  // type getter
  AccountType get type => _type;

  // balance getter
  double get balance => _balance;

  // deposit method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      throw ArgumentError('Amount must be positive.');
    }
  }

  // withdrawal method
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      throw ArgumentError('Amount must be positive and cannot exceed balance.');
    }
  }
}

enum AccountType { checking, savings, credit }

void main() {
  var bank = Bank('Chase');
  var alice = Account('Alice', AccountType.checking);
  var bob = Account('Bob', AccountType.savings);
  var charlie = Account('Charlie', AccountType.credit);

  bank.createAccount(alice);
  bank.createAccount(bob);
  bank.createAccount(charlie);

  bank.listAccounts();

  alice.deposit(1000);
  bob.deposit(500);
  charlie.deposit(250);

  bank.listAccounts();

  alice.withdraw(250);
  bob.withdraw(100);
  charlie.withdraw(500); // throws an ArgumentError
}
