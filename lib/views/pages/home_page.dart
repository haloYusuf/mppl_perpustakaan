import 'package:flutter/material.dart';
import 'package:mppl_perpustakaan/constant/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget  gapContentVertical({required double gap}){
    return SizedBox(
      height: gap,
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
                color: Colors.black12, // Warna bayangan
                blurRadius: 5, // Tingkat blur bayangan
                offset: Offset(-2, 4), // Posisi bayangan (x, y)
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
                ],
              ),
            ],
          )
        ),
      ],
    );
  }
}
