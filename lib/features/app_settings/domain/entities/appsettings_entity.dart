class AppSettingEntity {
  final String key;
  final String? value;

  AppSettingEntity({
    required this.key,
    this.value,
  });

  AppSettingEntity copyWith({
    String? key,
    String? value,
  }) {
    return AppSettingEntity(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}