class LoginSuccessModel {
  String? success;
  String? code;

  LoginSuccessModel({this.success, this.code});

  LoginSuccessModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['code'] = code;
    return data;
  }
}