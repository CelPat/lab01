class Lampka {
  bool isOn = false;
  int intensity = 0;
  Zarowka zarowka;

  Lampka(this.isOn, this.intensity, this.zarowka);

  void turnOn() {
    if (isOn) {
      print('Lampka jest już wlączona');
    } else {
      isOn = true;
      print('Lampka została włączona');
    }
  }

  void turnOff() {
    if (!isOnM()) {
      print('Lampka jest już wylączona');
    } else {
      isOn = false;
      zarowka.isTurnedOn = false;
      print('Lampka została wyłączona');
    }
  }

  void lightUp() {
    if (!isOnM()) {
      print('Najpierw zapal żarówkę');
    } else {
      intensity += 1;
      if (intensity > 10) {
        zarowka.isBurned = true;
        zarowka.isTurnedOn = false;
        intensity = 0;
        print('Zarowka spalila sie');
      }
    }
    print('Aktualne natezenie swiatla: $intensity');
  }

  bool isOnM() {
    if (isOn) {
      return true;
    } else {
      return false;
    }
  }

  bool isLightUped() {
    if (isOn & (intensity > 0) & !zarowka.isBurnedM()) {
      print('Lampka świeci');
      return true;
    } else {
      print('Lampka nie świeci');
      return false;
    }
  }

  bool isBulbBurned() {
    return zarowka.isBurnedM();
  }

  void decreaseLight() {
    intensity -= 1;
    if (intensity <= 0) {
      isOn = false;
      print('Zgaszono lampke');
    }
    print('Aktualne natezenie swiatla: $intensity');
  }

  // To exchange the bulb Lampka must be turned OFF and bulb needs to be burned.
  bool exchangeBulb() {
    if (!isOnM() & isBulbBurned()) {
      zarowka.isBurned = false;
      print('Wymieniono żarówkę');
      return true;
    } else {
      print('Nie udało wymienić się żarówki');
      return false;
    }
  }
}

class Zarowka {
  bool isTurnedOn = false;
  bool isBurned = false;

  Zarowka.withPar(this.isTurnedOn, this.isBurned) {}

  void turnOn() {
    if (isBurnedM()) {
      print('Zarowka jest spalona. Wymien zarowke');
    } else if (!isTurnedOn & !isBurnedM()) {
      isTurnedOn = true;
      print('Zapalono żarówkę');
    } else {
      print('Zarowka jest juz zapalona');
    }
  }

  void turnOff() {
    if (isBurnedM()) {
      print('Zarowka jest spalona. Wymien zarowke');
    } else if (isTurnedOn & !isBurnedM()) {
      isTurnedOn = false;
      print('Zgaszono żarówkę');
    } else {
      print('Zarowka jest juz zgaszona');
    }
  }

  bool isBurnedM() {
    if (isBurned) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Zarowka z1 = Zarowka.withPar(false, false);
  z1.turnOn();
  z1.turnOff();
  z1.turnOff();

  Lampka l1 = Lampka(false, 0, z1);
  l1.lightUp();
  l1.turnOff();
  l1.turnOn();

  l1.lightUp();
  l1.isLightUped();
  l1.decreaseLight();
  l1.turnOn();

  for (int i = 0; i < 11; i++) {
    l1.lightUp();
  }
  print(l1.isBulbBurned());
  l1.exchangeBulb();

  l1.turnOff();
  l1.exchangeBulb();
}
