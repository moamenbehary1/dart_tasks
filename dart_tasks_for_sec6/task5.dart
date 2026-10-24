void main() {
  LibraryItem item1 = Book('B001', 'C++', 'Bjarne');
  LibraryItem item2 = Book('B002', 'Clean Code', 'Robert');
  LibraryItem item3 = Magazine('M001', 'NatGeo', 412);
  LibraryItem item4 = Book('B003', 'Design Patterns', 'Erich');
  
  Member alice = Member('M1', 'Alice');
  Member bob = Member('M2', 'Bob');

  alice.borrowItem(item1);
  alice.borrowItem(item2);
  alice.borrowItem(item3);
  alice.borrowItem(item4); 

  bob.borrowItem(item1); 
  bob.returnItem(item4); 

  alice.returnItem(item1);
  bob.borrowItem(item1); 
  alice.borrowItem(item4); 

  alice.displayBorrowedItems();
  bob.displayBorrowedItems();
}

class LibraryItem {
  String _id, _title;
  bool _isBorrowed = false;
  LibraryItem(this._id, this._title);
  String get id => _id;
  String get title => _title;
  bool get isBorrowed => _isBorrowed;
  set isBorrowed(bool status) => _isBorrowed = status;
  void display() => print('ID: $_id | Title: $_title | Status: ${_isBorrowed ? "Borrowed" : "Available"}');
}

class Book extends LibraryItem {
  String author;
  Book(String id, String title, this.author) : super(id, title);
  @override
  void display() => print('[Book] ID: $id | Title: $title | Author: $author | Status: ${isBorrowed ? "Borrowed" : "Available"}');
}

class Magazine extends LibraryItem {
  int issueNumber;
  Magazine(String id, String title, this.issueNumber) : super(id, title);
  @override
  void display() => print('[Magazine] ID: $id | Title: $title | Issue #: $issueNumber | Status: ${isBorrowed ? "Borrowed" : "Available"}');
}

class Member {
  String memberId, name;
  List<LibraryItem> borrowedItems = [];
  Member(this.memberId, this.name);

  bool borrowItem(LibraryItem item) {
    if (borrowedItems.length >= 3) {
      print('Error ($name): Cannot borrow "${item.title}". Limit is 3!');
      return false;
    }
    if (item.isBorrowed) {
      print('Error ($name): "${item.title}" is already borrowed!');
      return false;
    }
    item.isBorrowed = true;
    borrowedItems.add(item);
    print('Success: $name borrowed "${item.title}".');
    return true;
  }

  bool returnItem(LibraryItem item) {
    if (!borrowedItems.contains(item)) {
      print('Error ($name): You have not borrowed "${item.title}"!');
      return false;
    }
    item.isBorrowed = false;
    borrowedItems.remove(item);
    print('Success: $name returned "${item.title}".');
    return true;
  }

  void displayBorrowedItems() {
    print('--- Borrowed Items for $name ---');
    if (borrowedItems.isEmpty) print('No items.');
    for (var item in borrowedItems) item.display();
  }
}