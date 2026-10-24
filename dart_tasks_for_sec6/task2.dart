void main() {
  BankAccount account1 = BankAccount('Ahmed');

  print(account1.accountHolder);
  print(account1.balance);

  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  account1.deposit(50.5);
  
  print(account1.balance);

  account1.withdraw(20);
  print(account1.balance);

  account1.withdraw(200);
  print(account1.balance);
  
  account1.deposit(-10);
  print(account1.balance);
}

class BankAccount {
  String _accountHolder = '';
  double _balance = 0;

  BankAccount(String holder) {
    _accountHolder = holder;
  }

  String get accountHolder {
    return _accountHolder;
  }

  double get balance {
    return _balance;
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (amount <= _balance) {
        _balance = _balance - amount;
      }
    }
  }
}