
import 'dart:async';
import 'package:flutter/material.dart';
import 'user_data.dart';
import 'event_data.dart';
import 'theme_names.dart';

class MockEventRepository implements EventRepository{
  // Mock data
  // TODO: (No user image yet!!)
  static const kEvents = const <EventItem>[
    const EventItem(
        title: "Book-writing workshop",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
            " sed do eiusmod tempor incididunt ut labore et dolore"
            " magna aliqua. Ut enim ad minim veniam, quis nostrud "
            "exercitation ullamco laboris nisi ut aliquip ex ea "
            "commodo consequat. ",
        fromDate: "2017-11-20 20:00:00",
        fromTime: const TimeOfDay(hour: 20,minute: 0),
        eventThemes:const <EventTheme>[
          const EventTheme(name: ThemeNames.poetry_prose),
          const EventTheme(name: ThemeNames.language)]
    ),
    const EventItem(
        title: "Language Café",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
            " sed do eiusmod tempor incididunt ut labore et dolore"
            " magna aliqua. Ut enim ad minim veniam, quis nostrud "
            "exercitation ullamco laboris nisi ut aliquip ex ea "
            "commodo consequat. ",
        fromDate: "2017-11-2 20:00:00",
        fromTime: const TimeOfDay(hour: 20,minute: 0),
        eventThemes:const <EventTheme>[
          const EventTheme(name: ThemeNames.language),
          const EventTheme(name: ThemeNames.culture_edu)]
    ),
    const EventItem(
        title: "Language Café",
        description:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
            " sed do eiusmod tempor incididunt ut labore et dolore"
            " magna aliqua. Ut enim ad minim veniam, quis nostrud "
            "exercitation ullamco laboris nisi ut aliquip ex ea "
            "commodo consequat. ",
        fromDate: "2017-11-2 20:00:00",
        fromTime: const TimeOfDay(hour: 20,minute: 0),
        eventThemes:const <EventTheme>[
          const EventTheme(name: ThemeNames.language),
          const EventTheme(name: ThemeNames.culture_edu)]
    )
  ];

  Future<List<EventItem>> fetch(){
    return new Future.value(kEvents);
  }
}

