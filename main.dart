import 'dart:html';
import 'dart:io';
import 'event functions.dart';

// Venues
enum Venue {
  CAC_HALL,
  MAIN_AUDITORIUM,
  KICT_MPH,
}

void main() {
  int eventStartingTime = 8;
  int eventEndingTime = 5;
  int eventDate;
  bool checkDate;
  bool checkVenue;
  var currentDate = DateTime.now();

// Back up Intro screen if Html doeesnt work
//
  print('------------------------------');
  print('-           WELCOME          -');
  print('-             TO             -');
  print('-            AKHWAN          -');
  print('------------------------------');
  print('-   Event Management System  -');
  print('------------------------------');

  var events = <Map>[]; // Storing event details

  // User Input -- Arief

  // Date validation -- Zawad

  // Venue validation -- Arief

  // Booking validation -- Zawad
}
