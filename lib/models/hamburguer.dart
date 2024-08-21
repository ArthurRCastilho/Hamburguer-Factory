class Hamburguer {
  bool montado = false;
  bool inspecionado = false;
  bool embalado = false;
  bool valide = true;

  void recomecar() {
    montado = false;
    inspecionado = false;
    embalado = false;
    valide = true;
  }

  void toggleMontado() {
    montado = !montado;
  }

  void toggleInpecionado() {
    inspecionado = !inspecionado;
  }

  void toggleEmbalado() {
    embalado = !embalado;
  }

  void toggleValide(bool validacao) {
    valide = validacao;
  }

  bool isMontado() {
    return montado;
  }

  bool isInspecionado() {
    return inspecionado;
  }

  bool isEmbalado() {
    return embalado;
  }
}
