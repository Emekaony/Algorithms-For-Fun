// this will be the Node
class LinkedListNode<T> {
  T data;
  // next could be null so make it optional
  LinkedListNode<T>? next;

  LinkedListNode({required this.data, required this.next});
}

class LinkedList<T> {
  LinkedListNode<T>? head;

  LinkedList(T value) {
    this.head = LinkedListNode(data: value, next: null);
  }

  // add
  void add(T value) {
    // make sure head is not null
    if (this.head == null) {
      this.head = LinkedListNode(data: value, next: null);
    } else if (this.head != null) {
      // traverse till we get to the end
      LinkedListNode<T> current = this.head!;
      while (current.next != null) {
        current = current.next!;
      }
      // we should be at the end now!
      current.next = LinkedListNode(data: value, next: null);
    }
  }

  void addFirst(T value) {
    // make a new list and set it to the head. Check for edge cases
    LinkedListNode<T> newList = LinkedListNode(data: value, next: null);
    if (this.head == null) {
      this.head = newList;
    } else if (this.head != null) {
      LinkedListNode<T>? temp = this.head!;
      this.head = newList;
      newList.next = temp;
    }
  }

  LinkedListNode<T>? removeFirst() {
    if (this.head == null) {
      return null;
    } else {
      LinkedListNode<T> temp = this.head!;
      this.head = this.head!.next;
      return temp;
    }
  }

  void display() {
    LinkedListNode<T>? curr = this.head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }

  int length() {
    int cnt = 0;
    LinkedListNode<T>? curr = this.head;
    while (curr != null) {
      cnt++;
      curr = curr.next;
    }
    return cnt;
  }

  bool contains(T value) {
    LinkedListNode<T>? curr = this.head;
    while (curr != null) {
      if (curr.data == value) {
        return true;
      } else {
        curr = curr.next;
      }
    }
    return false;
  }
}

void main() {
  LinkedList<String> ll = LinkedList("emeka");
  ll.add("dozie");
  ll.add("kamsi");
  ll.add("emeka");
  ll.add("salinha");
  ll.display();
  print(ll.length());
  print(ll.contains("emeka"));
  print(ll.contains("kakakaka"));
  print(ll.contains("kamsi"));
}
