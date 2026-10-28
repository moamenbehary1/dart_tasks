import 'dart:io';

void main() {
  print('--- Create Bank Account ---');
  stdout.write('Enter Account Number: ');
  String accountNumber = stdin.readLineSync() ?? 'Unknown';

  stdout.write('Enter PIN: ');
  String pin = stdin.readLineSync() ?? '';

  if (pin != '1235') {
    print('Error: Incorrect PIN! Access denied.');
    return;
  }

  var myAccount = BankAccount(accountNumber);
  print('Successfully logged in and account created!');

  while (true) {
    print('\n--- Main Menu ---');
    print('1. Deposit');
    print('2. Withdraw');
    print('3. Check Balance');
    print('4. Exit');
    stdout.write('Choose an option (1-4): ');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Enter amount to deposit: ');
      double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0.0;
      myAccount.deposit(amount);
    } else if (choice == '2') {
      stdout.write('Enter amount to withdraw: ');
      double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0.0;
      myAccount.withdraw(amount);
    } else if (choice == '3') {
      print('Current Balance: ${myAccount.balance.toStringAsFixed(2)}');
    } else if (choice == '4') {
      print('Exiting...');
      break;
    } else {
      print('Invalid choice, please try again.');
    }
    print(
      '--------------------------------------------------------------------',
    );
  }
}

class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, [this._balance = 0]);

  double get balance => _balance;
  String get accountNumber => _accountNumber;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Successfully deposited ${amount.toStringAsFixed(2)}.');
    } else {
      print('Error: Deposit amount must be greater than zero.');
    }
  }

  bool withdraw(double amount) {
    if (amount <= 0) {
      print('Error: Withdrawal amount must be greater than zero.');
      return false;
    }
    if (amount > _balance) {
      print('Transaction failed: no enough money');
      return false;
    }
    _balance -= amount;
    print('Successfully withdrew ${amount.toStringAsFixed(2)}.');
    return true;
  }
}
