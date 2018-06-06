class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  /*
   * This constructor is equivalent to the following:
   * Bicycle (int cadence, int speed, int gear) {
   * 	 this.cadence = cadence;
   *   this.speed = speed;
   *   this.gear = gear;
   * }
   */
  Bicycle(this.cadence, this.gear);

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = new Bicycle(2, 1); // Instantiation
  // new keyword is optional.
  print(bike);
  print(bike.speed);

  bike.speedUp(30);
  print(bike);

  bike.applyBrake(10);
  print(bike);
}