// ignore_for_file: prefer_single_quotes

enum ImpactGoalWorlds {
  wildWoods(
    name: "Wild Woods",
    image: "assets/images/impact_goal_nature.svg",
  ),
  critterCountry(
    name: "Critter Country",
    image: "assets/images/impact_goal_animal.svg",
  ),
  kindnessKingdom(
    name: "Kindness Kingdom",
    image: "assets/images/impact_goal_people.svg",
  ),
  rescueRealm(
    name: "Rescue Realm",
    image: "assets/images/impact_goal_health.svg",
  );

  const ImpactGoalWorlds({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;
}
