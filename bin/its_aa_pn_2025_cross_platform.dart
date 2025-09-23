import 'package:its_aa_pn_2025_cross_platform/animal.dart';

void main(List<String> arguments) {
  final bubu = Animal.register(
    petName: "Bubu",
    bornat: DateTime(2023, 09, 11),
    ownerName: "Marco",
  );

  final gaga = Animal.register(
    petName: "Gaga",
    bornat: DateTime(2021, 03, 24),
    ownerName: "Franco",
  );

  final fofo = Animal.register(
    petName: "Fofo",
    bornat: DateTime(2022, 05, 14),
    ownerName: "Luigi",
  );

  final List = [bubu, gaga, fofo];

  for (final animal in List) {
    print("Il tuo animale si chiama: ${animal.name}");
    print("Il tuo padrone è: ${animal.ownerName}");
    print("Il tuo animale è nato il ${animal.bornAt}");
    print("L'ho visitato l'ultima volta ${animal.lastVisitAt}");
    print(
      "l'ho visitato l'ultima volta ${animal.getDaysSinceLastvisit()} giorni fa",
    );
    print("\n");
  }
}
