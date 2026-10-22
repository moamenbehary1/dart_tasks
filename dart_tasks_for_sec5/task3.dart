void main() {
  BankAccount account = BankAccount("Ahmed");
  print(account.accountHolder);
  print(account.balance);
  account.deposit(50.5);
  print(account.balance);
  account.withdraw(20);
  print(account.balance);
  account.withdraw(200);
  print(account.balance);
  account.balance = 300;
  print(account.balance);
  account.balance = -50;
  print(account.balance);
}

class BankAccount {
  String accountHolder;
  double _balance = 0;
  BankAccount(this.accountHolder) {
    _balance = 0;
  }
  double get balance {
    return _balance;
  }

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Balance cannot be negative");
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Deposit amount must be positive");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdraw amount must be positive");
    } else if (amount > _balance) {
      print("Withdrawal failed: insufficient balance");
    } else {
      _balance -= amount;
    }
  }
}
