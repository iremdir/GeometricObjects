void main() {
  Circle circle1 = Circle();
  Circle circle2 = Circle(radius: 4.0);
  Circle circle3 = Circle(radius: 13.5);

  Rectangle rectangle1 = Rectangle();
  Rectangle rectangle2 = Rectangle(longEdge: 15.8, shortEdge: 5);
  Rectangle rectangle3 = Rectangle(longEdge: 80, shortEdge: 75.4);

  Cylinder cylinder1 = Cylinder();
  Cylinder cylinder2 = Cylinder(radius: 4.3, length: 55.0);
  Cylinder cylinder3 = Cylinder(radius: 23.6, length: 95.9);

  final List objectList = [];
  objectList.addAll([circle1, circle2, circle3]);
  objectList.addAll([rectangle1, rectangle2, rectangle3]);
  objectList.addAll([cylinder1, cylinder2, cylinder3]);
  print(objectList);
}

abstract class GeometricObject {
  double alanHesapla();
  double cevreHesapla();
}

class Circle extends GeometricObject {
  double radius;
  Circle({this.radius = 1.0});

  @override
  alanHesapla() {
    return 3.14 * radius * radius;
  }

  @override
  cevreHesapla() {
    return 2 * 3.14 * radius;
  }

  @override
  String toString() {
    return "Circle's round: ${cevreHesapla()}\nCircle's area: ${alanHesapla()}";
  }
}

class Rectangle extends GeometricObject {
  double shortEdge;
  double longEdge;
  Rectangle({this.longEdge = 1.0, this.shortEdge = 1.0});

  @override
  double alanHesapla() {
    return longEdge * shortEdge;
  }

  @override
  double cevreHesapla() {
    return 2 * (longEdge + shortEdge);
  }

  @override
  String toString() {
    return "Rectangle's round: ${cevreHesapla()}\nRectangle's area: ${alanHesapla()}";
  }
}

class Cylinder extends GeometricObject {
  double radius;
  double length;
  Cylinder({this.radius = 1.0, this.length = 1.0});

  double hacimHesapla() {
    return 3.14 * radius * radius * length;
  }

  @override
  double alanHesapla() {
    return 2 * radius * 3.14 * (radius + length);
  }

  @override
  double cevreHesapla() {
    return (2 * 2 * radius * 3.14) + 2 * length;
  }

  @override
  String toString() {
    return "Cylinder's round: ${cevreHesapla()}\nCylinder's area: ${alanHesapla()}\nCylinder's volume: ${hacimHesapla()}";
  }
}
