// import 'dart:ffi';

void main() {
  Mobil paketMobil = Mobil(
      merk: 'Yamaha',
      model: 'Civic',
      tahun: 1998,
      bahanBakar: 'turbo',
      jumlahKursi: 12);

  Motor paketMotor = Motor(
      merk: 'Yamaha',
      model: 'Honda NSR SP',
      tahun: 1996,
      cc: 150,
      jenisMotor: 'motor sport fairing 2-ta');

  // kita jalankan method dari masing-masing objek
  print('Informasi Mobil:');
  paketMobil.tampilkanInfo();

  print('\nInformasi Motor:');
  paketMotor.tampilkanInfo();
}

class Kendaraan {
  String? merk;
  String? model;
  int? tahun;

  Kendaraan({this.merk, this.model, this.tahun});

  void tampilkanInfo() {
    print('Merk: $merk');
    print('Model: $model');
    print('Tahun: $tahun');
  }
}

class Mobil extends Kendaraan {
  String? bahanBakar;
  int? jumlahKursi;

  Mobil(
      {this.bahanBakar,
      this.jumlahKursi,
      super.merk,
      super.model,
      super.tahun});

  @override
  void tampilkanInfo() {
    super.tampilkanInfo(); // Memanggil method dari class Kendaraan
    print('Bahan Bakar: $bahanBakar');
    print('Jumlah Kursi: $jumlahKursi');
  }
}

class Motor extends Kendaraan {
  int? cc;
  String? jenisMotor;

  Motor({this.cc, this.jenisMotor, super.merk, super.model, super.tahun});

  @override
  void tampilkanInfo() {
    super.tampilkanInfo(); // Memanggil method dari class Kendaraan
    print('Kecepatan: $cc cc');
    print('Jenis Motor: $jenisMotor');
  }
}
