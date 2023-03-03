// ignore_for_file: prefer_single_quotes

enum ImpactGoals {
  helpPeople(
    name: "help people",
    description: "This world needs a helper to solve its problems!",
  ),
  education(
    name: "education",
    description: "This world needs someone who is eager to learn!",
  ),
  cleanWater(
    name: "clean water",
    description: "This world needs a water buddy!",
  ),
  health(
    name: "health",
    description: "This world needs someone to give it life!",
  ),
  international(
    name: "international",
    description:
        "This world needs someone who like travelling and exploring new places!",
  ),
  emergencyAid(
    name: "emergency aid",
    description: "This worlds need someone who loves fixing things!",
  ),
  helpAnimals(
    name: "help animals",
    description: "You can help the world by helping animals!",
  ),
  nature(
    name: "nature",
    description: "This world needs someone who loves the great outdoors!",
  );

  const ImpactGoals({
    required this.name,
    required this.description,
  });

  final String name;
  final String description;
}
