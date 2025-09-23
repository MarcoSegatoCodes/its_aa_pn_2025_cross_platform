class Animal {
  Animal({
    required this.name,
    required this.bornAt,
    required this.ownerName,
    required this.lastVisitAt,
  });

  factory Animal.register({
    required String petName,
    required DateTime bornat,
    required String ownerName,
  }) {
    return Animal(
      name: petName,
      bornAt: bornat,
      ownerName: ownerName,
      lastVisitAt: DateTime.now(),
    );
  }

  final String name;
  final DateTime bornAt;
  final String ownerName;
  final DateTime lastVisitAt;

  int getYears() {
    final now = DateTime.now();
    return now.year - bornAt.year;
  }

  int getDaysSinceLastvisit() {
    final now = DateTime.now();
    return now.difference(lastVisitAt).inDays;
  }
}
