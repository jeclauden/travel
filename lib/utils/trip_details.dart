class Trip {
  final City depature;
  final City destination;
  final String duration;
  final int gateNumber;
  final String depatureDate;
  final String depatureTime;

  Trip(this.depature, this.destination, this.duration, this.gateNumber,
      this.depatureDate, this.depatureTime);
}

class City {
  final String abr;
  final String name;
  City(this.abr, this.name);
}

City depature = City("NYC", "New York");
City destination = City("LDN", "London");

Trip tripOne = Trip(
  depature,
  destination,
  "8H 45M",
  25,
  "05 May",
  "10:00 AM",
);

City depature2 = City("ADL", "Adelaide");
City destination2 = City("SYD", "Sydney");

Trip tripTwo = Trip(
  depature2,
  destination2,
  "2H 20M",
  13,
  "10 Jun",
  "09:00 PM",
);
