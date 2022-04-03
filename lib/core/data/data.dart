import 'package:halal_farm/core/constant/constant.dart';

class MyData {
  static List langes = [
    {
      "lang": "O’zbek tili",
      "img": "assets/images/uzbekistanFlag.png",
    },
    {
      "lang": "English",
      "img": "assets/images/englishFlag.png",
    },
    {
      "lang": "Русский язык",
      "img": "assets/images/russianFlag.png",
    },
  ];

  static List<Map> tarifData = [
    {
      "name": "Oddiy",
      "price": "Tekin",
      "who":
          "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
      "about": [
        "Har kunlik holatni ko’rish",
        "Hayvon yetilgandan so’ng yetkazib berish",
        "24/7 online kamera orqali kuzatuv",
        "Istalgan paytda hayvonni onlayn sotuvga qo’yish",
      ],
    },
    {
      "name": "Pro",
      "price": "12 000 / har oyga",
      "who":
          "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
      "about": [
        "Har kunlik holatni ko’rish",
        "Hayvon yetilgandan so’ng yetkazib berish",
        "24/7 online kamera orqali kuzatuv",
        "Istalgan paytda hayvonni onlayn sotuvga qo’yish",
      ],
    },
    {
      "name": "Hamkor",
      "price": "Tekin",
      "who":
          "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
      "about": [
        "Har kunlik holatni ko’rish",
        "Hayvon yetilgandan so’ng yetkazib berish",
        "24/7 online kamera orqali kuzatuv",
        "Istalgan paytda hayvonni onlayn sotuvga qo’yish",
        "Qo’shimcha xizmatlar"
      ],
    },
  ];
  static List<Map> animalData = [
    {
      'title': "1. Denov oti (№254)",
      'animalImage': Constant.horse,
      'diease': "",
      'ripeningTime': "22-noyabr, 2022-yil",
      'firstPercent': 52,
      'foodNumber': 2,
      'percentMeture': 50,
      'imageFirst': Constant.beda,
      'imageSecond': Constant.bugdoy,
      'firstFoodName': "Beda",
      'secondFoodName': 'Bug’doy',
      'secondPersent': 8,
    },
    {
      'title': "2. Hisori qo’y (№365)",
      'animalImage': Constant.sheepBig,
      'diease': "Qo’ylar orasida oq mushak kasalligi tarqayapti. ",
      'ripeningTime': "22-Aprel, 2022-yil",
      'firstPercent': 58,
      'foodNumber': 2,
      'percentMeture': 55,
      'imageFirst': Constant.beda,
      'imageSecond': Constant.bugdoy,
      'firstFoodName': "Beda",
      'secondFoodName': 'Bug’doy',
      'secondPersent': 15,
    },
  ];
}
