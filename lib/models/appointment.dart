class Appointment {
  String service;
  String fullName;
  String phone;
  String email;
  String address;
  String problemDescription;

  Appointment({
    required this.service,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.address,
    required this.problemDescription,
  });

  Map<String, dynamic> toJson() {
    return {
      'service': service,
      'fullName': fullName,
      'phone': phone,
      'email': email,
      'address': address,
      'problemDescription': problemDescription,
    };
  }
}