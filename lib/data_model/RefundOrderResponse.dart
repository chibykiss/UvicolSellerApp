// To parse this JSON data, do
//
//     final refundOrderResponse = refundOrderResponseFromJson(jsonString);

import 'dart:convert';

RefundOrderResponse refundOrderResponseFromJson(String str) => RefundOrderResponse.fromJson(json.decode(str));

String refundOrderResponseToJson(RefundOrderResponse data) => json.encode(data.toJson());

class RefundOrderResponse {
  RefundOrderResponse({
    this.data,
    this.links,
    this.meta,
    this.success,
    this.status,
  });

  List<Datum> data;
  Links links;
  Meta meta;
  bool success;
  var status;

  factory RefundOrderResponse.fromJson(Map<String, dynamic> json) => RefundOrderResponse(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    links: Links.fromJson(json["links"]),
    meta: Meta.fromJson(json["meta"]),
    success: json["success"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "links": links.toJson(),
    "meta": meta.toJson(),
    "success": success,
    "status": status,
  };
}

class Datum {
  Datum({
    this.id,
    this.userId,
    this.orderCode,
    this.productName,
    this.productPrice,
    this.refundStatus,
    this.refundLabel,
    this.seller_approval,
    this.refundReson,
    this.rejectReson,
    this.date,
  });

  int id;
  int userId;
  String orderCode;
  String productName;
  String productPrice;
  var refundStatus;
  var seller_approval;
  String refundLabel;
  String rejectReson;
  String refundReson;

  String date;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    userId: json["user_id"],
    orderCode: json["order_code"],
    productName: json["product_name"],
    productPrice: json["product_price"],
    refundStatus: json["refund_status"],
    refundLabel: json["refund_label"],
    seller_approval: json["seller_approval"],
    refundReson: json["reason"],
    rejectReson: json["reject_reason"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "order_code": orderCode,
    "product_name": productName,
    "product_price": productPrice,
    "refund_status": refundStatus,
    "refund_label": refundLabel,
    "seller_approval": seller_approval,
    "reason": refundReson,
    "reject_reason": rejectReson,
    "date": date,
  };
}

class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String first;
  String last;
  dynamic prev;
  dynamic next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    first: json["first"],
    last: json["last"],
    prev: json["prev"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "last": last,
    "prev": prev,
    "next": next,
  };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int currentPage;
  int from;
  int lastPage;
  List<Link> links;
  String path;
  int perPage;
  int to;
  int total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currentPage: json["current_page"],
    from: json["from"],
    lastPage: json["last_page"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    path: json["path"],
    perPage: json["per_page"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "from": from,
    "last_page": lastPage,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "path": path,
    "per_page": perPage,
    "to": to,
    "total": total,
  };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String url;
  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label,
    "active": active,
  };
}
