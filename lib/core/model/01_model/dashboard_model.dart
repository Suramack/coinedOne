// To parse this JSON data, do
//
class DashboardModel {
  DashboardModel({
    this.success,
    this.data,
  });

  bool? success;
  Data? data;

  factory DashboardModel.fromJson(Map<String, dynamic> json) => DashboardModel(
        success: json["success"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  Data({
    this.screenTime,
    this.freeTime,
    this.devices,
  });

  ScreenTime? screenTime;
  FreeTime? freeTime;
  List<Device>? devices;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        screenTime: ScreenTime.fromJson(json["screenTime"]),
        freeTime: FreeTime.fromJson(json["freeTime"]),
        devices:
            List<Device>.from(json["devices"].map((x) => Device.fromJson(x))),
      );
}

class Device {
  Device({
    this.name,
    this.usage,
  });

  String? name;
  int? usage;

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        name: json["name"],
        usage: json["usage"],
      );
}

class FreeTime {
  FreeTime({
    this.limit,
    this.usage,
  });

  int? limit;
  int? usage;

  factory FreeTime.fromJson(Map<String, dynamic> json) => FreeTime(
        limit: json["limit"],
        usage: json["usage"],
      );
}

class ScreenTime {
  ScreenTime({
    this.screenTimeClass,
    this.study,
    this.free,
    this.total,
  });

  int? screenTimeClass;
  int? study;
  int? free;
  int? total;

  factory ScreenTime.fromJson(Map<String, dynamic> json) => ScreenTime(
        screenTimeClass: json["class"],
        study: json["study"],
        free: json["free"],
        total: json["total"],
      );
}
