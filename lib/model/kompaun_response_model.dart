class KompaunResponse {
  bool success;
  String message;
  List<KompaunData> data;

  KompaunResponse(this.success, this.message, this.data);

  KompaunResponse.fromJson(Map<String, dynamic> json)
      : success = json["success"],
        message = json["message"],
        data =
            (json["data"] as List).map((i) => KompaunData.fromJson(i)).toList();
}

// class Params {
//   String searchvalue;
//   String councilid;
//   int searchtype;
//   String refsource;
//   String secretkey;

//   Params(this.searchvalue, this.councilid, this.searchtype, this.refsource,
//       this.secretkey);

//   Params.fromJson(Map<String, dynamic> json)
//       : searchvalue = json["searchvalue"],
//         councilid = json["councilid"],
//         searchtype = json["searchtype"],
//         refsource = json["refsource"],
//         secretkey = json["secretkey"];
// }

class KompaunData {
  String status;
  String registrationNumber;
  String serviceReference1;
  String serviceReference2;
  String violationLocation;
  String violationTimestamp;
  String violationType;
  int compoundAmount;

  KompaunData(
      this.status,
      this.registrationNumber,
      this.serviceReference1,
      this.serviceReference2,
      this.violationLocation,
      this.violationTimestamp,
      this.violationType,
      this.compoundAmount);

  KompaunData.fromJson(Map<String, dynamic> json)
      : status = json["status"],
        registrationNumber = json["registration_number"],
        serviceReference1 = json["service_reference_1"],
        serviceReference2 = json["service_reference_2"],
        violationLocation = json["violation_location"],
        violationTimestamp = json["violation_timestamp"],
        violationType = json["violation_type"],
        compoundAmount = int.parse(json["compound_amount"].toString());
}
