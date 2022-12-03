import 'main.dart';

//function to check overlapping of any events -- Zawad
bool? checkeventOverlap({
  required List events,
  required int date,
  required int venue,
}) {
  if (events.length != 0) {
    for (int x = 0; x < events.length; x++) {
      if (events[x]['Event Date'] == date) {
            if (events[x]['Event Venue'] == Venue.values[venue].name) {
              //if new event is clashing with previously booked one return false
              return false;
            } else {
              //if new event is not clashing with previously booked one return true
              return true;
            }
          } else {
            //if new event is not clashing with previously booked one return true
            return true;
          }
        } /*else*/ {
          //if new event is not clashing with previously booked one return true
          return true;
        }
      } else {
        //if new event is not clashing with previously booked one return true
        return true;
      }
    }

//function to print event details --  Arief

void printDetails(List events)
{
  print("~~~~~~Booked Events~~~~~~");
  //If the list is not empty, It will print all available events
  if(events.length !=0)
  {
  for (int i=0;i < events.length; i++)
  {
    print("Event Details - Booking Number: ${i+1}000TX");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Title: ${events[i]["Event Title"]}");
    print("Event Organizer Name: ${events[i]["Event Organizer Name"]}");
    print("Date: ${events[i]["Event Date"]}");
    print("Month: ${events[i]["Event Month"]}");
    print("Year: ${events[i]["Event year"]} ");
    print("Starting Time: ${events[i]["Event Starting Time"]} AM");
    print("Closing Time: ${events[i]["Event Closing Time"]} PM");
    print("Venue: ${events[i]["Event Venue"]} ");
    print("");
  }
  }
  //If the list is empty
  else
  {
    print("No events available");
  }
}