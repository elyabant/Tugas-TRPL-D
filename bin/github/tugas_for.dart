void main() {
  //? Soal 1 : Buatlah program yang menampilkan daftar menu makanan dibawah ini menggunakan for in dan for loop
  List<String> data = [
    'Nasi Goreng',
    'Mie Tek tek',
    'Lumpia Basah',
    'Ramen',
    'Mie Rebus'
  ];
  print('berikut adalah daftar menu(mengunakan for in):');
  for (String makanan in data) {
    print('- $makanan');
  }
  print('\nberikut adalah daftar menu(menggunakkan for loop):');
  for (int i = 0; i < data.length; i++) {
    print('${i + 1}. ${data[i]}');
  }
  //? Soal 2 : Buatlah program yang menampilkan angka 1-10 kecuali angka 7, 8 dan 9 menggunakan for loop
  // hint: kamu bisa menggunakan continue untuk melewati angka 7, 8 dan 9
  for (var i = 1; i <= 10; i++) {
    if (i == 7 || i == 8 || i == 9) {
      continue;
    }
    print('Angka: $i');
  }

  //? Soal 3 : Buatlah sebuah list menu makanan dan minuman beserta harganya dari list dataPesanan dibawah ini menggunakan for loop dan for in
  List<Map> dataPesanan = [
    {
      'makanan': [
        {'nama': 'Nasi Goreng', 'harga': 15000},
        {'nama': 'Mie Tek Tek', 'harga': 12000},
        {'nama': 'Bubur', 'harga': 3000},
        {'nama': 'Soto', 'harga': 10000}
      ]
    },
    {
      'minuman': [
        {'nama': 'Kopi', 'harga': 5000},
        {'nama': 'Cendol', 'harga': 7000},
        {'nama': 'Es Jeruk', 'harga': 6000}
      ]
    }
  ];
  for (var kategori in dataPesanan) {
    kategori.forEach((key, value) {
      print('--- Daftar $key ---');
      for (var item in value) {
        print('- ${item['nama']} - Rp ${item['harga']}');
      }
    });
  }

  for (int i = 0; i < dataPesanan.length; i++) {
    dataPesanan[i].forEach((kategori, daftar) {
      print('--- Daftar $kategori ---');
      for (var item in daftar) {
        print('- ${item['nama']} - Rp ${item['harga']}');
      }
    });
  }
}
