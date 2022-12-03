//import 'dart:html';
import 'dart:io';
import 'event functions.dart';

// Venues
enum Venue {
  CAC_HALL,
  MAIN_AUDITORIUM,
  KICT_MPH,
}

void main() {
  String? eventTitle;
  String organizerName;
  String? continueToBook;
  int eventStartingTime = 8;
  int eventEndingTime = 5;
  int eventDate;
  bool checkDate;
  bool checkVenue;
  var currentDate = DateTime.now();

  // Back up Intro screen if Html doeesnt work
  print('------------------------------');
  print('-           WELCOME          -');
  print('-             TO             -');
  print('-            AKHWAN          -');
  print('------------------------------');
  print('-   Event Management System  -');
  print('------------------------------');

  var events = <Map>[]; // Storing event details

  // User Input -- Arief
  do 
  {
    print("1. Book a new Event");
    print("2. Check events list");
    print("Choose (1/2) : ");

  //parsing the input to integer
    var chooseFromList = stdin.readLineSync();
    var chooseFromListintNumber = int.parse(chooseFromList!);

    if (chooseFromListintNumber == 1) 
    {
  
      print("Enter event Title: ");
      eventTitle = stdin.readLineSync();
  
      print("Enter Organizer Name:");
      organizerName = stdin.readLineSync()!;

      print("Select Schedule for the events (Date, Month, Year)");
    
    }
  

  // Date validation -- Zawad




  // Venue validation -- Arief
  //display all available venue
      Venue.values.forEach((venue) 
      {
        print('${venue.index + 1}. ${venue.name}');
      });

      var selectVenueintNumber;

    do 
    {
        print("Choose (1/2): ");
        var selectVenue = stdin.readLineSync();
        selectVenueintNumber = int.parse(selectVenue!);

        checkVenue = false;

        if (selectVenueintNumber < 1 || selectVenueintNumber > 2) 
        {
          print('Wrong Input');
          checkVenue = true;
        }
        selectVenueintNumber--;
      } 
      while (checkVenue == true);
  
  // Booking validation -- Zawad

  
  
  //ask user is he/she want to continue to end the program
    print('Do you want to continue: (Y/N) : ');
    continueToBook = stdin.readLineSync();
  } 
  while (continueToBook == 'Y' || continueToBook == 'y');
}