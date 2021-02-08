import 'package:shared_preferences/shared_preferences.dart';

class CrudService {
  Future<void> veriKaydi() async {
    var sp = await SharedPreferences.getInstance();
    sp.setString("ad", "ahmet");
    sp.setInt("yas", 18);
    sp.setDouble("boy", 1.80);
    sp.setBool("bekarMi", true);
    var arkadasList = List<String>();
    arkadasList.add("vedat");
    arkadasList.add("sedat");
    arkadasList.add("sevda");

    sp.setStringList("arkadasListe", arkadasList);
  }

  Future<void> veriOku() async {
    var sp = await SharedPreferences.getInstance();
    String ad = sp.getString("ad") ?? "isim yok";
    int yas = sp.getInt("yas") ?? 99;
    double boy = sp.getDouble("boy") ?? 9.99;
    bool bekarMi = sp.getBool("beakrMi") ?? false;

    var arkadasList = sp.getStringList("arkadasListe") ?? null;

    print("Ad: $ad");
    print("Yas: $yas");
    print("Boy: $boy");
    print("Beakar mi: $bekarMi");
    for (var arkadas in arkadasList) {
      print("Arkadaş: $arkadas");
    }
  }

  Future<void> veriSil() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("ad");
  }

  Future<void> veriGuncelle() async {
    var sp = await SharedPreferences.getInstance();
    sp.setInt("yas", 100);
  }
}
