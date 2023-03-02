// ignore_for_file: prefer_single_quotes

enum ImpactGoals {
  helpPeople(
    name: "help people",
    description: "You can help the world by helping people!",
  ),
  education(
    name: "education",
    description: "You can help the world by educate people!",
  ),
  cleanWater(
    name: "clean water",
    description: "You can help the world by cleaning water!",
  ),
  health(
    name: "health",
    description: "You can help the world by making it healthier!",
  ),
  international(
    name: "international",
    description: "You can help the world by making it international!",
  ),
  emergencyAid(
    name: "emergency aid",
    description: "You can help the world by working in emergency aid!",
  ),
  helpAnimals(
    name: "help animals",
    description: "You can help the world by helping animals!",
  ),
  nature(
    name: "nature",
    description: "You can help the world by helping nature!",
  );

  const ImpactGoals({
    required this.name,
    required this.description,
  });

  final String name;
  final String description;
}
