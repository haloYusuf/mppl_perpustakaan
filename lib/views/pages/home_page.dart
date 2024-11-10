import 'package:flutter/material.dart';
import 'package:mppl_perpustakaan/constant/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget gapContentVertical({required double gap}){
    return SizedBox(
      height: gap,
    );
  }

  Widget listRecomendationBook({required String url, required String title, String writer = ''}){
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 4,
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26, // Warna bayangan
            blurRadius: 6, // Tingkat blur bayangan
            offset: Offset(0, 3), // Posisi bayangan
          ),
        ]
      ),
      constraints: const BoxConstraints(
        maxWidth: 100,
        maxHeight: 150,
      ),
      child: Material(
        color: Constants.colorWhite,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                child: Image.network(
                  url,
                  height: 110,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              gapContentVertical(gap: 3),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              writer.isEmpty ?
              const SizedBox()
                  :
              Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  writer,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listCategoryBook({required String category, required IconData icon}){
    return Material(
      color: Constants.colorWhite,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Constants.colorGreen,
              ),
              child: Icon(
                icon,
                size: 37,
                color: Constants.colorDarkGreen,
              ),
            ),
            gapContentVertical(gap: 3),
            Text(
              category,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Constants.colorDarkGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Perpustakaan',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Constants.colorGreen,
          ),
        ),
        gapContentVertical(gap: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(-2, 4),
              ),
            ],
          ),
          child: TextField(
            style: const TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
            ),
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'Cari buku apa?',
              prefixIcon: Icon(
                Icons.search,
                color: Constants.colorGreen,
                size: 20,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
          ),
        ),
        gapContentVertical(gap: 20),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Buku Rekomendasi',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'Lihat lainnya >',
                          style: TextStyle(
                            fontSize: 14,
                            color: Constants.colorRed,
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapContentVertical(gap: 5),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index){
                        return listRecomendationBook(
                          url: 'https://image.gramedia.net/rs:fit:0:0/plain/https://cdn.gramedia.com/uploads/products/u5nr-omodv.jpg',
                          title: 'Ngomongin Uang: Menjadi Kaya Versi Kamu Sendiri',
                          writer: 'Glenn Ardi',
                        );
                      },
                    ),
                  ),
                ],
              ),
              gapContentVertical(gap: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Kategori Buku',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Constants.colorDarkGreen,
                    ),
                  ),
                  gapContentVertical(gap: 5),
                  Wrap(
                    spacing: 12,
                    runSpacing: 5,
                    children: [
                      listCategoryBook(category: 'Bahasa', icon: Icons.translate,),
                      listCategoryBook(category: 'Agama', icon: Icons.mosque,),
                      listCategoryBook(category: 'Sosial', icon: Icons.people,),
                      listCategoryBook(category: 'Sains', icon: Icons.science,),
                      listCategoryBook(category: 'Teknologi', icon: Icons.biotech,),
                    ],
                  ),
                ],
              ),
              gapContentVertical(gap: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Buku Lainnya',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'Lihat lainnya >',
                          style: TextStyle(
                            fontSize: 14,
                            color: Constants.colorRed,
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapContentVertical(gap: 5),
                  SizedBox(
                    height: 175,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index){
                        return listRecomendationBook(
                          url: 'https://image.gramedia.net/rs:fit:0:0/plain/https://cdn.gramedia.com/uploads/products/u5nr-omodv.jpg',
                          title: 'Ngomongin Uang: Menjadi Kaya Versi Kamu Sendiri',
                        );
                      },
                    ),
                  ),
                  gapContentVertical(gap: 5),
                ],
              ),
            ],
          )
        ),
      ],
    );
  }
}
