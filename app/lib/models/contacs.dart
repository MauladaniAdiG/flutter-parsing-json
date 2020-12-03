class Contacts {
  List<ContactsItem> contactsItemList;
  Contacts({this.contactsItemList});

  factory Contacts.fromMap(Map<String, dynamic> json) {
    return Contacts(contactsItemList: parseContactsItem(json));
  }
  static List<ContactsItem> parseContactsItem(parsedJson) {
    var list = parsedJson['contacts'] as List;
    List<ContactsItem> listItem =
        list.map((e) => ContactsItem.fromJson(e)).toList();
    return listItem;
  }
}

class ContactsItem {
  String id;
  String name;
  String email;
  String address;
  String gender;
  Phone phoneItem;
  ContactsItem(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.gender,
      this.phoneItem});
  factory ContactsItem.fromJson(Map<String, dynamic> json) {
    return ContactsItem(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        gender: json['gender'],
        phoneItem: Phone.fromJson(json['phone']));
  }
}

class Phone {
  String mobile;
  String home;
  String office;
  Phone({this.mobile, this.home, this.office});
  factory Phone.fromJson(Map<String, dynamic> json) {
    return Phone(
        mobile: json['mobile'], home: json['home'], office: json['office']);
  }
}
