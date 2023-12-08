import 'dart:collection';

class Hashed {
  void addValue() {
    HashMap value = HashMap<dynamic, String>();
    //add values
    value["name"] = "hello";
    value["age"] = "42";
    value["address"] = "is the world";
    value["mobile"] = "987456332211";
    value["email"] = "abc@gmail.com";

    print(value["age"]);
    //get values using key
    var getValue = value["email"];
    //remove value using key
    value.remove("age");
    //check if key contains in the map
    if (value.containsKey("mobile")) {
      print(value["mobile"]);
    }
    //   itrate using keys
    for (var key in value.keys) {
      print(key.hashCode);
    }
    //   itrate using values
    for (var val in value.values) {
      print(val.hashCode);
    }
//itrate key - value
    value.forEach((key, value) {
      print("this is the $key : $value");
    });
//clear the value
    value.clear();
    print("value cleared : $value");
    //fetching the value
    print(getValue);
  }
}

void main() {
  Hashed hashMap = Hashed();

  hashMap.addValue();
}
