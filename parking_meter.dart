class ParkingMeter {
  // Private instance variable
  int _minutesPurchased;

  // Default constructor
  ParkingMeter() : _minutesPurchased = 0;

  // Parameterized constructor
  ParkingMeter.withMinutes(this._minutesPurchased);

  // Getter
  int get minutesPurchased => _minutesPurchased;

  // Setter
  set minutesPurchased(int value) => _minutesPurchased = value;

  // toString method
  @override
  String toString() {
    return 'ParkingMeter(minutesPurchased: $_minutesPurchased)';
  }
}
