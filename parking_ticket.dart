class ParkingTicket {
  // Private instance variables
  String _make;
  String _model;
  String _color;
  String _licenseNumber;
  double _fine;
  String _officerName;
  String _officerBadgeNumber;

  // Default constructor
  ParkingTicket() : _make = '', _model = '', _color = '', _licenseNumber = '', _fine = 0.0, _officerName = '', _officerBadgeNumber = '';


  // Parameterized constructor
  ParkingTicket.withDetails(this._make, this._model, this._color, this._licenseNumber, this._fine, this._officerName, this._officerBadgeNumber);

  // Getters
  String get make => _make;
  String get model => _model;
  String get color => _color;
  String get licenseNumber => _licenseNumber;
  double get fine => _fine;
  String get officerName => _officerName;
  String get officerBadgeNumber => _officerBadgeNumber;

  // Setters
  set make(String value) => _make = value;
  set model(String value) => _model = value;
  set color(String value) => _color = value;
  set licenseNumber(String value) => _licenseNumber = value;
  set fine(double value) => _fine = value;
  set officerName(String value) => _officerName = value;
  set officerBadgeNumber(String value) => _officerBadgeNumber = value;

  // Method to calculate fine
  double calculateFine(int minutesOver) {
    _fine = 25.0; // Base fine for first hour
    if (minutesOver > 60) {
      int additionalHours = (minutesOver - 60) ~/ 60;
      _fine += additionalHours * 10.0;
    }
    return _fine;
  }

  // toString method
  @override
  String toString() {
    return 'ParkingTicket(make: $_make, model: $_model, color: $_color, licenseNumber: $_licenseNumber, fine: \$$_fine, officerName: $_officerName, officerBadgeNumber: $_officerBadgeNumber)';
  }
}
