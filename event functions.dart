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
        } else {
          //if new event is not clashing with previously booked one return true
          return true;
        }
      } else {
        //if new event is not clashing with previously booked one return true
        return true;
      }
    }

//function to print event details --  Arief

