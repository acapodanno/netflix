class SliverShowSectionModel {
  final SliverShowDisplayMode displayMode;
  final List<SliverShowModel> shows;

  const SliverShowSectionModel({
    required this.displayMode,
    required this.shows,
  });
}

class SliverShowModel {
  final String label;

  const SliverShowModel({
    required this.label,
  });
}

enum SliverShowDisplayMode {
  list,
  grid,
}

final sliverShows = [
  const SliverShowSectionModel(
    displayMode: SliverShowDisplayMode.list,
    shows: [
      SliverShowModel(label: "Friends"),
      SliverShowModel(label: "How I Met Your Mother"),
    ],
  ),
  const SliverShowSectionModel(
    displayMode: SliverShowDisplayMode.grid,
    shows: [
      SliverShowModel(label: "Scopri"),
      SliverShowModel(label: "Di"),
      SliverShowModel(label: "Più"),
    ],
  ),
  const SliverShowSectionModel(
    displayMode: SliverShowDisplayMode.list,
    shows: [
      SliverShowModel(label: "White Collar"),
      SliverShowModel(label: "Chuck"),
      SliverShowModel(label: "Matrix"),
      SliverShowModel(label: "Harry Potter"),
    ],
  ),
];