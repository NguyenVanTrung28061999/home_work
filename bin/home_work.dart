void main() {
  printSoChan(1000);
  countNumber(1000);
  sumDivisionThree([4, 3, 10, 9, 15, 7, 6, 5, 8]);
  printInfomation();
}

// bai tap 0
printSoChan(int num) {
  var tong = 0;
  for (var i = 1; i < num; i++) {
    if (i % 2 == 0 && (tong + i) < 400) {
      print(i);
    }
  }
}

// bai tap 1
countNumber(int num) {
  var countNumberThree = 0;
  var countNumberFive = 0;
  for (var i = 1; i < num; i++) {
    if (checkItemNumberDivisionThree(i) == true) countNumberThree++;
    if (checkItemNumberDivisionFive(i) == true) countNumberFive++;
  }
  print("Tong so chia het cho 3 là: $countNumberThree");
  print("Tong so chia het cho 5 là: $countNumberFive");
}

checkItemNumberDivisionThree(int i) {
  if (i % 3 == 0) return true;
  return false;
}

checkItemNumberDivisionFive(int i) {
  if (i % 5 == 0) return true;
  return false;
}

/// bai tap 2
sumDivisionThree(List list) {
  var result = list.where((x) => x % 3 == 0).reduce((a, b) => a + b);
  print("tong cac so trong mảng chia het cho 3 là: $result");
}

//// bài tap 3
printInfomation() {
  var classInfomation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình flutter,hotline:0349582808"
  };
  //code ban đầu
  // var result =
  //     classInfomation['description'].toString().split(',').last.split(':').last;

  //code cải tiến
  var result = classInfomation['description'].toString().split(':').last;
  print(result);
}
