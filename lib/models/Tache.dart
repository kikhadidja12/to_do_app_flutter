class Tache {
  final String name;
  bool isdone = false;

  Tache(this.name, this.isdone);
  void Changement() {
    isdone = !isdone;
  }
}
