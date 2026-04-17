import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/entities/entities.dart';
import 'datasource_providers.dart';

// ── Stream de todas las categorías ──────────────────────────
final categoriesStreamProvider = StreamProvider<List<CategoryEntity>>((ref) {
  return ref.watch(categoriesDatasourceProvider).watchAll();
});

// ── Búsqueda de categorías ───────────────────────────────────
final categorySearchProvider = StateProvider<String>((ref) => '');

final filteredCategoriesProvider = Provider<AsyncValue<List<CategoryEntity>>>((ref) {
  final query = ref.watch(categorySearchProvider).trim().toLowerCase();
  final all = ref.watch(categoriesStreamProvider);

  if (query.isEmpty) return all;

  return all.whenData(
    (cats) => cats
        .where((c) => c.name.toLowerCase().contains(query))
        .toList(),
  );
});

// ── Categorías seleccionadas en el formulario ────────────────
class SelectedCategoriesNotifier extends Notifier<List<String>> {
  @override
  List<String> build() => [];

  void toggle(String category) {
    if (state.contains(category)) {
      state = state.where((c) => c != category).toList();
    } else {
      state = [...state, category];
    }
  }

  bool isSelected(String category) => state.contains(category);

  /// Agrega una categoría nueva escribiéndola manualmente
  /// y la selecciona de inmediato
  void addAndSelect(String name) {
    final trimmed = name.trim();
    if (trimmed.isEmpty || state.contains(trimmed)) return;
    state = [...state, trimmed];
  }

  void clear() => state = [];

  /// Útil al editar un juego existente para pre-cargar sus categorías
  void loadFrom(List<String> categories) {
    state = [...categories];
  }
}

final selectedCategoriesProvider =
    NotifierProvider<SelectedCategoriesNotifier, List<String>>(
      SelectedCategoriesNotifier.new,
    );