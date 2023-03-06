enum ImpactGoals {
  people(
    name: 'people',
    images: [
      'assets/images/people_1.svg',
      'assets/images/people_2.svg',
      'assets/images/people_3.svg',
      'assets/images/people_4.svg'
    ],
    description: [
      'Walkie  Talkies',
      'Community Helpers',
      'Reading Peoples minds',
      'Helping out at a food bank',
    ],
  ),
  animal(
    name: 'animal',
    images: [
      'assets/images/animal_1.svg',
      'assets/images/animal_2.svg',
      'assets/images/animal_3.svg',
      'assets/images/animal_4.svg'
    ],
    description: [
      'Teddy Bear',
      'Animal Rescue Team',
      'Talk to animals',
      'Helping out at an animal shelter',
    ],
  ),
  health(
    name: 'health',
    images: [
      'assets/images/nature_1.svg',
      'assets/images/nature_2.svg',
      'assets/images/nature_3.svg',
      'assets/images/nature_4.svg'
    ],
    description: [
      'Lego set',
      'Emergency Response Squad',
      'Fix things by snapping your fingers',
      'Learning first aid',
    ],
  ),
  nature(
    name: 'nature',
    images: [
      'assets/images/nature_1.svg',
      'assets/images/nature_2.svg',
      'assets/images/nature_3.svg',
      'assets/images/nature_4.svg'
    ],
    description: [
      'Camera',
      'Nature Explorers',
      'Control the weather',
      'Plant a community garden',
    ],
  );

  const ImpactGoals({
    required this.name,
    required this.images,
    required this.description,
  });

  final String name;
  final List<String> images;
  final List<String> description;
}
