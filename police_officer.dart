import 'parked_car.dart';
import 'parking_meter.dart';
import 'parking_ticket.dart';

class PoliceOfficer {
  // Private instance variables
  String _name;
  String _badgeNumber;

  // Default constructor
  PoliceOfficer() : _name = '', _badgeNumber = '';


  // Parameterized constructor
  PoliceOfficer.withDetails(this._name, this._badgeNumber);

  // Getters
  String get name => _name;
  String get badgeNumber => _badgeNumber;

  // Setters
  set name(String value) => _name = value;
  set badgeNumber(String value) => _badgeNumber = value;

  // Method to check if car is illegally parked
  ParkingTicket? issueTicket(String make, String model, String color,
                            String licenseNumber, int minutesParked,
                            String officerName, String officerBadgeNumber,
                            ParkingMeter meter) {
    if (minutesParked > meter.minutesPurchased) {
      int minutesOver = minutesParked - meter.minutesPurchased;
      ParkingTicket ticket = ParkingTicket.withDetails(
        make,
        model,
        color,
        licenseNumber,
        0.0, // Fine will be calculated
        officerName,
        officerBadgeNumber
      );


      ticket.calculateFine(minutesOver);
      return ticket;
    }
    return null;
  }

  // toString method
  @override
  String toString() {
    return 'PoliceOfficer(name: $_name, badgeNumber: $_badgeNumber)';
  }
}
