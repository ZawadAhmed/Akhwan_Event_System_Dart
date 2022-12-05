import 'main.dart';

//function to cheeck Overlapping of any events
bool? checkOverlap({
  required List events,
  required int date,
  required int month,
  required int venue,
}) {
  if (events.length != 0) {
    for (int x = 0; x < events.length; x++) {
      if (events[x]['Event Month'] == Months.values[month].name) {
        if (events[x]['Event Date'] == date) {
          if (events[x]['Event Venue'] == Venue.values[venue].name) {
            //if new event is Overlapping with previously booked one return false
            return false;
          } else {
            //if new event is not Overlapping with previously booked one return true
            return true;
          }
        } else {
          //if new event is not Overlapping with previously booked one return true
          return true;
        }
      } else {
        //if new event is not Overlapping with previously booked one return true
        return true;
      }
    }
  } else {
    //if new event is not Overlapping with previously booked one return true
    return true;
  }
}

//function to print event details
void printDetails(List events) {
  print('--------All Booked Events---------');

  // if the list is not empthy print all events
  if (events.length != 0) {
    for (int i= 0; i < events.length; i++) {
      print('Event Details - Booking Number: ${i + 1}000TX');
      print('---------------------------------------------');
      print('Title: ${events[i]['Event Title']} ');
      print('');
      print('Event Organizer Name: ${events[i]['Event Organizer Name']} ');
      print('');
      print('Date: ${events[i]['Event Date']} ');
      print('Month: ${events[i]['Event Month']} ');
      print('Starting Time: ${events[i]['Event Starting Time']}0 AM');
      print('Closing Time: ${events[i]['Event Closing Time']}0 PM');
      print('Venue: ${events[i]['Event Venue']} ');
      print('');
    }
  } else {
    // if the list is empthy
    print('No information available, Create a booking now!');
  }
}
