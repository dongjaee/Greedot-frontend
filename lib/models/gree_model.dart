class GreeUpdate {
  final String gree_name;
  final int prompt_age;
  final String prompt_character;
  final String prompt_mbti;

  GreeUpdate({required this.gree_name, required this.prompt_age, required this.prompt_character, required this.prompt_mbti});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (gree_name != null) {
      data['gree_name'] = gree_name;
    }
    if (prompt_age != null) {
      data['prompt_age'] = prompt_age;
    }
    if (prompt_character != null) {
      data['prompt_character'] = prompt_character;
    }
    if (prompt_mbti != null) {
      data['prompt_mbti'] = prompt_mbti;
    }
    return data;
  }
}