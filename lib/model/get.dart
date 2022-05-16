class Get {
  String? name;
  int? id;
  String? dept;
  String? batch;

  Get({this.name, this.id, this.dept, this.batch});

  Get.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    dept = json['dept'];
    batch = json['batch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['dept'] = this.dept;
    data['batch'] = this.batch;
    return data;
  }
}
