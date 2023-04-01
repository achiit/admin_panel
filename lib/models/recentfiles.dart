class RecentFile {
  final String? icon, productname, price, totalorder, trackno, totalamt;

  RecentFile({this.icon, this.productname, this.price, this.totalorder, this.trackno, this.totalamt});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/Rectangle 91.png",
    productname: "x",
    price: "\$178",
    totalorder: "325",
    trackno: "#876364",
    totalamt: "\$1,46,660"
  ),
  RecentFile(
    icon: "assets/icons/Rectangle 90.png",
    productname: "x",
    price: "\$14",
    totalorder: "53",
    trackno: "#876364",
    totalamt: "\$46,660"
  ),
  RecentFile(
    icon: "assets/icons/Rectangle 111.png",
    productname: "x",
    price: "\$21",
    totalorder: "78",
    trackno: "#876364",
    totalamt: "\$3,46,676"
  ),
  RecentFile(
    icon: "assets/icons/Rectangle 110.png",
    productname: "x",
    price: "\$32",
    totalorder: "98",
    trackno: "#876364",
    totalamt: "\$3,46,981"
  ),
];
