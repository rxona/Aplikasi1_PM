import './product.dart';

class Category {
  final String name;
  final String image;
  final List<Product> products;

  Category({required this.name, required this.image, required this.products});
}

List<Category> categories = [
  Category(name: 'Topi', image: 'Cap', products: [
    Product(
        id: '1',
        name: "Topi Polos Ring\nBesi Baseball",
        price: 15000,
        images: [
          "assets/Category/Cap/1.1.jpeg",
          "assets/Category/Cap/1.2.jpeg",
          "assets/Category/Cap/1.3.jpeg"
        ],
        description:
            'Memiliki bahan premium cotton berkualitas.\nMemiliki jahitan rapih.\nBagian belakang memakai ring besi berkualitas guna mengatur besar dan kecilnya topi..\nUkuran lingkar kepala 54 - 60 cm..'),
    Product(
        id: '2',
        name: "Topi Baseball\nLos Angeles (LA)",
        price: 20000,
        images: [
          "assets/Category/Cap/2.1.jpeg",
          "assets/Category/Cap/2.2.jpeg",
          "assets/Category/Cap/2.3.jpeg"
        ],
        description:
            'Topi Baseball Cap Dewasa Bordir LA Bisa Untuk Pria Dan Wanita Alias Unisex\nTopi dengan kualitas premium, berbahan American Drill, dan memiliki pengaturan belakang pakai ring besi\nMemiliki lingkar kepala 54 - 62 cm\nReady Warna Hitam , Cream , Merah , Navy / Biru dongker'),
    Product(
        id: '3',
        name: "Topi Ring Besi Bordir 'M'",
        price: 20000,
        images: [
          "assets/Category/Cap/3.1.jpeg",
          "assets/Category/Cap/3.2.jpeg",
          "assets/Category/Cap/3.3.jpeg"
        ],
        description:
            'Memiliki ukuran panjang 8 cm dengan lingkar topi 56 - 60 cm, dan tinggi topi 11 cm\nBerat topi adalah 80 gram\nMemiliki bahan katun + polyester'),
    Product(
        id: '4',
        name: "Topi Distro Baseball\nBunga Mawar",
        price: 30000,
        images: [
          "assets/Category/Cap/4.1.jpeg",
        ],
        description:
            'Topi Distro Baseball Unisex Hat Bunga Mawar Bordir Pinggiran Melengkung\nTopi Ini Memiliki Bahan Daimaru dan Memiliki Kenyamanan dalam Pemakaiannya\nUkuran One Size (Bisa Disesusaikan)\nTopi Memiliki Bordir di Belakang'),
    Product(
        id: '5',
        name: "Topi Jaring Polos Unisex",
        price: 15000,
        images: [
          "assets/Category/Cap/5.1.jpeg",
          "assets/Category/Cap/5.2.jpeg",
          "assets/Category/Cap/5.3.jpeg",
          "assets/Category/Cap/5.4.jpeg",
          "assets/Category/Cap/5.5.jpeg",
          "assets/Category/Cap/5.6.jpeg"
        ],
        description:
            'Topi ini memiliki bahan lotto / hyget super + jaring grade A\nMemiliki ukuran lingkar topi 56 - 60 cm\nDi bagian belakang, menggunakan gesper untuk menyesuaikan ukuran topi dan kepala'),
  ]),
  Category(name: 'Baju', image: 'T-shirt', products: [
    Product(
        id: '6',
        name: "Set Pasmina Polka\nMAXI BUBBLE",
        price: 50000,
        images: [
          "assets/Category/T-Shirt/1.1.jpeg",
          "assets/Category/T-Shirt/1.2.jpeg",
          "assets/Category/T-Shirt/1.3.jpeg",
          "assets/Category/T-Shirt/1.4.jpeg"
        ],
        description:
            'Bahan Jersey Halus, Adem dan Lembut,  sleting busui.\nP135, LD110, All size fit to XL ...\nSet Pasmina polka, Dress Polos\nReady warna PINK dan COKLAT'),
    Product(
        id: '7',
        name: "Set Jilbab UMMI SYARI",
        price: 80000,
        images: [
          "assets/Category/T-Shirt/2.1.jpeg",
          "assets/Category/T-Shirt/2.2.jpeg"
        ],
        description:
            'UMMI SYARI tersedia warna Ungu dan orange,  MOTIF BUNGA HIJABERS\nMAXI Tangan Panjang,motif bunga jersey,Busui Sleting + Bergo pad lemes\nBAHAN JERSEY & spandek korea(adem,tebal,lembut)\nukuran All size fit to XL ,Ld 110cm Melar\nGambar Real pict'),
    Product(
        id: '8',
        name: "Set Jilbab\nBIG FLOWER SYARI",
        price: 80000,
        images: [
          "assets/Category/T-Shirt/3.1.jpeg",
          "assets/Category/T-Shirt/3.2.jpeg",
          "assets/Category/T-Shirt/3.3.jpeg"
        ],
        description:
            'Ready hanya 2 warna: Pink dan Putih..\nBahan Katun Import Lembut Good, P140, LD110cm\nBusui Sletting satu set plus jilbab syari\nUkuran All size fit to XL , Tali Pinggang\nKhimar/jilbab bahan Hycon Double Layer diSerut PD95,PB130cm\nRok Lebar Payung 266cm'),
    Product(
        id: '9',
        name: "Set Pasmina Linda\nBAJU HIJABERS INDIA",
        price: 80000,
        images: [
          "assets/Category/T-Shirt/4.1.jpeg",
          "assets/Category/T-Shirt/4.2.jpeg",
          "assets/Category/T-Shirt/4.3.jpeg",
          "assets/Category/T-Shirt/4.4.jpeg",
          "assets/Category/T-Shirt/4.5.jpeg",
          "assets/Category/T-Shirt/4.6.jpeg",
          "assets/Category/T-Shirt/4.7.jpeg",
          "assets/Category/T-Shirt/4.8.jpeg"
        ],
        description:
            'Maxi lengan panjang + pasminah polos\nBahan spandek korea combi taffeta gold, ld 108cm\nAll size fit L BESAR'),
    Product(
        id: '10',
        name: "Set Pasmina KHANALIA",
        price: 50000,
        images: [
          "assets/Category/T-Shirt/5.1.jpeg",
          "assets/Category/T-Shirt/5.2.jpeg",
          "assets/Category/T-Shirt/5.3.jpeg",
          "assets/Category/T-Shirt/5.4.jpeg",
          "assets/Category/T-Shirt/5.5.jpeg",
          "assets/Category/T-Shirt/5.6.jpeg"
        ],
        description:
            'Maxi tangan panjang Full Brukat halus Jersey + Pasmina\nUkuran All Size : Muat sampai ukuran L\nLD 105 cm\nBahannya Bagus Banget...\nBisa buat acara Pesta Undangan...'),
  ]),
  Category(name: 'Celana', image: 'Pants', products: [
    Product(
        id: '11',
        name: "Celana Panjang\nJOGER Kotak",
        price: 50000,
        images: ["assets/Category/Pants/1.1.jpeg"],
        description:
            'Memiliki bahan utama yakni katun...\nMemiliki Panjang 93 cm, lingkar pinggang 108 cm, dan ukurannya All Size, fit to L...\nReal pict sesuai gambar'),
    Product(
        id: '12',
        name: "Celana Panjang\nJOGER Stripped",
        price: 50000,
        images: ["assets/Category/Pants/2.1.jpeg"],
        description:
            'Memiliki Bahan Celana Jersey Tebal dan Melar, dengan Ada Kantong Kanan dan Kiri\nMemiliki Ukuran Panjang Celana 93 cm dan Lingkar Pinggang 108 cm\nAll Size Fit to XL\nBarang Sesuai Gambar (Real Pict) dan Memiliki Kualitas Bagus'),
    Product(
        id: '13',
        name: "Celana Panjang\nJOGER JOOY",
        price: 50000,
        images: [
          "assets/Category/Pants/3.1.jpeg",
          "assets/Category/Pants/3.2.jpeg",
          "assets/Category/Pants/3.3.jpeg",
          "assets/Category/Pants/3.4.jpeg",
          "assets/Category/Pants/3.5.jpeg"
        ],
        description:
            'Memiliki Bahan Flecee G240 dan Tekstur Bahan yang lembut, Adem dan Nyaman dipakai...\nUkuran All Size, dengan Lingkar Pinggang Hingga 110 cm, Lingkar Paha 70 cm, Panjang Hingga 97 cm\nMemiliki Warna Tersedia Lengkap (Hitam, Abu-abu, Charcoal, Denim, Taro, Beige, Coklat, Mint, Dustypink, Burgandy, dan Mocca)'),
    Product(
        id: '14',
        name: "Celana Panjang\nAtletis KULOT",
        price: 80000,
        images: [
          "assets/Category/Pants/4.1.jpeg",
          "assets/Category/Pants/4.2.jpeg",
          "assets/Category/Pants/4.3.jpeg"
        ],
        description:
            'Memiliki berat 300 gram\nMenggunakan bahan knit, bahan yang adem dan nyaman dipakai, serta tidak nerawang dan berkualitas\nMemiliki panjang 92 cm'),
    Product(
        id: '15',
        name: "Celana Panjang\nJegging Jumbo",
        price: 90000,
        images: [
          "assets/Category/Pants/5.1.jpeg",
          "assets/Category/Pants/5.2.jpeg",
          "assets/Category/Pants/5.3.jpeg"
        ],
        description:
            'Menggunakan bahan jeans stretch yang elastis dan nyaman dipakai dengan High Quality Control...\nMemiliki lingkar pinggang hingga 115 cm, dengan panjang 90 cm, dan pinggangnya full karet\nBisa dipakai oleh orang dengan berat badan 61 - 75 kg'),
  ]),
  Category(name: 'Tas/Dompet', image: 'Bag', products: [
    Product(
        id: '16',
        name: "Tas Fashion Import\nPU GLOSSY",
        price: 125000,
        images: [
          "assets/Category/Bag/1.1.jpeg",
          "assets/Category/Bag/1.2.jpeg"
        ],
        description:
            'Bahan PU GLOSSY ada tali panjang nya.. muat banyak barang..\nModel Exclusive, sangat cocok utk kemana saja\nReal pict ..Tas Import\nUKURAN 42 X 23 x 19'),
    Product(
        id: '17',
        name: "Dompet Rajut Asli Jogja",
        price: 130000,
        images: [
          "assets/Category/Bag/2.1.jpeg",
          "assets/Category/Bag/2.2.jpeg",
          "assets/Category/Bag/2.3.jpeg",
          "assets/Category/Bag/2.4.jpeg"
        ],
        description:
            'Ukuran Tribal Pouch (1-6) adalah 25 x 15 x 5\nUkuran Pouch Tribal (7-9) adalah 25 x 15\nDompet Rajut asli jogja Sangat Bagus dan Rapi\nDompetnya bagus dan bisa muat banyak...'),
    Product(
        id: '18',
        name: "Dompet Kartu Lipat Mini\nCELSA",
        price: 90000,
        images: [
          "assets/Category/Bag/3.1.jpeg",
          "assets/Category/Bag/3.2.jpeg",
          "assets/Category/Bag/3.3.jpeg",
          "assets/Category/Bag/3.4.jpeg",
          "assets/Category/Bag/3.5.jpeg",
          "assets/Category/Bag/3.6.jpeg",
          "assets/Category/Bag/3.7.jpeg",
          "assets/Category/Bag/3.8.jpeg",
          "assets/Category/Bag/3.9.jpeg"
        ],
        description:
            'Dompet ini berbahan kulit sintetis\nMemiliki warna hitam dan coklat\nDompetnya memiliki ukuran 12.5 x 2 x 10 cm\nDompet memiliki berat 131 gram'),
    Product(
        id: '19',
        name: "BELIYA MISEL Slingbag",
        price: 100000,
        images: [
          "assets/Category/Bag/4.1.jpeg",
          "assets/Category/Bag/4.2.jpeg",
          "assets/Category/Bag/4.3.jpeg"
        ],
        description:
            'Misel bag adalah tas dengan kualitas yang terdepan dan seperti yang banyak diinginkan customer dengan konsep "affordable"\nMemiliki ukuran 21 x 15 x 8 cm\nMemiliki material syntethic ostrich leather\nMemiliki strap 110 cm'),
    Product(
        id: '20',
        name: "Thailand Canvas Tote Bag",
        price: 65000,
        images: [
          "assets/Category/Bag/5.1.jpeg",
          "assets/Category/Bag/5.2.jpeg"
        ],
        description:
            'Tas ini memiliki motif gajah pada depan dan bealakngnya\nMemiliki ukuran 28 x 9 x 23\nMemiliki dua jenis tali, yakni yang bulat dan rajut'),
  ]),
  Category(name: 'Sepatu', image: 'Shoe', products: [
    Product(
        id: '21',
        name: "Sepatu Sendal Wanita Emory",
        price: 200000,
        images: [
          "assets/Category/Shoe/1.1.jpeg",
          "assets/Category/Shoe/1.2.jpeg",
          "assets/Category/Shoe/1.3.jpeg",
          "assets/Category/Shoe/1.4.jpeg",
        ],
        description:
            'Ukuran 37cm...\nWarna pink... Menggunakan bahan sintetis\nSesuai gambar..Nyaman di pakai sehari hari...'),
    Product(
        id: '22',
        name: "Sepatu Wanita Canvas\nZeodda Suzy",
        price: 100000,
        images: [
          "assets/Category/Shoe/2.1.jpeg",
          "assets/Category/Shoe/2.2.jpeg",
          "assets/Category/Shoe/2.3.jpeg",
          "assets/Category/Shoe/2.4.jpeg"
        ],
        description:
            'Zeodda Suzy terbuat dari bahan Kanvas Premium dengan alas Full Karet Anti Licin serta dilengkapi dengan Hi-Poly insole yang tebal, empuk, elastis, dan tahan lama\nMemiliki dua warna yakni Low Black / Low White\nMemiliki tinggi sol 2 - 3 cm\nSize Chartnya adalah 36 (22.5 cm), 37 (23 cm), 38 (23.5 cm), 39 (24 cm), 40 (24.5 cm), 41 (25 cm), 42 (25.5 cm)'),
    Product(
        id: '23',
        name: "Sepatu Wanita Flat Karet Jelly\nHYS 857",
        price: 70000,
        images: [
          "assets/Category/Shoe/3.1.jpeg",
          "assets/Category/Shoe/3.2.jpeg",
          "assets/Category/Shoe/3.3.jpeg",
          "assets/Category/Shoe/3.4.jpeg",
          "assets/Category/Shoe/3.5.jpeg"
        ],
        description:
            'Memiliki Ukuran 36 (23.5 cm), 37 (24 cm), 38 (24.5 cm), 39 (25 cm), 40 (25.5 cm)\nMemiliki desain yang elegan dengan model yang terbaru dan keren\nKualitas sesuai harga dan dikirim sesuai gambar dan deskripsi'),
    Product(
        id: '24',
        name: "Sepatu Sneakers Wanita Rajut\nSport LV0102",
        price: 80000,
        images: [
          "assets/Category/Shoe/4.1.jpeg",
          "assets/Category/Shoe/4.2.jpeg",
          "assets/Category/Shoe/4.3.jpeg",
          "assets/Category/Shoe/4.4.jpeg",
          "assets/Category/Shoe/4.5.jpeg"
        ],
        description:
            'Memiliki ukuran 36 (23 cm), 37 (23.5 cm), 38 (24 cm), 39 (24.5 cm), 40 (25 cm) dengan toleransi size 1 - 2 cm\nMemiliki berat 550 gram\nSepatu menggunakan bahan kanvas'),
    Product(
        id: '25',
        name: "Sepatu Slip On Wanita S08",
        price: 50000,
        images: [
          "assets/Category/Shoe/5.1.jpeg",
          "assets/Category/Shoe/5.2.jpeg",
          "assets/Category/Shoe/5.3.jpeg",
          "assets/Category/Shoe/5.4.jpeg",
          "assets/Category/Shoe/5.5.jpeg",
          "assets/Category/Shoe/5.6.jpeg",
        ],
        description:
            'Memiliki 5 ukuran/size mulai dari 36 -> 40\nMemiliki berat 370 gram\nTersedia dalam 4 warna yakni hitam, kuning, putih, dan salem'),
  ]),
  Category(name: 'Alat Fitnes', image: 'Fitness', products: [
    Product(
        id: '26',
        name: "Spinning Bike - Sepeda\nStatis/Sepeda Platinum",
        price: 1100000,
        images: [
          "assets/Category/Fitness/1.1.png",
          "assets/Category/Fitness/1.2.png",
          "assets/Category/Fitness/1.3.png",
          "assets/Category/Fitness/1.4.png"
        ],
        description:
            'Sepeda Statis Multi Fungsi yang cocok untuk Olahraga dan teraphy. Fungsi dan Fitur Diantaranya:\n1. Dual Action Exercise\nSepeda statis ini memiliki 2 gerakan handel. Posisi handle diam bermanfaat untuk melatih otot jantung. Posisi handle bergerak untuk Fat-Burn, therapy STROKE dan PENGAPURAN.\n\n2. HeartRate Control System\nPembacaan denyut jantung melalui sensor sentuhan telapak tangan yang terletak pada gagang pegangan atau handel.\n\n3. Key Lock Handle\nPin atau Ring pengunci ini memiliki fungsi pengikat tuas handel. Anda cukup mencabut ring tanpa harus membongkar pedal.\n\nFEATURE:\nHeartRate W/Hand-Pulse, Adjustable High Seat\n\nFRAME:\nSteel Frame Oval Tube, Frame Size 30 x 60 mm, Fly Wheel Weight 2.5 kg\n\nLCD Display\n\nTECH SPECS:\nAssembled 110 X 50 X 155 cm, Packaging 89 X 20 X 59 cm, Max User 90 kg, Gross Weight 20 kg, Nett Weight 18 kg\n'),
    Product(
        id: '27',
        name: "Treadmill Manual 4 Fungsi",
        price: 3200000,
        images: [
          "assets/Category/Fitness/2.1.png",
          "assets/Category/Fitness/2.2.png",
          "assets/Category/Fitness/2.3.png",
          "assets/Category/Fitness/2.4.png"
        ],
        description:
            '"Dilengkapi dengan:\n1. TWISTER Untuk mengencangkan perut\n2. STEPPER Untuk mengencangkan bagian paha, betis dan bokong\nTREADMILL Untuk Lari , Joging , Walking\n4. Push Up\nBisa di lipat jika tidak digunakan\n\nTreadmill ini juga dilengkapi dengan alat display guna menunjukkan kalori terbuang, jarak tempuh, waktu, total gerakan pemakaian, dan pulse jantung, beserta dilengkapi juga dengan roda guna memudahkan dalam memindahkan/menggeser alat ini\n\nMemiliki berat barang 40 kg. Dimensi kartonnya adalah 132 x 60 x 21 cm.\n\nTerdapat manual incline guna mengatur kemiringan dan terdapat juga sensor pulse jantung pada handle.\n\nMax. User Weight: 120 kg'),
    Product(
        id: '28',
        name: "Sepeda Statis Magnetic\nUpright Bike",
        price: 2590000,
        images: [
          "assets/Category/Fitness/3.1.png",
          "assets/Category/Fitness/3.2.png",
          "assets/Category/Fitness/3.3.png",
          "assets/Category/Fitness/3.4.png"
        ],
        description:
            'Spesifikasinya adalah:\n- Resistance: 8 Levels\n- Controller: Manual Tension\n- Display : Scan, Time, Speed, Distance, Calories, ODO, Pulse\n- Max User Weight : 120 kgs\n- Set Up Dimensions : 89 x 50 x 138 cm\n- Packing Dimensions : 88 x 28 x 58 cm\nNW/GW (kgs) : 29/32 kgs\n- Certification : CE, RoHS\n- Magnetic Tension with exclusive design and smooth belt transmission system'),
    Product(
        id: '29',
        name: "Treadmill Elektrik T500MT",
        price: 3950000,
        images: [
          "assets/Category/Fitness/4.1.png",
          "assets/Category/Fitness/4.2.png",
          "assets/Category/Fitness/4.3.png",
          "assets/Category/Fitness/4.4.png"
        ],
        description:
            'Spesifikasi T500MT:\n- Motor: DC 1,5hp(0,65chp)\n- Speed: 1-12,8km/j\n- Incline: 3 step manual incline\n- Display: 7x2,5 (cm)\n- Function: Speed, time, distance, calories, heart rate\n- Program: 12 pre-set\n- Running Surface: 110x40 (cm)\n- Running Belt: 226,5x39,5x0,15 (cm)\n- Running Board: 100x64,5x1,2 (cm)\n- Max User: 100kg\n- Carton Size: 144x67x24\n- Assembly Size: 143x63,5x106,5\n- NW/GW: 33kg/36kg\n\nFeature: Twister 3 fungsi, hand pulse, massager, folding, USB MP3, Audio input, safety key, simple lubrication system. T510MT ada: sit up, push up, dumbbells, pulling rope, side cap.'),
    Product(
        id: '30',
        name: "Treadmill Manual 6 Fungsi",
        price: 2090000,
        images: [
          "assets/Category/Fitness/5.1.png",
          "assets/Category/Fitness/5.2.png",
          "assets/Category/Fitness/5.3.png",
          "assets/Category/Fitness/5.4.png",
          "assets/Category/Fitness/5.5.png"
        ],
        description:
            'Spesifikasi Treadmill 6 Fungsi:\n- Controller : Generator\n- Display : Scan, Timer, Speed Control, Distance\n- Monitor, Calories Monitor, Pulse\n- Max user Weight : 120 kgs\n- Running Surface : 110 x 34 cm\n- Set Up Dimension : 179 x 68 x 130 cm\n- NW / GW (Kg) : 36 / 39 Kg\n- Massager Weight : 6 Kg\n\nFungsi Treadmill ini yaitu:\nWith Twister, Handle, push up BAR, Massager, Sit Up, Rally Rope'),
  ]),
  // Category(name: 'Alat Lainnya', image: 'Misc', products: [
  //   Product(
  //       id: '31',
  //       name: "Pisau Talenan/Gunting\nPemotong Sayur\nSerba Guna",
  //       price: 20000,
  //       images: [
  //         "assets/Category/Misc/1.1.jpeg",
  //         "assets/Category/Misc/1.2.jpeg",
  //         "assets/Category/Misc/1.3.jpeg",
  //         "assets/Category/Misc/1.4.jpeg"
  //       ],
  //       description:
  //           '- Bahan: PP + PTR + 2cr14 menangani + POM chopper + 5cr15MoV blade\n- Tebal pisau: 1.2mm\n- Ukuran papan memotong: 11,5 * 2.7cm\n- Panjang: 247mm\n- Ukuran produk: 25.5 * 7.5 * 3cm\n\nKeunggulan pemotong pintar:\n- 2-in-1 pisau dan talenan\n- Chops & Slice di Detik\n- Pegangan ergonomis mudah di tangan\n- Premium pisau stainless steel\n- Kait keamanan terus itu ditutup\n- Kerja rapi (dapur tidak berantakan)'),
  //   Product(
  //       id: '32',
  //       name: "Selang Air Magic Hose\n22.5m / 75ft",
  //       price: 45000,
  //       images: [
  //         "assets/Category/Misc/2.1.jpeg",
  //         "assets/Category/Misc/2.2.jpeg"
  //       ],
  //       description:
  //           'Selang Air Ajaib Magic Hose bisa memanjang (expand) dan memendek ( shrink) tergantung isi didalamnya. Selang air ajaib Magic Hose ini juga di lengkapi dengan Sprayer yang memiliki 7 pola nozzle sprayer.\nKonsep Magic Hose / Expandable Hose / Xhose ini sebenarnya sederhana, yaitu surgical tubing dengan diameter besar yang mengembang akibat kontraksi karena adanya tekanan hidrolik dari air.\n\nMagic Hose dapat anda gunakan untuk:\n- Menyiram tanaman taman anda\n- Mencuci / membersihkan / membilas mobil"\n- Membersihkan perkarangan, rumah dan bagian lain dari rumah anda\n- Dan masih banyak keperluan lainnya\n\nINGAT 22,5 METER ATAU 75 FEET LEBIH PANJANG DAN LEBIH MURAH, JANGAN SAMPAI ANDA SALAH MEMILIH'),
  //   Product(
  //       id: '33',
  //       name: "Masker 3M Anak Nexcare\nDaily Kids",
  //       price: 19900,
  //       images: [
  //         "assets/Category/Misc/3.1.jpeg",
  //         "assets/Category/Misc/3.2.jpeg",
  //         "assets/Category/Misc/3.3.jpeg"
  //       ],
  //       description:
  //           'Masker yang dilengkapi dengan 3 lapis filter, membantu melindungi dari partikel makro dan debu. 1 pack terdiri dari 4 masker.\nAnjuran Pakai: Saat gejala flu,saat dekat bayi,saat bepergian.\nLapisan dalam yang nyaman bersentuhan dengan kulit dan menyalurkan udara bersih\n\nReady... Masker Nexcare Kids Earloop per pak (Isi 4 pcs)'),
  //   Product(
  //       id: '34',
  //       name: "Snap N Grip Kunci Inggris\nIsi 2",
  //       price: 20000,
  //       images: [
  //         "assets/Category/Misc/4.1.jpeg",
  //         "assets/Category/Misc/4.2.jpeg",
  //         "assets/Category/Misc/4.3.jpeg"
  //       ],
  //       description:
  //           'Snap N grip adalah sistem yang inovatif, yang terdiri dari dua kunci pas universal.\nDengan dua kunci pas ini Anda dapat melonggarkan atau mengencangkan semua jenis mur dan baut, terlepas dari ukuran dan bentuknya.\nSolusi untuk semua masalah Anda dengan keran, katup, pipa, garis, radiator, boiler, roda, dll.\n\nKelengkapan:\n- 1x Snap N Grip besar\n- 1x Snap N Grip kecil'),
  //   Product(
  //       id: '35',
  //       name: "Gunting Sayur 5 Lapis\n(3 Cm)",
  //       price: 20000,
  //       images: [
  //         "assets/Category/Misc/5.1.jpeg",
  //         "assets/Category/Misc/5.2.jpeg",
  //         "assets/Category/Misc/5.3.jpeg"
  //       ],
  //       description:
  //           'Memotong daun bawang atau sayuran lainnya dengan menggunakan pisau atau gunting biasa terlalu lama dan tidak praktis.\nSekarang ada cara yang sangat cepat dan praktis memotong daun bawang. Dengan gunting multi layers ini, anda dapat memotong-motong daun bawang dengan sangat cepat dan rapi.\nDengan 5 stainless steel blades, bisa memotong banyak secara sekaligus!\n\nMemiliki kelebihan yakni:\n- Gampang Dibersihkan\n- Gunting Dapur Higienis\n- Lebih praktis dibanding gunting konvensional\n- Dapat digunakan untuk memotong sayur / kertas tanpa perlu menyiapkan talenan & pisau.\n\nSatu gunting terdiri dari 5 layers'),
  // ]),
];
