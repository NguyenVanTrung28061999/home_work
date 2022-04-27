void main() {
  var res = new ChuNhat();
  res.chieuDai = 2;
  res.chieuRong = 2;
  res.getInfor();
  print('-------------------------');
  var vuong = new Vuong();
  vuong.canh = 3;
  vuong.getInfor();
}

//bai tap 1
class Vuong extends ChuNhat {
  late double canh;
  @override
  getInfor() {
    var chuVi = canh * 4;
    var dienTich = canh * canh;
    print('cạnh hình vuông là: $canh');
    print('chu vi hình vuông là: $chuVi');
    print('diện tích hình vuông là: $dienTich');
  }
}

class ChuNhat {
  late double chieuRong;
  late double chieuDai;

  tinhChuVi(var a, var b) {
    var result = (a + b) * 2;
    print('chu vi hcn la: $result');
  }

  tinhDienTich(var a, var b) {
    var result = a * b;
    print('dien tich hcn la: $result');
  }

  getInfor() {
    tinhChuVi(chieuDai, chieuRong);
    tinhDienTich(chieuDai, chieuRong);
    print('chieu dai la: $chieuDai');
    print('chieu rong la: $chieuRong');
  }
}

// bai tap 2
abstract class PersonSample {
  int getAge();
  void getInfor();
}

class Persion extends PersonSample {
  late String id;
  late String name;
  late int _birthYear;
  late int namSinh;

  get getBirthYear => _birthYear;

  set setBirthYear(int number) {
    this._birthYear = number;
  }

  @override
  int getAge() {
    return _birthYear;
  }

  @override
  void getInfor() {
    // TODO: implement getInfor
  }
}
