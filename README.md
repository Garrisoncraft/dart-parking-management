# Parking Ticket Management System

A Dart application that simulates a parking ticket issuance system.

## Overview

This system allows police officers to issue parking tickets based on:
- Vehicle information (make, model, color, license number)
- Parking duration
- Purchased parking time

## Class Diagram

```
+----------------+       +----------------+       +----------------+
|  ParkedCar     |       | ParkingMeter   |       | PoliceOfficer  |
|----------------|       |----------------|       |----------------|
| - make         |       | - minutesPaid  |       | - name         |
| - model        |       +----------------+       | - badgeNumber  |
| - color        |                                  +----------------+
| - licenseNumber|                                         |
+----------------+                                         |
        |                                                   |
        |                                                   |
        v                                                   v
+----------------+                                   +----------------+
| ParkingTicket  |                                   |  Main Program   |
|----------------|                                   |----------------|
| - car          |                                   | - officer       |
| - officer      |                                   | - meter         |
| - fineAmount   |                                   +----------------+
| - issueTime    |
+----------------+
```

## Installation

1. Ensure Dart SDK is installed
2. Clone this repository
3. Run the application:
```bash
dart run test_parking_ticket.dart
```

## Usage

The program will prompt for:
- Officer details (name, badge number)
- Vehicle information (make, model, color, license number)
- Parking details (minutes parked, minutes purchased)

Based on the input, it will either:
- Issue a parking ticket if violation is detected
- Confirm no violation if parking time is valid

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

MIT License
