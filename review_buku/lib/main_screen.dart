import 'package:flutter/material.dart';
import 'package:review_buku/buku.dart';
import 'package:review_buku/detail_screen.dart';

class MainScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Buku'),
      ),
      body: ListView(
        children: listBuku.map((book){
          return FlatButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return DetailScreen(book: book);
            }));
          },
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      book.fotoBuku,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16,),
                      child : Text(
                        book.judulBuku,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      book.penulisBuku,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

var listBuku = [
  Buku(
    judulBuku: 'The Memory Police' ,
    penulisBuku: 'Yoko Ogawa',
    paragrafReview:
    'Kenangan merupakan hal yang esensial bagi manusia. Kenangan dapat membuat kita mengingat berbagai macam peristiwa dalam ingatan. Namun, apa jadinya jika manusia kehilangan ingatan, bahkan akan hal-hal sederhana?. Bagaimana rasanya jika kamu tidak dapat mengingat boneka? Semerbak wangi parfum? Atau seperti apa benda yang disebut mainan?. Benda-benda tersebut masih ada wujudnya, akan tetapi ingatan akan benda itu perlahan memudar, beserta kenangan yang menyertainya. Hal inilah yang menjadi cerita utama dalam The Memory Police karya Yoko Ogawa, yang mungkin merupakan ketakutan terbesar manusia, yaitu kehilangan kenangan. Sejak tahun 1988, Yoko Ogawa berhasil melahirkan puluhan karya tulis, dan telah memenangkan setiap penghargaan utama sastra Jepang. Bahkan, salah satu novelnya, The Professor and his Beloved Equation, telah diadaptasi menjadi sebuah film. The Memory Police bercerita mengenai para penduduk di suatu pulau tak bernama, di mana mereka lambat laun kehilangan kenangan pada hal-hal sederhana. Tetapi ada beberapa orang di pulau itu yang tidak lupa, entah mengapa. Mereka berusaha bersembunyi, atau membaur dengan orang-orang yang lupa. Namun, entah bagaimana caranya, Polisi Kenangan tetap bisa mencium gelagat orang-orang yang tidak lupa, dan tugas Polisi Kenangan adalah memburu mereka. Polisi Kenangan bertugas memastikan agar kenangan yang hilang, tetap hilang selamanya. Untuk mewujudkan hal tersebut, Polisi Kenangan sering melakukan hal-hal buruk pada penduduk pulau itu. Mulai dari pendobrakan rumah secara paksa hingga menculik orang-orang untuk diinterogasi. Kisah dimulai saat seorang novelis, yaitu tokoh Aku mengetahui bahwa editornya terancam Polisi Kenangan, yaitu R, karena dia merupakan salah satu orang yang tidak bisa lupa. Novelis tersebut berupaya keras agar dapat menyelamatkan sang editor. Dengan bantuan dari tokoh si lelaki tua, bersama-sama mereka berusaha menyembunyikan R dari kejaran Polisi Kenangan.',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2020/08/the-memory-police-yoko-ogawa-cover_gramedia.jpg',
  ),
  Buku(
    judulBuku: 'mBoel' ,
    penulisBuku: 'Sapardi Djoko Damono',
    paragrafReview:
    'Tidak lengkap rasanya jika berbicara mengenai sastra dan puisi, tanpa menyebut nama Sapardi Djoko Damono, atau akrab disapa Eyang. Dikenal sebagai salah satu sastrawan dan penyair terbaik negeri ini, telah banyak karyanya yang masyhur, seperti Hujan Bulan Juni, Yang Fana Adalah Waktu, dan karya-karya populer lainnya. Bahkan, pada tahun 2020 ini, di usia senjanya Eyang berhasil merilis tiga buku baru, yaitu Masih Ingatkah Kau Jalan Pulang bersama Rintik Sedu, Segi Tiga, dan Mantra Orang Jawa. Namun, Tuhan berkata lain. Eyang meninggalkan kita semua pada tanggal 19 Juli 2020 yang lalu. Tentu saja kepergiannya merupakan sebuah kehilangan besar bagi dunia sastra Indonesia. Belum genap sebulan setelah kepergiannya, buku berjudul mBoel, yang merupakan kumpulan sajak karya mendiang Eyang Sapardi yang ditulis untuk sang istri, resmi dirilis oleh penerbit Gramedia Pustaka Utama (GPU).  Mirna Yulistianti, Kepala Bidang Sastra Gramedia Pustaka Utama, mengatakan bahwa buku mBoel merupakan karya paling personal dari Sapardi Djoko Damono. Proses penciptaan mBoel bermula saat empat sajak Sapardi yaitu Hujan Bulan Juni, Aku Ingin, Di Restoran, dan Ketika Kau Tak Ada, dimuat di surat kabar pada tahun 1989. Ia kemudian memfotokopi dan menyimpan bagian koran itu, sementara aslinya dikirim kepada Sonya, atau mBoel, yang waktu itu sedang studi di Paris. Seharusnya, keempat dari sajak legendaris tersebut yang akan mengawali buku mBoel. Namun, karena telah lebih dahulu dikenal, dijadikan lagu, dan dibaca oleh banyak pendengar dan pembaca, hanya satu sajak saja yang berhasil masuk dalam buku mBoel, yaitu Ketika Kau Tak Ada, setelah visualnya diubah. Sonya Sondakh yang merupakan istri dari mendiang Sapardi, mengatakan bahwa ternyata buku mBoel sudah disiapkan Sapardi sejak lama. mBoel, yang merupakan persembahan terima kasih Sapardi kepada teman hidupnya selama puluhan tahun ini, akhirnya berhasil terbit pada ulang tahun sang istri. Setelah resmi diluncurkan, mBoel dijadwalkan terbit reguler dalam format hardcover mulai 17 Agustus mendatang. Buku ini menjadi kado istimewa terakhir dari Eyang Sapardi bagi para penggemar karya-karyanya, karena seluruh sajak yang dimuat di dalam buku ini adalah baru, dan belum dimuat dalam media cetak apa pun.',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2020/08/mBoel-karya-Sapardi-Djoko-Damono-2.jpg',
  ),
  Buku(
    judulBuku: 'Orang - Orang Biasa' ,
    penulisBuku: 'Andrea Hirata',
    paragrafReview:
    'Di novelnya kita bertemu sepuluh sekawan yang bernasib sial sejak kecil. Mereka murid-murid terbodoh di kelas sekaligus datang dari keluarga miskin. Lantaran bodoh dan miskin, mereka jadi sasaran empuk penindasan. Di novel ini para pem-bully itu adalah Trio Bastardin dan Duo Boron. Nasib buruk itu berlangsung hingga mereka dewasa. Mereka tak bisa keluar dari lingkaran kemiskinan seperti sekawan di Laskar Pelangi. Ada yang jadi orangtua tunggal, membesarkan anak-anaknya sambil berjualan mainan. Ada yang menjadi supir dan pegawai rendahan. Ada yang membuka kios buku tapi sepi pembeli. Ada yang menjadi guru honorer bergaji kecil tapi punya banyak anak. Ada yang berganti pekerjaan karena berbuat onar terus dan hobi dandan lalu selfie. Ada yang tak punya pendirian. Dan yang paling ajaib, ada yang mengklaim jadi motivator walau belum sekalipun ada yang mengundangnya jadi pembicara. Kalau cuma bicara tentang kesialan nasib orang miskin apa istimewanya? Di sini Andrea sebagai pencerita menunjukkan kepiawaiannya. Dengan sudut pandang (point of view) yang serba maha tahu ia berkisah inti cerita Orang-orang Biasa adalah rencana perampokan bank. Alkisah, Dinah, salah satu dari sepuluh sekawan, punya anak perempuan yang diterima masuk perguruan tinggi fakultas kedokteran. Kita tahu biaya kuliah jadi dokter sangat mahal. Sepuluh sekawan lalu bersepakat akan merampok bank untuk membiaya kuliah tersebut. Cara bercerita maha tahu memungkinkan Andrea berbual-bual mengeksplorasi kebodohan dan kesialan tokoh-tokohnya. Kerap kali ia menggambarkan kemalangan nasib mereka secara berlebihan. Tentu saja cara itu berhasil membuat kita terpingkal-pingkal maupun tersenyum getir. Namun bangunan itu membuat Andrea kena batunya. Novel ini punya kelokan cerita (plot twist) yang tak diduga. Haram hukumnya mengungkap apa kelokannya. Hanya saja dengan bangunan cerita yang sudah disusun sebelumnya, kelokan cerita tersebut agak sulit membuat percaya pembaca. ',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2019/05/review-buku_orang-orang-biasa.jpg',
  ),
  Buku(
    judulBuku: 'Convenience Store Woman' ,
    penulisBuku: 'Sayaka Murata',
    paragrafReview:
    'Convenience Store Woman sangat menarik untuk dibaca, karena cerita di dalamnya membahas permasalahan yang relate dengan kehidupan. Salah satunya mengenai bagaimana masyarakat di sekitar kita, terkadang terlalu ikut campur mengenai jalan hidup seseorang. Dalam buku ini, Keiko paham mengenai apa saja yang dapat membuatnya nyaman tanpa memerdulikan apa yang dikatakan orang lain, Keiko pun sangat konsisten dengan prinsipnya. Padahal, Keiko sudah bertindak sesuai apa yang nyaman baginya, tidak merugikan orang lain, namun orang lainlah yang berusaha keras untuk mengubah Keiko. Convenience Store Woman juga mengungkap fakta menarik mengenai Jepang yang sedang menghadapi kekurangan tenaga kerja yang kritis. Pembaca juga dapat mengetahui kehidupan yang dinamis dari seorang pegawai minimarket selama 24 jam. Kita mungkin sering menjadi pelanggan minimarket, tetapi apakah kita pernah berpikir tentang bagaimana rasanya bekerja di sana?',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2020/08/convenience-store-woman-sayaka-murata-cover_gramedia.jpg',
  ),
  Buku(
    judulBuku: 'Srimenanti' ,
    penulisBuku: 'Joko Pinurbo',
    paragrafReview:
    'Membaca novel Srimenanti rasanya memang karya yang khas ditulis seorang penyair. Lebih khusus lagi, penyair tersebut adalah Jokpin. Bagi yang akrab dengan puisi-puisiya, novel ini Jokpin banget. Dimaksud Jokpin banget, karena seperti puisi-puisinya, novelnya banyak bicara tentang hal-hal remeh sehari-hari seperti celana, kamar mandi, hingga kopi. Bahasanya sederhana, sering nakal, tapi tak luput kaya imajinasi. Tidak lupa pula, ia menyelipkan banyak kalimat-kalimat jenaka yang satiris. Selain itu, buat yang pernah baca cerpen Jokpin seperti Laki-laki Tanpa Celana, Sebotol Hujan untuk Sapardi, atau Ayat Kopi, novel ini dikembangkan dari cerpen-cerpen Jokpin yang sudah terbit. Kamu bisa menduga-duga, apakah Jokpin menulis cerpennya dahulu baru dikembangkan ceritanya jadi lebih luas dalam bentuk novel? Atau, ia sedari dulu sudah menulis cerita novel ini, namun beberapa fragmen cerita di novel ia angkat dan dijadikan cerpen?. Yang jelas, saat seorang penulis puisi menulis prosa, ekspektasi pembaca besar pada karya tersebut. Sebagai perawat bahasa, seorang penyair akan memainkan bahasa tulis dalam novel selayaknya seorang anak kecil di taman bermain. Kita juga berharap tak akan menemukan cerita yang biasa. Cerita tak disusun konvensional mengikuti alur kronologis, bab per bab mirip formula drama tiga babak film Hollywood. Kabar baiknya, Srimenanti memenuhi harapan sebuah prosa yang lahir dari tangan penulis puisi. Penulis puisi sehari-hari bekerja dengan memeras kata hingga terpilih kata-kata terbaik di tiap bait. kebiasaan itu tampaknya juga terbawa saat menulis novel. Umumnya, novel yang ditulis penyair jarang yang teramat tebal--yang termasuk pengecualian untuk hal ini di antaranya Remy Silado. Ia banyak menulis Puisi Mbeling pada 1970-an dan juga banyak menulis novel berlatar sejarah yang tebal-tebal. Goenawan Mohamad menulis novel pendek sekali, sekitar nyaris seratus halaman dengan kalimat-kalimat dipenggal seperti bait-bait puisi. Sedang Hujan Bulan Juni-nya Sapardi sekitar 140-an halaman. Novel Srimenanti Jokpin tamat di halaman 135.',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2019/04/joko-pinurbo-srimenanti.jpg',
  ),
  Buku(
    judulBuku: 'Rainbirds' ,
    penulisBuku: 'Clasrissa Goenawan',
    paragrafReview:
    'Novel ini berkisah tentang Ren Ishida yang harus menghadapi kematian sang kakak yang tiba-tiba, karena dibunuh. Pembunuhan itu bukan karena pencurian, dan karena itu lah membuat Ren semakin bertanya-tanya, apa yang sebenarnya terjadi. Padahal, tiga hari sebelum sang kakak tewas, Ren masih bertukar kabar melalui telepon dengan Keiko. Cerita pun berlanjut di sebuah kota fiktif yang diciptakan oleh sang penulis novel ini. Kota itu bernama Akakawa, yang dikisahkan terletak di salah satu sudut di Negeri Sakura, Jepang. Ren terpaksa hijrah ke Akakawa, kota tempat Keiko menetap. Ia mau tak mau ke sana demi mengurusi jenazah sang kakak. Serta harus menemui pihak kepolisian, mengingat Keiko meninggal karena pembunuhan. Tak cuma menanti titik terang dari kepolisian, Ren bertekad mengungkap sendiri misteri di balik kematian Keiko Ishida. Lalu apakah novel ini bergenre thriller? Atau misteri? Akan kah ada bagian arwah Keiko Ishida muncul memberi tahu semua yang terjadi? Mungkin ada benarnya novel ini bergenre thriller, namun novel ini begitu tenang dan menghanyutkan. Tak ada kesan diburu-buru, tak ada tegang berlebihan, menyeramkan atau mengerikan. Meski memang meninggalkan banyak pertanyaan di tengah kisah, semua perjalanan terasa begitu apa adanya, namun juga membentuk pola yang rapi. Kehilangan Keiko membuat Ren kembali mengingat semua kenangan masa kecilnya yang terbilang kurang menyenangkan. Orangtua yang tak pernah akur, membuat Ren hanya memiliki Keiko. Keiko yang selalu ada untuknya.',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2019/04/rainbirds-2.jpg',
  ),
  Buku(
    judulBuku: 'Filosofi Teras' ,
    penulisBuku: 'Henry Manampiring',
    paragrafReview:
    'Saat menyebut filsafat Yunani kuno, nama yang langsung terbit adalah Sokrates, Aristoteles dan Plato. Zeno rasanya terdengar asing. Filsafat juga identik dengan perenungan yang serba berat, abstrak, dan mengawang-awang. Bicara filsafat, biasanya membicarakan konsep-konsep abstrak seperti eksistensialisme, nihilisme, strukturalisme hingga post-strukturalisme. Menyembuhkan depresi dan stres dianggap bukan ranah filsafat. Di buku bergambar Filsafat untuk Pemula karya Richard Osborne dan digambar Ralph Edney (edisi Indonesia terbit 2001), stoisisme hanya disinggung sedikit. Stoa ditulis identik dengan kesederhanaan. Menjadi stoa berarti menghadapi nasib dengan berani dan mulia. Hm, definisi yang kabur dan sumir. Well, filsafat stoa tak semata menganjurkan hidup sederhana ataupun menerima nasib. Tidak pula serba abstrak dan tidak praktis. Perbedaan mendasar filsafat stoa dengan cabang filsafat lain justru pada sifat praktisnya. Stoa tak mengangankan masyarakat utopis tanpa kelas sebagaimana dianjurkan Marxisme. Yang dianjurkan stoa lebih personal:  Hidup dengan emosi negatif yang terkendali dan hidup dengan kebajikan (virtue/arete) atau hidup bagaimana kita hidup sebaik-baiknya seperti seharusnya kita menjadi manusia.',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2019/02/Review-Buku-Filosofi-Teras-Gramedia-2.jpg',
  ),
  Buku(
    judulBuku: '11:11' ,
    penulisBuku: 'Fiersa Besari',
    paragrafReview:
    'Buku 11:11 berisi sebelas cerita dan sebelas lagu. Setiap cerita punya lagu yang ibarat film adalah soundtrack pengiringnya. Pilihan judul 11:11 ini karena setiap cerita punya tema yang berbeda. Buku ini sejatinya adalah kumpulan cerita pendek. Namun, bila pengarang lain menulis cerpen berbagai tema di koran untuk beberapa lama lalu dikumpulkan dalam buku, Fiersa kelihatannya menulis simultan satu per satu cerita serta lagunya dan membukukannya sekaligus. Di 11:11 si Bung melompat dari zona nyamannya. Ia mengeksplorasi lebih jauh, menawarkan cerita yang tak lagi terbatas pada kisah di bumi atau kisah para manusia. Di 11:11 fantasinya melanglang buana hingga jauh ke alam lain dan merasuk ke sanubari makhluk lain. Simak misalnya cerita Acak Corak. Kita diajak bertemu pria yang dikatakan sang pengilham bagi para pencuri dan pembunuh. Meski tak disebut sepanjang cerita kita tahu pria itu adalah iblis yang tengah gundah lantaran tugasnya merayu manusia berbuat jahat telah diambil alih oleh manusia sendiri. Atau cerita Samar yang mengajak kita ke dunia khayangan. Jangan bayangkan khayangan seperti di cerita wayang. Khayangan versi si Bung berisi tempat bernama-nama aneh seperti Xoxoauhco yang berisi danau cokelat atau Nanatzcayan yang berisi sebuah restoran.',
    fotoBuku: 'https://www.gramedia.com/blog/content/images/size/w1000/2018/12/Review-Buku-11-11-2.jpg',
  ),
];