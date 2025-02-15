import 'dart:io';
import 'parked_car.dart';
import 'parking_meter.dart';
import 'parking_ticket.dart';
import 'police_officer.dart';

void main() async {
  // Create a police officer instance
  PoliceOfficer officer = PoliceOfficer();

  // Get officer details
  print('Enter officer name: ');
  String officerName = stdin.readLineSync() ?? 'Unknown Officer';
  
  print('Enter officer badge number: ');
  String officerBadgeNumber = stdin.readLineSync() ?? '0000';

  // Get car details
  print('\nEnter car make: ');
  String make = stdin.readLineSync() ?? 'Unknown Make';
  
  print('Enter car model: ');
  String model = stdin.readLineSync() ?? 'Unknown Model';
  
  print('Enter car color: ');
  String color = stdin.readLineSync() ?? 'Unknown Color';
  
  print('Enter car license number: ');
  String licenseNumber = stdin.readLineSync() ?? 'UNKNOWN';

  // Get parking details
  print('\nEnter minutes parked: ');
  int minutesParked = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  
  print('Enter minutes purchased on meter: ');
  int minutesPurchased = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  ParkingMeter meter = ParkingMeter.withMinutes(minutesPurchased);

  // Issue ticket
  ParkingTicket? ticket = officer.issueTicket(
    make,
    model,
    color,
    licenseNumber,
    minutesParked,
    officerName,
    officerBadgeNumber,
    meter
  );

  // Display results
  if (ticket != null) {
    print('\nParking Ticket Issued: ');
    print(ticket);
  } else {
    print('\nNo parking violation detected.');
  }
}
