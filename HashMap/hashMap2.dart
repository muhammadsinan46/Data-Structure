class HashMap {
  Map<dynamic, dynamic> table = {};

  void insertion(String key, dynamic value) {
    table[key] = value;
  }

  deletion(String key) {
    table.remove(key);
  }

  void get(String key) {
    if (table.containsKey(key)) {
      print(table[key]);
    }
  }

  void clear() {
    table.clear();
  }

  void display() {
    print("hash_tabe: $table");
  }
}

void main() {
  HashMap map = HashMap();

  map.insertion("name", "sam");
  map.insertion("adress", "banglore");
  map.insertion("Age", 25);
  map.insertion("education", "b.com");
  map.deletion("Age");

  map.get("adress");
  map.clear();
  map.display();
}
