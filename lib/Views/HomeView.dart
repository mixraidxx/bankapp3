import 'package:bankapp3/Brand/Extensions.dart';
import 'package:bankapp3/Views/CardDetailView.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 2,
              child: SafeArea(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$2,589.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Icon(Icons.notifications, color: Colors.white),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Saldo disponible",
                            style: TextStyle(
                                color: BrandColors.backgroundColorVariant,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActionItem(
                              tittle: "Enviar",
                              icon: Icons.send,
                            ),
                            ActionItem(tittle: "Recibir", icon: Icons.paid),
                            ActionItem(
                              tittle: "Congelar",
                              icon: Icons.ac_unit,
                            ),
                            ActionItem(
                                tittle: "Detalle", icon: Icons.info_outline)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: BrandColors.backgroundColorVariant,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mis tarjetas",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Card(
                          elevation: 0,
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [CardItem(), CardItem()],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Operaciones recientes",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Card(
                          elevation: 0,
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                OperationItem(
                                  tittle: "Netflix",
                                  subtitle: "12 Jun 2021",
                                  image: "netflix",
                                  number: "\$125.00",
                                ),
                                OperationItem(
                                  tittle: "Uber",
                                  subtitle: "11 Jun 2021",
                                  image: "uber",
                                  number: "\$225.00",
                                ),
                                OperationItem(
                                  tittle: "Spotify",
                                  subtitle: "10 Jun 2021",
                                  image: "spotify",
                                  number: "\$110.00",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CardDeatilView.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: BrandColors.backgroundColorVariant,
                  borderRadius: BorderRadius.circular(12),
                  image:
                      DecorationImage(image: ExactAssetImage("assets/mc.png"))),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Visa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("****1234")
              ],
            ),
            Expanded(child: Container()),
            Text("\$1,230.00",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
          ],
        ),
      ),
    );
  }
}

class OperationItem extends StatelessWidget {
  final String tittle;
  final String subtitle;
  final String image;
  final String number;
  const OperationItem({
    Key? key,
    required this.tittle,
    required this.subtitle,
    required this.image,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CardDeatilView.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: BrandColors.backgroundColorVariant,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: ExactAssetImage("assets/$image.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tittle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(subtitle)
              ],
            ),
            Expanded(child: Container()),
            Text(number,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
          ],
        ),
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  final String tittle;
  final IconData icon;
  const ActionItem({
    Key? key,
    required this.tittle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: BrandColors.backgroundColor,
                borderRadius: BorderRadius.circular(8)),
            child: Icon(icon, color: BrandColors.accentColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(tittle,
              style: TextStyle(
                  color: BrandColors.backgroundColorVariant,
                  fontSize: 12,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
