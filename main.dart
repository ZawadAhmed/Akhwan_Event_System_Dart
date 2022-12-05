//import 'dart:html';
import 'dart:io';
import 'event_functions.dart';

//months - used enumerators because adding all of them as constants is lengthy.
enum Months {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  Octobar,
  November,
  December
}

// Venues
enum Venue {
  CAC_HALL,
  MAIN_AUDITORIUM,
  KICT_MPH,
  IRK_Hall,
  EconS_MPH,
}

void main() {
  String? eventTitle;
  String organizerName;
  String? continueToBook;
  double eventstartTime = 8.00;
  double eventendTime = 5.00;
  int eventmonthNumber;
  int eventdateNumber;
  bool checkDate;
  bool checkMonth;
  bool checkVenue;
  bool? addBooking;
  var currentDate = DateTime.now();

  // Back up Intro screen if Html doeesnt work
  print("""      ------- ---------------------------
                     WELCOME          

                       TO

                      AKHWAN

          ------------------------------
              Event Management System  
          ------------------------------""");

  var events = <Map>[]; // Storing event details

  // User Input -- Arief
  do {
    print('');
    print('Press 1 for Booking new Event');
    print('');
    print('Press 2 for Checking Event Schedule');
    print('');

    //parsing the input to integer
    var chooseFromList = stdin.readLineSync();
    var chooseFromListNumber = int.parse(chooseFromList!);

    if (chooseFromListNumber == 1) {
      print("Enter the event Title: ");
      eventTitle = stdin.readLineSync();

      print("Enter Organizer(s) Name:");
      organizerName = stdin.readLineSync()!;

      print("Select Date for the Event you wish to create");

      print("Choose Month: ");

      //display all months name
      Months.values.forEach((month) {
        print('${month.index + 1}. ${month.name}');
      });

      //month validation
      do {
        print("Choose the Month by inserting the Months' number (1-12) ");
        var eventMonth = stdin.readLineSync();
        eventmonthNumber = int.parse(eventMonth!);

        checkMonth = false;

        if (eventmonthNumber < 1 || eventmonthNumber > 12) {
          print('Wrong Input!, Please try again ( 1 - 12 )');
          checkMonth = true;
        }
        --eventmonthNumber;
      } while (checkMonth == true);

      // Date validation -- Zawad
      do {
        print("Choose a Date between (1 - 31): ");
        var eventDate = stdin.readLineSync();
        eventdateNumber = int.parse(eventDate!);

        checkDate = false;

        if (eventdateNumber < 1 || eventdateNumber > 31) {
          print('Error, A month only can have upto 31 days try again.');
          checkDate = true;
        } else {
          var month = eventmonthNumber;
          month++;

          if (currentDate.month == month) {
            if (eventdateNumber <= currentDate.day) {
              print(
<<<<<<< Updated upstream
                  'Wrong Input! Date must be gretter that ${Months.values[currentDate.month - 1].name} ${currentDate.day}');
              checkDate = true;
            }
          } else if (currentDate.month != month) {}
=======
                  'Wrong Input! Date must be gretter than ${Months.values[currentDate.month - 1].name} ${currentDate.day}');
              checkDate = true;
            }
            if (eventmonthNumber % 2 == 0) {
              if (eventdateNumber > 31) {
                print(
                    '${Months.values[currentDate.month - 1].name}  only  has 31 days');
                checkDate = true;
              }
            }
          } else if (currentDate.month != month) {
            if (eventmonthNumber % 2 != 0) {
              if (eventdateNumber > 30) {
                print(
                    '${Months.values[eventmonthNumber].name}  only has 30 days');
                checkDate = true;
              }
            }
          }
>>>>>>> Stashed changes
        }
      } while (checkDate == true);

      print("Select Venue");

      // Venue validation -- Arief

      // display all available venues in the system

      Venue.values.forEach((venue) {
        print('${venue.index + 1}. ${venue.name}');
      });

      var selectvenueNumber;

      do {
        print("""Press 1 To choose the 1st Venue 
       
                 Press 2 To choose the 2nd Venue
        
                 Press 3 To choose the 3rd Venue

                 Press 4 To choose the 4th Venue

                 Press 5 To choose the 5th Venue""");

        var selectVenue = stdin.readLineSync();
        selectvenueNumber = int.parse(selectVenue!);

        checkVenue = false;

        if (selectvenueNumber < 1 || selectvenueNumber > 3) {
          print('Wrong Input, please try again');
          checkVenue = true;
        }

        selectvenueNumber--;
      } while (checkVenue == true);

      //check if event is classing based on day,month,year and venue
      //check if event is classing based on day,month,year and venue
      addBooking = checkOverlap(
          date: eventdateNumber,
          month: eventmonthNumber,
          events: events,
          venue: selectvenueNumber);

      if (addBooking == true) {
        // if event is not clasing the add new event to the local storage List
        events.add({
          'Event Title': eventTitle,
          'Event Organizer Name': organizerName,
          'Event Date': eventdateNumber,
          'Event Month': Months.values[eventmonthNumber].name,
          'Event Starting Time': eventstartTime,
          'Event Closing Time': eventendTime,
          'Event Venue': Venue.values[selectvenueNumber].name,
        });

        print('Booking Successfully created');
      } else if (addBooking == false) {
        print(
            'Booking Failed! Overlap with another event. Please Choose a different date');
      }
    } else if (chooseFromListNumber == 2) {
      printDetails(events);
    } else {
      print('Wrong Input');
    }

    //ask user whether he/she wants to continue or exit the program
    print('Do you want to continue: (Yes/No) : ');
    continueToBook = stdin.readLineSync();
  } while (continueToBook == 'Yes' || continueToBook == 'yes');
<<<<<<< Updated upstream
=======

  print("""

          ~~~~~~~~Thank you for using our system!~~~~~~~~""");
>>>>>>> Stashed changes
}
