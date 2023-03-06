enum ImpactGoalWorlds {
  people(
    name: 'Wild Woods',
    image: 'assets/images/impact_goal_nature.svg',
  ),
  animal(
    name: 'Critter Country',
    image: 'assets/images/impact_goal_animal.svg',
  ),
  health(
    name: 'Kindness Kingdom',
    image: 'assets/images/impact_goal_people.svg',
  ),
  nature(
    name: 'Rescue Realm',
    image: 'assets/images/impact_goal_health.svg',
  );

  const ImpactGoalWorlds({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;
}
