class History {
  String title;
  String desc;
  DateTime? dateTime = DateTime.now();

  History({required this.title, required this.desc, dateTime})
      : this.dateTime = dateTime ?? DateTime.now();
}
