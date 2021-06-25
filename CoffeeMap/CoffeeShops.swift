//
//  CoffeeShops.swift
//  CoffeeMap
//
//  Created by Александр Арменшин on 08.04.2021.
//

import Foundation


struct CoffeeShop: Decodable {
    var n: Int
    var name: String
    var location: [Float]
    var adress: String
    var image: String
    var instagram: String
    var description: String
    var discount: String
    var tag: String
    var togo: String
    
    static var all: [CoffeeShop] = {
        let jsonData = coffeeShopsJSON.data(using: .utf16)!
        return try! JSONDecoder().decode(Shops.self, from: jsonData).coffeeShops
    }()
}

struct Shops: Decodable {
    var coffeeShops: [CoffeeShop]
}

let coffeeShopsJSON = """
{
  "coffeeShops": [
    {
      "n": 0,
      "name": "Cookies 🥇",
      "location": [
        59.944455,
        30.345438
      ],
      "adress": "📍 Моховая, 14",
      "image": "https://fenster.coffee/mapImages/2021-01-05 15.39.19.jpg",
      "instagram": "https://www.instagram.com/ilikebigcookiesandicannotlie/",
      "description": "Красивое окно, красивый интерьер, красивый район, уникальные печеньки на любой вкус и цвет в меню.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 1,
      "name": "Слово  🥈",
      "location": [
        59.960224,
        30.301136
      ],
      "adress": "📍 Шамшева улица, 6А",
      "image": "https://fenster.coffee/mapImages/119224127_3272928272803200_3485488359861119946_n.jpg",
      "instagram": "https://www.instagram.com/slovocoffee/",
      "description": "Светлая кофейня. Кроме кофе в меню десерты, сендвичи и ПЫШКИ, притом владельцы делают акцент на американскую кофейную культуру, вводя в кофейное меню классику из прошлого века в виде Мокко и Фраппучино.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 2,
      "name": "Avgvst Х Papa Carlo 🥉",
      "location": [
        59.930764,
        30.345342
      ],
      "adress": "📍 Рубиншнейна 16",
      "image": "https://fenster.coffee/mapImages/IMAGE 2020-09-24 15:56:52.jpg",
      "instagram": "https://www.instagram.com/avgvstcoffee/",
      "description": "Пространство яркое и интересное по планировке. В двух из трёх залов располагается ювелирный магазин, а в третьем, центральном зале, сама кофейня. Кофе хорош: тут и питерские обжарщики и европейские.⁣⁣⠀",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 3,
      "name": "Салют",
      "location": [
        59.962815,
        30.328317
      ],
      "adress": "📍 улица Мира, 36",
      "image": "https://salut.coffee/assets/image_about.jpeg",
      "instagram": "https://www.instagram.com/salut.coffee/",
      "description": "Необычный интерьер с миллионом винтажных мелочей, контактная стойка, сытная еда и большой выбор напитков на основе чая матти.",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 4,
      "name": "Mad Espresso Team",
      "location": [
        59.930247,
        30.372384
      ],
      "adress": "📍 2-я Советская ул., 27/2",
      "image": "https://fenster.coffee/mapImages/3.jpg",
      "instagram": "https://www.instagram.com/madespressoteam/",
      "description": "Флагманская кофейня Северо-Западной кофейной компании. Помимо кофе, тут очень вкусная еда!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 5,
      "name": "Больше кофе",
      "location": [
        59.954483,
        30.320627
      ],
      "adress": "📍 Александровский парк, 3Г",
      "image": "https://fenster.coffee/mapImages/4.jpg",
      "instagram": "https://www.instagram.com/bolshe_coffee/",
      "description": "Культовая кофейня в гроте, уютная посадка на улице и дешёвый качественный кофе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 6,
      "name": "Bolshecoffee roasters",
      "location": [
        59.928,
        30.353741
      ],
      "adress": "📍 ул. Марата, 22-24",
      "image": "https://fenster.coffee/mapImages/6.jpg",
      "instagram": "https://www.instagram.com/bolshecoffeeroasters/",
      "description": "Хорошая кофейня с гигантским окном и берлинским интерьером. По выходным тут проходят каппинги и воркшопы.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 7,
      "name": "Займёмся кофе",
      "location": [
        59.959043,
        30.303669
      ],
      "adress": "📍 Большая Пушкарская ул., 28",
      "image": "https://fenster.coffee/mapImages/7.jpg",
      "instagram": "https://www.instagram.com/zaymemsya_kofe/",
      "description": "Домашние десерты, контактная стойка, разные бранчи по выходным.",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 8,
      "name": "Gaslight Cafe",
      "location": [
        59.944957,
        30.29262
      ],
      "adress": "📍 Васильевский остров, Биржевой переулок 4(2). Вход через арку.",
      "image": "https://fenster.coffee/mapImages/75239240_185367812643866_3083138873975920508_n.jpg",
      "instagram": "https://www.instagram.com/gaslight.cafe/",
      "description": "Светлая и уютная кофейня во дворе Биржевого переулка. Постоянно заваривают кофе от разных питерских обжарщиков. 🔥Здесь можно купить наш постер, и забрать кофебокс 📦",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 9,
      "name": "Кофе на кухне",
      "location": [
        59.935858,
        30.343141
      ],
      "adress": "📍 наб. реки Фонтанки, 17",
      "image": "https://fenster.coffee/mapImages/73114018_147645203174038_5365637899633892227_n.jpg",
      "instagram": "https://www.instagram.com/bolshe_coffee/",
      "description": "Культовая кофейня с красивым видом, если вы успели занять лакомые места у окна. Тут постоянная очередь, но если вы за фильтром - наливайте и оплачивайте самостоятельно на специальном терминале.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 10,
      "name": "Обычные люди",
      "location": [
        59.958207,
        30.297632
      ],
      "adress": "📍 Рыбацкая ул., 4",
      "image": "https://fenster.coffee/mapImages/56180277_284823789117811_4985581920345813152_n.jpg",
      "instagram": "https://www.instagram.com/everyday_people__/",
      "description": "Проект Больше кофе, только с вином и винтажным тёмным интерьером.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 11,
      "name": "Пенка",
      "location": [
        59.93813,
        30.361583
      ],
      "adress": "📍 Озерной пер., 2-4",
      "image": "https://fenster.coffee/mapImages/90352432_139026577524596_5145627451794012745_n.jpg",
      "instagram": "https://www.instagram.com/penka_home/",
      "description": "Новая кофейня с веганскими десертами и тёплым минималистичным интерьером.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 12,
      "name": "Civil",
      "location": [
        59.964727,
        30.310598
      ],
      "adress": "📍 Большой просп. Петроградской стороны, 71",
      "image": "https://fenster.coffee/mapImages/94064590_568631903771617_4260521537771936638_n.jpg",
      "instagram": "https://www.instagram.com/civil.coffeebar",
      "description": "Завтраки, кофе и вино. Здесь очень хорошо и комфортно.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 13,
      "name": "Спасибокофе",
      "location": [
        59.946772,
        30.34365
      ],
      "adress": "📍 ул. Чайковского, 4",
      "image": "https://fenster.coffee/mapImages/40490716_1854620207964873_6688452450592556163_n.jpg",
      "instagram": "https://www.instagram.com/spasibocoffee/",
      "description": "Хороший кофе, но места маловато.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 14,
      "name": "Характер кофе",
      "location": [
        59.922699,
        30.318842
      ],
      "adress": "📍 наб. реки Фонтанки, 109",
      "image": "https://fenster.coffee/mapImages/56197327_447564669353413_2374169417174127060_n.jpg",
      "instagram": "https://www.instagram.com/characterofcoffee/",
      "description": "Хороший кофе, вкусная еда, бюджетно, много студентов и фрилансеров, для которых тут все условия.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 15,
      "name": "Щегол",
      "location": [
        59.941853,
        30.363398
      ],
      "adress": "📍 ул. Радищева, 38/20",
      "image": "https://fenster.coffee/mapImages/103931087_134561538250073_382711252953593118_n.jpg",
      "instagram": "https://www.instagram.com/schegolcoffee/",
      "description": "Интерьер, сырники и чашки - супер!",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 16,
      "name": "YNGЯНГ",
      "location": [
        59.967447,
        30.269165
      ],
      "adress": "📍 Спортивная ул., 2",
      "image": "https://fenster.coffee/mapImages/81666221_1048771748795709_7680250627831374092_n.jpg",
      "instagram": "https://www.instagram.com/yngcoffee/",
      "description": "Кафе во дворе нового дома на Крестовском. Соседствуют с детским клубом и готовят кофе на мощном оборудовании и вкусном зерне от Больше кофе, каждое утро пекут свежий хлеб и делают десерты без глютена.",
      "discount": "",
      "tag": "1–место GoodCoffeeAwards 2019",
      "togo": "TRUE"
    },
    {
      "n": 17,
      "name": "Civil",
      "location": [
        59.938018,
        30.370414
      ],
      "adress": "📍 8-я Советская д.4",
      "image": "https://fenster.coffee/mapImages/Цивил советская.jpg",
      "instagram": "https://www.instagram.com/civil.coffeebar",
      "description": "Завтраки, кофе и вино. Интерьер - топ!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 18,
      "name": "Grán",
      "location": [
        59.926679,
        30.324995
      ],
      "adress": "📍 Гороховая ул., 46",
      "image": "https://fenster.coffee/mapImages/84595989_190208948734833_3963837015296305947_n.jpg",
      "instagram": "https://www.instagram.com/grancoffee/",
      "description": "Хороший кофе, вино и еда, а также стильное пространство, дизайнерская мебель и детали.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 19,
      "name": "Limitless",
      "location": [
        59.923226,
        30.3265282
      ],
      "adress": "📍 Большой Казачий пер., 4",
      "image": "https://fenster.coffee/mapImages/79578278_252646989037232_4820774725098382566_n.jpg",
      "instagram": "https://www.instagram.com/cafe.limitless/",
      "description": "Необычный интерьер, приятное пространство, красивый район.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 20,
      "name": "Ôpetit",
      "location": [
        59.952283,
        30.297367
      ],
      "adress": "📍 Блохина 23",
      "image": "https://fenster.coffee/mapImages/87420128_2659983557433444_6330041426974772079_n.jpg",
      "instagram": "https://www.instagram.com/o_petit/",
      "description": "Точно самые лучшие круасаны. Приятный интерьер и большой стол с розетками для работы.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 21,
      "name": "Парадная",
      "location": [
        59.924262,
        30.304123
      ],
      "adress": "📍 наб. канала Грибоедова, 106",
      "image": "https://fenster.coffee/mapImages/95246109_2647809025449786_4418552139894180790_n.jpg",
      "instagram": "https://www.instagram.com/coffeelosophy.spb/",
      "description": "Небольшая кофейня на канале Грибоедова с простым интерьером и ярким кофе. Перевоплощение Кофелософии.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 22,
      "name": "STIM",
      "location": [
        59.928145,
        30.312392
      ],
      "adress": "📍 Гражданская ул., 13-15",
      "image": "https://fenster.coffee/mapImages/106396530_294724101830974_8263930371652044280_n.jpg",
      "instagram": "https://www.instagram.com/stimcoffeehome/",
      "description": "Загляните к ним в Инстаграм - креатив бомба! В кофейне по-домашнему уютно и вкусные сырники.",
      "discount": "20",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 23,
      "name": "Фильтр",
      "location": [
        59.97535,
        30.318249
      ],
      "adress": "📍 Аптекарский проспект 18 (вход с Медиков)",
      "image": "https://fenster.coffee/mapImages/81997278_730236991110324_2224039946730699229_n.jpg",
      "instagram": "https://instagram.com/filterspb/",
      "description": "Неплохая кофейня, с минималистичным интерьером.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 24,
      "name": "Фильтр",
      "location": [
        59.915124,
        30.519125
      ],
      "adress": "📍 Ленинградская ул., 9/8, Кудрово",
      "image": "https://fenster.coffee/mapImages/74658615_420972515496550_3751872654744965385_n.jpg",
      "instagram": "https://www.instagram.com/filterspb/",
      "description": "Неплохая кофейня, с минималистичным интерьером.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 25,
      "name": "Фильтр",
      "location": [
        59.911344,
        30.317961
      ],
      "adress": "📍 Московский просп., 51",
      "image": "https://fenster.coffee/mapImages/80723778_207870880225939_6876577096899388750_n.jpg",
      "instagram": "https://www.instagram.com/filterspb/",
      "description": "Неплохая кофейня, с минималистичным интерьером.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 26,
      "name": "Verle Garden",
      "location": [
        59.963498,
        30.31475
      ],
      "adress": "📍 Каменноостровский просп., 25",
      "image": "https://fenster.coffee/mapImages/18094959_292731437831519_3751853936798072832_n.jpg",
      "instagram": "https://www.instagram.com/verlegarden/",
      "description": "Много зелени и ультрафиолетовых ламп для неё. Маття, пиво и вкусный кофе собственной обжарки дополняют эту историю.",
      "discount": "15",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 27,
      "name": "Восход",
      "location": [
        59.948437,
        30.279742
      ],
      "adress": "📍 Малый просп. Васильевского острова, 2, этаж 1",
      "image": "https://fenster.coffee/P5067973.jpg",
      "instagram": "https://www.instagram.com/voshod.coffee",
      "description": "Хорошее место с простым меню и вкусным кофе и маттей.",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 28,
      "name": "Coffee3",
      "location": [
        59.969674,
        30.31674
      ],
      "adress": "📍 просп. Медиков, 3",
      "image": "https://fenster.coffee/mapImages/82498688_216210839540468_8515143322280489196_n.jpg",
      "instagram": "https://www.instagram.com/coffee3spb/",
      "description": "Большая двухэтажная кофейня с панорамными окнами на пятом этаже Ленполиграфмаша, кофейным производством, миллионом розеток и большим выбором еды.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 29,
      "name": "Kafema",
      "location": [
        59.948558,
        30.359166
      ],
      "adress": "📍 просп. Чернышевского, 3",
      "image": "https://fenster.coffee/mapImages/97560749_240454747237476_406595442385539122_n.jpg",
      "instagram": "https://www.instagram.com/kafemaspb/",
      "description": "Магазин кофе и аксессуаров. Тут можно выпить отличнейшую альтернативу, не проходите мимо!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 30,
      "name": "Панорама",
      "location": [
        59.954505,
        30.408474
      ],
      "adress": "📍 Свердловская наб., 60",
      "image": "https://fenster.coffee/mapImages/83608914_187475142485708_4185907186014515326_n.jpg",
      "instagram": "https://www.instagram.com/panoramacafe.spb/",
      "description": "Небольшая двухярусная кофейня от Aurora coffee roasters с панорамным видом на Неву и Свердловскую набережную.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 31,
      "name": "Будем знакомы",
      "location": [
        59.913628,
        30.297268
      ],
      "adress": "📍 Рижский просп., 2",
      "image": "https://fenster.coffee/mapImages/90440959_570864277192092_5253785434073557419_n.jpg",
      "instagram": "https://www.instagram.com/budem.znakomy.coffee/",
      "description": "Семейная кофейня на Балтийской.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 32,
      "name": "Питчер",
      "location": [
        59.866243,
        30.314913
      ],
      "adress": "📍 Бассейная ул., 12",
      "image": "https://fenster.coffee/mapImages/38097329_219776198699759_7227932391501725696_n.jpg",
      "instagram": "https://www.instagram.com/pitcherbar/",
      "description": "Небольшой павильон рядом со студенческим городком.",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 33,
      "name": "Забыли сахар",
      "location": [
        59.987465,
        30.371761
      ],
      "adress": "📍 Кушелевская д., 3/7",
      "image": "https://fenster.coffee/mapImages/60273350_1156453987896261_6311363352895407612_n.jpg",
      "instagram": "https://www.instagram.com/zabylisahar/",
      "description": "Оригинальные десерты с низким содержанием сахара, милый интерьер с ватными облаками и розовым цветом.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 34,
      "name": "Место Встречи",
      "location": [
        60.09314,
        29.957201
      ],
      "adress": "📍 ул. Коммунаров, 2/4, Сестрорецк",
      "image": "https://avatars.mds.yandex.net/get-altay/1903890/2a0000016b88bac33b7da8d87c346000d4cc/XL",
      "instagram": "https://www.instagram.com/mesto_coffee/",
      "description": "Первая спешалти кофейня Сестрорецка, Kids and Pets friendly. ✨ Альтернативы пока нет)",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 35,
      "name": "Фильтр",
      "location": [
        59.936346,
        30.354908
      ],
      "adress": "📍 ул. Маяковского, 16",
      "image": "https://fenster.coffee/mapImages/72371779_393149981574272_7274009672204395507_n.jpg",
      "instagram": "https://www.instagram.com/filterspb/",
      "description": "Кофейня с чистым минималистичным интерьером, хорошим кофе и скромным выбором десертов.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 36,
      "name": "Департамент кофе",
      "location": [
        59.928605,
        30.373771
      ],
      "adress": "📍 Невский просп., 150К",
      "image": "https://fenster.coffee/mapImages/depart.jpg",
      "instagram": "https://www.instagram.com/coffee_department/",
      "description": "Кофейня хороших питерских обжарщиков, но интерьер очень-очень странный.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 37,
      "name": "Питчер",
      "location": [
        59.931386,
        30.3558
      ],
      "adress": "📍 ул. Марата, 2/73-75",
      "image": "https://sun9-19.userapi.com/c855436/v855436108/1074a0/dcCHXpYb8-A.jpg",
      "instagram": "https://www.instagram.com/pitcherbar/",
      "description": "Небольшая кофейня в хорошем месте.",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 38,
      "name": "Black Coffee Co.",
      "location": [
        59.95962,
        30.318305
      ],
      "adress": "📍 Каменноостровский просп., 13/2",
      "image": "https://fenster.coffee/mapImages/88281179_148260293310623_3443866649607070631_n.jpg",
      "instagram": "https://www.instagram.com/blackcoffeeco.ru/",
      "description": "Хорошая кофейня в районе Австрийской площади.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 39,
      "name": "MNTN Coffee",
      "location": [
        59.924815,
        30.23923
      ],
      "adress": "📍 Кожевенная линия 40Б",
      "image": "https://fenster.coffee/mapImages/89410945_3417702231577974_3236907147519750908_n.jpg",
      "instagram": "https://www.instagram.com/mntncoffee/",
      "description": "Единственная кофейня в Севкабель Порту.",
      "discount": "20",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 40,
      "name": "Море внутри тебя",
      "location": [
        60.052306,
        30.43458
      ],
      "adress": "📍 бульвар Менделеева 8а",
      "image": "https://fenster.coffee/mapImages/81938253_561993514385741_7216463677822986200_n.jpg",
      "instagram": "https://www.instagram.com/more_insideyou/",
      "description": "Стильный басик с кофе и маттей. А что ещё есть в нашем районе?",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 41,
      "name": "Рид",
      "location": [
        59.924702,
        30.28748
      ],
      "adress": "📍 ул. Декабристов, 39",
      "image": "https://salut.coffee/rid.jpg",
      "instagram": "https://www.instagram.com/rid_coffee/",
      "description": "Ребята открылись недавно, но все время совершенствуются)",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 42,
      "name": "Cup in cup",
      "location": [
        59.927888,
        30.302824
      ],
      "adress": "📍 ул. Декабристов, 20",
      "image": "https://fenster.coffee/mapImages/83851918_496646444372568_3345770092883192757_n.jpg",
      "instagram": "https://www.instagram.com/cupincup/",
      "description": "Большой выбор чая и вкусные сэндвичи.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 43,
      "name": "Qobra",
      "location": [
        59.84996,
        30.150182
      ],
      "adress": "📍 ул. Адмирала Коновалова д. 2-4",
      "image": "https://fenster.coffee/mapImages/64669464_155143258997875_3668212310661802973_n.jpg",
      "instagram": "https://instagram.com/qobracoffee?igshid=1gatoopjftlgm",
      "description": "Кофейный корнер в цветочком магазине.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 44,
      "name": "Знакомьтесь, Джо",
      "location": [
        59.934341,
        30.347842
      ],
      "adress": "📍 Литейный просп., 57",
      "image": "https://instagram.fhel4-1.fna.fbcdn.net/vp/c57a549a367d0f5cb83e08c361be8ac8/5E18E0BA/t51.2885-15/e35/s1080x1080/66450358_416989452241902_8754848017530088972_n.jpg?_nc_ht=instagram.fhel4-1.fna.fbcdn.net&_nc_cat=106",
      "instagram": "https://www.instagram.com/bolshe_coffee/",
      "description": "Уютная кофейня от Больше кофе в книжном магазине.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 45,
      "name": "Addict",
      "location": [
        59.965286,
        30.304522
      ],
      "adress": "📍 Малый проспект П.С., 82⠀",
      "image": "https://fenster.coffee/addict.jpg",
      "instagram": "https://www.instagram.com/addict_cafe/",
      "description": "Небольшая светлая кофейня с кофе собственной обжарки. В меню есть пара видов сендвичей, десерты и выпечка.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 46,
      "name": "Кому кофе",
      "location": [
        59.897158,
        30.426594
      ],
      "adress": "📍 просп. Елизарова, 8, корп. 1",
      "image": "https://fenster.coffee/mapImages/107544331_277533376814780_4985136473126493874_n.jpg",
      "instagram": "https://www.instagram.com/komucoffee/?hl=ru",
      "description": "Маленькая кофейня, в которой всё очень-очень крафтовое. Кофе собственной обжарки, кстати!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 47,
      "name": "Coffee Miru",
      "location": [
        59.938209,
        30.359337
      ],
      "adress": "📍 ул. Восстания, 24",
      "image": "https://fenster.coffee/miru.png",
      "instagram": "https://www.instagram.com/coffee_miru",
      "description": "Небольшая светлая кофейня во Флигеле. Основана она ещё на самой заре спешалти-культуры в Петербурге и работает до сих пор. ",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 48,
      "name": "Espresso tonic",
      "location": [
        59.921836,
        30.343509
      ],
      "adress": "📍 Социалистическая, 15",
      "image": "https://fenster.coffee/mapImages/2DDE6DDE-F137-4FBC-9153-B3ACD826F478.jpeg",
      "instagram": "https://www.instagram.com/espresso_tonic_spb/",
      "description": "Кофейня, рождённая в баре Джин-тоник. Крутой кофе и еда, большой стеллаж с зерном от разных обжарщиков, которое можно купить себе домой.",
      "discount": "",
      "tag": "2–место GoodCoffeeAwards 2019",
      "togo": "TRUE"
    },
    {
      "n": 49,
      "name": "KGallery Book Cafe",
      "location": [
        59.939698,
        30.342235
      ],
      "adress": "📍 набережная реки Фонтанки, 24",
      "image": "https://fenster.coffee/mapImages/74862750_461063114806147_5079420564602640764_n.jpg",
      "instagram": "https://www.instagram.com/kgallerybookcafe/",
      "description": "Маленькая кофейня с панорамным видом на Фонтанку в частной галерее.",
      "discount": "10",
      "tag": "3–место GoodCoffeeAwards 2019",
      "togo": "TRUE"
    },
    {
      "n": 50,
      "name": "SWAN",
      "location": [
        59.956232,
        30.298809
      ],
      "adress": "📍 улица Лизы Чайкиной, 4/12",
      "image": "https://fenster.coffee/mapImages/66477895_506148110135091_5231768260177346943_n.jpg",
      "instagram": "https://www.instagram.com/swancoffeespb/",
      "description": "Красиво, много зеркал и есть выбор зерна в эспрессо.",
      "discount": "",
      "tag": "3–место Good Coffee Awards 2019",
      "togo": "TRUE"
    },
    {
      "n": 51,
      "name": "Mad Espresso Team",
      "location": [
        59.939408,
        30.285737
      ],
      "adress": "📍 Большой просп. Васильевского острова, 16/14Б",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/v/t51.2885-15/e35/79600046_166338584432116_3626985488180217568_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=Bp1b0JxQFrMAX_znVHQ&oh=abcbf7bad5258b84a46f7fc770ec9a40&oe=5EA351A7",
      "instagram": "https://www.instagram.com/madespressoteam/",
      "description": "Небольшая кофейня на Василеостровском рынке.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 52,
      "name": "Sibaristica",
      "location": [
        59.910383,
        30.283935
      ],
      "adress": "📍 наб. Обводного канала, 199-201К, эт. 1",
      "image": "https://fenster.coffee/mapImages/39134853_2063527713963301_555966998022979584_n.jpg",
      "instagram": "https://www.instagram.com/sibaristica/",
      "description": "Кофейня, производство, офис и школа кофе в одном гигантском лофте.",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 53,
      "name": "Смена",
      "location": [
        59.939561,
        30.359817
      ],
      "adress": "📍 Басков пер., 20",
      "image": "https://fenster.coffee/mapImages/28765530_159264078090961_3141946027892801536_n.jpg",
      "instagram": "https://www.instagram.com/smenacafe/",
      "description": "Всегда вкусная еда, всегда отличный кофе и забота о каждом госте. Жалко, что нет второй Смены ;(",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 54,
      "name": "ТЧК",
      "location": [
        59.959191,
        30.316397
      ],
      "adress": "📍 Каменноостровский просп., 18/11Б",
      "image": "https://fenster.coffee/mapImages/72212262_561580737927462_8993379989030503034_n.jpg",
      "instagram": "https://www.instagram.com/coffee.tchk.spb/",
      "description": "Очень уютная, но очень маленькая кофейня во втором внутреннем дворике на Австриской площади. Кофе тут - один из лучших в городе, собственная выпечка - божественна!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 55,
      "name": "Gotcha! brew bar",
      "location": [
        59.939432,
        30.348112
      ],
      "adress": "📍 Литейный просп., 41",
      "image": "https://fenster.coffee/mapImages/67626168_523414878402965_3494670226118870828_n.jpg",
      "instagram": "https://www.instagram.com/gotcha.brewbar/",
      "description": "Кофейня в парадной со столиками под лестницей и смешными названиями десертов. ",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 56,
      "name": "Мечтатели",
      "location": [
        59.936913,
        30.342883
      ],
      "adress": "📍 наб. реки Фонтанки, 11",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/70589232_472504140273692_4741069031320083885_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=tBVqlO9DdT4AX_LF5jp&oh=1255504d15843c2e5133436b96c3c18d&oe=5E9ACBC2",
      "instagram": "https://www.instagram.com/followdreamers/",
      "description": "Гастробар с едой, вином и вкусным кофе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 57,
      "name": "Пиф-Паф",
      "location": [
        59.932067,
        30.323612
      ],
      "adress": "📍 наб. канала Грибоедова, 31",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/74969020_462878957684328_141604564657453347_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=OgoxhQUSsloAX9sKQ5b&oh=7026acabf8489cea66689cda73620ad8&oe=5EA9CE12",
      "instagram": "https://www.instagram.com/pifpafbar/",
      "description": "Бар, кофейня от Coffee Owl и парикмахерская в одном!",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 58,
      "name": "Склад 17",
      "location": [
        59.944359,
        30.34907
      ],
      "adress": "📍 Литейный просп., 18/2",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/v/t51.2885-15/e35/s1080x1080/73164352_567628717382175_6593650914353016849_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=v1OzH3723lMAX9l1mvs&oh=20ab416df76b2a965d6186a395f36ba9&oe=5EB09ED3",
      "instagram": "https://www.instagram.com/sklad_17/",
      "description": "Кофе, галерея, ивенты и кинопоказы неподалёку от Литейного моста.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 59,
      "name": "Спасибокофе",
      "location": [
        59.966119,
        30.28815
      ],
      "adress": "📍 Барочная ул., 8",
      "image": "https://fenster.coffee/mapImages/47584072_423414901530774_4949336016280428069_n.jpg",
      "instagram": "https://www.instagram.com/spasibocoffee/",
      "description": "Хороший кофе, но места маловато.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 60,
      "name": "Oh! My Tea",
      "location": [
        59.931105,
        30.320476
      ],
      "adress": "📍 наб. канала Грибоедова, 43",
      "image": "https://fenster.coffee/mapImages/22344976_1966134403598002_6566282736703635456_n.jpg",
      "instagram": "https://www.instagram.com/ohmytea_ru/",
      "description": "Лучшая чайная в городе! Кофе тут тоже есть и он от культовых московских ребят `Кооператив чёрный`",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 61,
      "name": "Футура",
      "location": [
        59.969177,
        30.317296
      ],
      "adress": "📍 наб. реки Карповки, 5, корп. 36",
      "image": "https://fenster.coffee/mapImages/IMAGE 2020-07-12 13:05:37.jpg",
      "instagram": "https://www.instagram.com/futurabistro/",
      "description": "Новый ресторан на каждый день с вкусной выпечкой и недорогой едой. Кофе на уровне.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 62,
      "name": "Espresso Bike",
      "location": [
        59.932427,
        30.32152
      ],
      "adress": "📍 Казанская ул., 7, этаж 0",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/vp/b2caaa36602a20493a899336b5bf5f20/5DFFA11A/t51.2885-15/e35/67847718_184801112542621_297161373030898375_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=101",
      "instagram": "https://www.instagram.com/espressobike/",
      "description": "Старейшая кофейня на Казанской,  пережившая много трансформаций. Есть полноценная кухня и неплохой выбор девайсов для приготовления кофе дома.",
      "discount": "15",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 63,
      "name": "Кофе Lab Буше",
      "location": [
        59.965336,
        30.312913
      ],
      "adress": "📍 Льва Толстого, 1-3",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/v/t51.2885-15/e35/44496356_352204842005840_1795423460721901220_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=B_bAkotbOh0AX-W_RpG&oh=fd5b0660730c72be95fde809f5599ba3&oe=5EA20A1B",
      "instagram": "https://www.instagram.com/bushe.coffeewinelab/",
      "description": "Стильный инетрьер: камень, стекло, бетон и металл. Дорогая посуда. Полноценная кухня и вино.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 64,
      "name": "Подписные издания",
      "location": [
        59.934571,
        30.347772
      ],
      "adress": "📍 Литейный просп., 57",
      "image": "https://fenster.coffee/mapImages/132426556_845361259597840_9036047171473950128_n.jpg",
      "instagram": "https://www.instagram.com/izdaniya/",
      "description": "Кофейня от создателей Смены на втором этаже знаменитого книжного магазина. Хлеб, выпечка, вкусный кофе. В скором времени обещают и вино :)",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 65,
      "name": "Биография",
      "location": [
        59.943323,
        30.288973
      ],
      "adress": "📍 Кадетская линия, 7/2",
      "image": "https://fenster.coffee/mapImages/2021-01-10 20.53.25.jpg",
      "instagram": "https://www.instagram.com/biography_coffee/",
      "description": "Отличный кофе от разных обжарщиков. Всегда есть вкусная выпечка <3 ",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 66,
      "name": "Кофе Нарушители",
      "location": [
        59.941914,
        30.35745
      ],
      "adress": "📍 ул. Маяковского, 37Г",
      "image": "https://fenster.coffee/mapImages/2021-01-10 20.53.13.jpg",
      "instagram": "https://www.instagram.com/breakerscoffee/",
      "description": "Кофейня-сквот во дворах на улице Маяковского по соседству с ГИБДД, поэтому «нарушители»). Помимо кофе, полноценное меню с доставкой на дом",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 67,
      "name": "Mad Espresso Team",
      "location": [
        59.924528,
        30.311026
      ],
      "adress": "📍 Римского-Корсакова, 3",
      "image": "https://fenster.coffee/mapImages/IMAGE 2021-01-10 21:00:07.jpg",
      "instagram": "https://www.instagram.com/madespressoteam/",
      "description": "Новая кофейня Северо-Западной кофейной компании. Помимо кофе, тут очень вкусная еда!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 68,
      "name": "Kos place",
      "location": [
        59.925858,
        30.331346
      ],
      "adress": "📍 Бородинская ул., 2/86",
      "image": "https://fenster.coffee/mapImages/140481716_339643870415390_7090806413837550938_n.jpg",
      "instagram": "https://www.instagram.com/kos.place/",
      "description": "Уютная светлая кофейня с гигантскими окнами и видом на Фонтанку. В меню есть завтраки, сэндвичи и сыроедческие десерты.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 69,
      "name": "Most",
      "location": [
        59.924397,
        30.242036
      ],
      "adress": "📍 Кожевенная линия, 40",
      "image": "https://fenster.coffee/mapImages/2021-01-30 13.32.01.jpg",
      "instagram": "https://www.instagram.com/wearemostcoffee/",
      "description": "Большая кофейня в Севкабеле от команды Most Coffee Roasters. Продуманный стильный интерьер, полноценное сытное меню, весь ассортимент обжарки Моста всегда на полке.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 70,
      "name": "MNTN Coffee",
      "location": [
        59.965007,
        30.283798
      ],
      "adress": "📍 Большой Зеленина 34.",
      "image": "https://fenster.coffee/mapImages/IMAGE 2021-01-30 13:29:27.jpg",
      "instagram": "https://www.instagram.com/mntncoffee/",
      "description": "Красивая кофейня в тихом районе между Чкаловской и Крестовском. Кофе от московских обжарщиков Silky Drum, в меню конструктор завтраков, тосты, десерты.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 71,
      "name": "Habit",
      "location": [
        60.005238,
        30.300806
      ],
      "adress": "📍 Коломяжский просп., 17, корп. 1",
      "image": "https://scontent-frt3-2.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/67283994_193412868341553_7674204858999961972_n.jpg?_nc_ht=scontent-frt3-2.cdninstagram.com&_nc_cat=109&_nc_ohc=-YM0EcNBy6wAX9z0Cx6&oh=5081cb40a5bc55089cbfa400ddffb750&oe=5ED8A0E0",
      "instagram": "https://www.instagram.com/myhabitcoffee/",
      "description": "Отличный корнер с панорамным видом на Удельный парк в Сити молле. Дочерний проект Mad Espresso Team и Северо-Западной Кофейной Компании.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 72,
      "name": "Sight",
      "location": [
        59.962782,
        30.286334
      ],
      "adress": "📍 Большая Зеленина ул., 24",
      "image": "https://fenster.coffee/mapImages/IMAGE 2020-07-12 13:05:33.jpg",
      "instagram": "https://www.instagram.com/sightcoffeedine/",
      "description": "Стильный рестик с хорошим кофе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 73,
      "name": "Парадная",
      "location": [
        59.943809,
        30.353786
      ],
      "adress": "📍 Кирочная ул., 7",
      "image": "https://fenster.coffee/mapImages/91243015_520395171955392_7825428077557646565_n.jpg",
      "instagram": "https://www.instagram.com/paradnayaspb/",
      "description": "Небольшая кофейня на Кирочной с простым интерьером и ярким кофе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 74,
      "name": "Огурцы",
      "location": [
        59.923897,
        30.325372
      ],
      "adress": "📍 наб. реки Фонтанки, 96",
      "image": "https://fenster.coffee/og.jpg",
      "instagram": "https://www.instagram.com/ogurtsinafontanke/",
      "description": "Первое инклюзивное кафе в Санкт-Петербурге от команды Простые вещи. За стойкой работают профессиональные бариста в паре с особенными ребятами. Тут комфортно находиться, много растений, красивый свет и вкусный кофе!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 75,
      "name": "Coffee Racer",
      "location": [
        59.955412,
        30.307047
      ],
      "adress": "📍 Введенская, 22",
      "image": "https://fenster.coffee/mapImages/67679496_2397130500377408_1642131978817348549_n.jpg",
      "instagram": "https://www.instagram.com/coffeeracer.spb/",
      "description": "Отличный пример кофейни с четкой ясной концепцией, да ещё и исполнение на высочайшем уровне! Владельцы — явные фанаты байков, мотоциклов и культуры, с ними связанной. Но и неосведомлённому гостю здесь понравится.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 76,
      "name": "8line Coffee",
      "location": [
        59.939694,
        30.28016
      ],
      "adress": "📍 8-я линия Васильевского острова, 25, Санкт-Петербург",
      "image": "https://fenster.coffee/mapImages/75553974_2441682659270587_8501936302148171702_n.jpg",
      "instagram": "https://www.instagram.com/8line_coffee/",
      "description": "Kрасивая кофейня в новом креативном пространстве Линии. Советуем попробовать сырники, тут их целых 3 вида, в том числе и тофники.",
      "discount": "15",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 77,
      "name": "Skuratov",
      "location": [
        59.936357,
        30.325302
      ],
      "adress": "📍 Малая Конюшенная ул., 14",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/vp/53a46aee5faa07011b727725cfe8a15a/5E01E439/t51.2885-15/e35/p1080x1080/62245723_147158499784929_7553085260816094028_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=109",
      "instagram": "https://www.instagram.com/skuratovcoffee/",
      "description": "Сеть из Омска. Посуда только одноразовая, кофе дорогой, сервис в стиле Старбакса. Эир латте - правда вкусно!",
      "discount": "10",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 78,
      "name": "Человек и пароход",
      "location": [
        59.939008,
        30.285737
      ],
      "adress": "📍 Большой просп. Васильевского острова, 16/14Б",
      "image": "https://fenster.coffee/mapImages/90971198_1492499334250142_6461089535590701800_n.jpg",
      "instagram": "https://www.instagram.com/chip_coffee/",
      "description": "Легендарная московская сеть спешлти кофеен от именитого Николая Чистякова теперь и в Спб!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 79,
      "name": "Мука",
      "location": [
        59.934674,
        30.238968
      ],
      "adress": "📍 Гаванская ул., 35",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/vp/3b13114d41821fa7b9728f18482af24c/5E1AD35A/t51.2885-15/e35/18889183_135489213687706_1609688940074237952_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=110",
      "instagram": "https://www.instagram.com/mukacafe/",
      "description": "Ресторан с хорошим кофе от создателей Забыли сахар.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 80,
      "name": "Papapower",
      "location": [
        59.927263,
        30.359172
      ],
      "adress": "📍 Лиговский пр-т, 30",
      "image": "https://instagram.fhel5-1.fna.fbcdn.net/vp/6659162e542f3bf1077c5c89702c5fa4/5E54C4E7/t51.2885-15/e35/s1080x1080/74432394_2528228060601289_257109034913611520_n.jpg?_nc_ht=instagram.fhel5-1.fna.fbcdn.net&_nc_cat=101",
      "instagram": "https://www.instagram.com/papapowercoffee/",
      "description": "Два кофейных корнера в ТРЦ Галерея от Забыли Сахар. Стильно, модно, вкусно.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 81,
      "name": "City Coffee",
      "location": [
        59.922686,
        30.30883
      ],
      "adress": "📍 Садовая ул., 54",
      "image": "https://fenster.coffee/mapImages/72395343_3219271744781106_3843057312393070875_n.jpg",
      "instagram": "https://www.instagram.com/citycoffeespb",
      "description": "Тут когда-то зарождалась кофейная культура в Спб. Но место давно не обновлялось - специально посещать не стоит, только если оказали рядом или пришли на каппинг.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 82,
      "name": "Amelie",
      "location": [
        59.929353,
        30.414714
      ],
      "adress": "📍 Заневский просп., 23",
      "image": "https://salut.coffee/biskvit.jpg",
      "instagram": "https://www.instagram.com/coffee.amelie/",
      "description": "Первая хорошая кофейня на Новочеркасской с хорошей свежей кондитеркой. Красивые эклеры, торты и вкусный кофе!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 83,
      "name": "Event Coffeebar",
      "location": [
        59.909323,
        30.35137
      ],
      "adress": "📍 Тамбовская ул., 63",
      "image": "https://scontent-frt3-2.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/76852357_583933795690736_5328617616419495252_n.jpg?_nc_ht=scontent-frt3-2.cdninstagram.com&_nc_cat=108&_nc_ohc=lIFgfuBqyXIAX8A2rOe&oh=39c52c8ee4a52ba4771de29436b8e640&oe=5EC40642",
      "instagram": "https://www.instagram.com/event_coffeebar/",
      "description": "Место специфическое, но для того района лучше не найти! Находится в холле старого ДК, зерно разное, бариста приветливые.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 84,
      "name": "Hustle House",
      "location": [
        59.9112,
        30.354505
      ],
      "adress": "📍 Курская ул., 28/32",
      "image": "https://scontent-frt3-2.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/67241668_2482223508674240_5388402550199558734_n.jpg?_nc_ht=scontent-frt3-2.cdninstagram.com&_nc_cat=108&_nc_ohc=NSaWxlo0qIsAX_guHsx&oh=63743b9837df7575c1ee9a722fcaead9&oe=5ED59003",
      "instagram": "https://www.instagram.com/hustlehousecoffee",
      "description": "Маленькая кофейня с большущим окном и двумя этажами.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 85,
      "name": "Сup",
      "location": [
        60.71458,
        28.732972
      ],
      "adress": "📍 Прогонная ул., 1, Выборг",
      "image": "https://scontent-frt3-2.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/68780177_2905040216179365_2724441040553539475_n.jpg?_nc_ht=scontent-frt3-2.cdninstagram.com&_nc_cat=109&_nc_ohc=Vb-lnCa_0MYAX8tgfZ2&oh=1b48d34521ee47e7d7c795eff47358b4&oe=5EBA1FF1",
      "instagram": "https://www.instagram.com/cup.coffee.tea/",
      "description": "Если вы в Выборге, то 100% должны сюда зайти! Красивая кофейня со сводчатым потолком в самом центре города. ",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 86,
      "name": "Coffee Racer",
      "location": [
        59.937229,
        30.372705
      ],
      "adress": "📍 8-я Советская 14",
      "image": "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/67679496_2397130500377408_1642131978817348549_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=108&_nc_ohc=BhHJ4DVvbb4AX85KGcB&oh=90732bd257dffa072c584c17de29f35f&oe=5ECCF682",
      "instagram": "https://www.instagram.com/coffeeracer.spb/",
      "description": "Отличный пример кофейни с четкой ясной концепцией, да ещё и исполнение на высочайшем уровне! Владельцы — явные фанаты байков, мотоциклов и культуры, с ними связанной. Но и неосведомлённому гостю здесь понравится.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 87,
      "name": "Kafema",
      "location": [
        59.925845,
        30.34271
      ],
      "adress": "📍 Разъезжая, 1",
      "image": "https://fenster.coffee/mapImages/97560749_240454747237476_406595442385539122_n.jpg",
      "instagram": "https://www.instagram.com/kafemaspb/",
      "description": "Магазин кофе и аксессуаров. Тут можно выпить отличнейшую альтернативу, не проходите мимо!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 88,
      "name": "Hollingshead",
      "location": [
        59.977703,
        30.316387
      ],
      "adress": "📍 ул. Академика Павлова, 5М,",
      "image": "https://fenster.coffee/mapImages/82819551_1313279905532511_1881569033138153623_n.jpg",
      "instagram": "https://www.instagram.com/hollingsheadbar/",
      "description": "Интересное заведение с кофе и алкоголем во дворе нового бизнес-квартала возле Кантимировского моста. Летом тут работает приятная веранда посреди парковки.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 89,
      "name": "Blanche",
      "location": [
        59.934366,
        30.36771
      ],
      "adress": "📍 4-я Советская улица, 8",
      "image": "https://fenster.coffee/mapImages/DFFE9967-A5B5-4AF2-90B3-9311B5717D05.jpeg",
      "instagram": "https://www.instagram.com/coffee_blanche/",
      "description": "Небольшая локальная кофейня в стиле лофт, с отдельным залом для выставок и мероприятий.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 90,
      "name": "CO&LO",
      "location": [
        59.885142,
        30.368554
      ],
      "adress": "📍 Салова 61",
      "image": "https://fenster.coffee/mapImages/photo_2021-02-24 17.39.19.jpeg",
      "instagram": "https://www.instagram.com/coffeeandlo",
      "description": "Кофе-поинт в лобби апарт-отеля Valo. Кофе от Cultura Roasters — содателей 420 pages.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 91,
      "name": "Fika",
      "location": [
        59.968702,
        30.317244
      ],
      "adress": "📍 Аптекарский просп., 2",
      "image": "https://fenster.coffee/mapImages/145218484_830495144176342_831660058579432914_n.jpg",
      "instagram": "https://www.instagram.com/fikaspb/",
      "description": "Веганское бистро с хорошим кофе от разных обжарщиков.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 92,
      "name": "Not for sale",
      "location": [
        59.930093,
        30.325278
      ],
      "adress": "📍 Садовая улица, 21АБ",
      "image": "https://fenster.coffee/mapImages/2021-03-25 18.20.50.jpg",
      "instagram": "https://www.instagram.com/notforsale_studio/",
      "description": "Модное пространство с огромными витринными окнами: кофейня на первом этаже, шоу-рум на втором. В кофейне подают свежую выпечку, а в меню есть пиво и сидр.",
      "discount": "",
      "tag": "",
      "togo": "FALSE"
    },
    {
      "n": 93,
      "name": "Pinscher Coffee",
      "location": [
        60.042206,
        30.337757
      ],
      "adress": "📍 просп. Луначарского, 56, корп. 1",
      "image": "https://fenster.coffee/mapImages/66061138_860436810995757_4472423084082763779_n.jpg",
      "instagram": "https://www.instagram.com/pinschercoffee/",
      "description": "Небольшая кофейня на районе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 94,
      "name": "Птицы",
      "location": [
        59.926715,
        30.302447
      ],
      "adress": "📍 набережная канала Грибоедова, 96",
      "image": "https://fenster.coffee/mapImages/129730060_233234851474199_380194869399188725_n.jpg",
      "instagram": "https://www.instagram.com/ptitsi.cafe/",
      "description": "Корпусные конфеты ручной работы, завтраки и вкусный кофе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 95,
      "name": "Communa",
      "location": [
        60.037925,
        30.225246
      ],
      "adress": "📍 Комендантский просп., 67",
      "image": "https://fenster.coffee/mapImages/100791902_163938835152550_6465161172444632399_n.jpg",
      "instagram": "https://www.instagram.com/communacoffee/",
      "description": "Кофейня в ЖК Чистое небо. Пространство светлое, красивое, еда модная, достойная.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 96,
      "name": "Algorithm",
      "location": [
        59.930561,
        30.317808
      ],
      "adress": "📍 Казанская улица, 26/27",
      "image": "https://fenster.coffee/mapImages/IMG_2538.JPG",
      "instagram": "https://www.instagram.com/algorithmcoffeespb/",
      "description": "В интерьере сочетаются винтаж и лофт, в меню большой выбор завтраков, а изюминкой заведения стали безалкогольные вина! Открыли кофейню ученики школы бариста Сибаристики, готовят напитки на их же зерне.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 97,
      "name": "Молния",
      "location": [
        59.950812,
        30.263389
      ],
      "adress": "📍 Уральская улица, 6",
      "image": "https://fenster.coffee/mapImages/118472777_2712700382349392_4185593756495933881_n.jpg",
      "instagram": "https://www.instagram.com/molnia.vo/",
      "description": "Уютная локальная кофейня в ЖК Самоцветы.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 98,
      "name": "Сообщество",
      "location": [
        59.942029,
        30.35066
      ],
      "adress": "📍 ул. Артиллерийская 2",
      "image": "https://fenster.coffee/mapImages/XXXL.jpg",
      "instagram": "https://www.instagram.com/coffeebar_community/",
      "description": "Кофейня в тихом районе у Чернышевской. Есть кухня, а значит есть завтраки, сэндвичи и даже сытная еда. ",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 99,
      "name": "Verle",
      "location": [
        59.799983,
        30.271195
      ],
      "adress": "📍 Пулковское шоссе, 41литЗА",
      "image": "https://fenster.coffee/mapImages/Снимок экрана 2020-11-02 в 16.13.54.png",
      "instagram": "https://www.instagram.com/verlegarden/",
      "description": "Единственная спешалти кофейня в аэропорту Пулково. Находится после досмотра, в зоне ожидания посадки в терминале D — так что если вы улетаете в другой город России, то перед посадкой можете взбодриться кофе от Verle.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 100,
      "name": "Будем знакомы",
      "location": [
        59.962242,
        30.299806
      ],
      "adress": "📍 Малый проспект Петроградской стороны, 60",
      "image": "https://fenster.coffee/mapImages/IMAGE 2020-11-06 18:08:49.jpg",
      "instagram": "https://www.instagram.com/budem.znakomy.coffee/",
      "description": "Вторая точка сети. Узнаваемый уютный стиль, свежая выпечка и крутые десерты.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 101,
      "name": "Verle Shop",
      "location": [
        59.939208,
        30.285737
      ],
      "adress": "📍 Большой просп. Васильевского острова, 16/14Б",
      "image": "https://fenster.coffee/mapImages/photo_2020-12-22 16.56.26.jpeg",
      "instagram": "https://www.instagram.com/verlecoffeeroasters/",
      "description": "Фирменный магазин товаров Verle Coffee Roasters, в котором можно выпить свежий фильтр-кофе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 102,
      "name": "Аврора",
      "location": [
        59.940464,
        30.379189
      ],
      "adress": "📍 Суворовский проспект, 55",
      "image": "https://fenster.coffee/mapImages/Снимок экрана 2020-11-06 в 18.27.33.png",
      "instagram": "https://www.instagram.com/auroracoffee.spb/",
      "description": "Кофейня от создателей Панорамы. Готовят кофе на зерне собственной обжарки (Aurora Coffee Roasters).",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 103,
      "name": "Doza",
      "location": [
        59.959924,
        30.294992
      ],
      "adress": "📍 Большая Зеленина ул., 5",
      "image": "https://avatars.mds.yandex.net/get-altay/2056672/2a0000016d4e9be1908937f76b51051cae10/XXXL",
      "instagram": "https://www.instagram.com/doza.corporation/",
      "description": "Небольшая уютная кофейня рядом с метро Чкаловская. Забежать за кофе или недолго почилить на уютном подоконнике — идеально!",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 104,
      "name": "Doza",
      "location": [
        59.922235,
        30.351155
      ],
      "adress": "📍 Разъезжая ул., 35",
      "image": "https://avatars.mds.yandex.net/get-altay/2056672/2a0000016d4e9be1908937f76b51051cae10/XXXL",
      "instagram": "https://www.instagram.com/doza.corporation/",
      "description": "Кофе от разных обжарщиков, сэндвичи, десерты и выпечка. Маленькая кофейня с достойным уровнем качества.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 105,
      "name": "Doza",
      "location": [
        59.947288,
        30.269993
      ],
      "adress": "📍 9-я линия Васильевского острова, 72",
      "image": "https://avatars.mds.yandex.net/get-altay/3933982/2a00000175acf96c2684ae17f6c7742a1729/XXXL",
      "instagram": "https://www.instagram.com/doza.corporation/",
      "description": "Кофе от разных обжарщиков, сэндвичи, десерты и выпечка. Маленькая кофейня с достойным уровнем качества.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 106,
      "name": "Lareve",
      "location": [
        59.926503,
        30.324636
      ],
      "adress": "📍 ул.Гороховая, 55",
      "image": "https://fenster.coffee/mapImages/2021-01-05 15.39.28.jpg",
      "instagram": "https://www.instagram.com/lareve_spb/",
      "description": "Авторская кондитерская с красивыми эклерами, булочками Шу и корпусными конфетами и, конечно, вкусный кофе от The Welder Catherine.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 107,
      "name": "212 CAFE",
      "location": [
        59.912589,
        30.317521
      ],
      "adress": "📍 6-я Красноармейская улица, 1",
      "image": "https://fenster.coffee/mapImages/130917979_431778584645567_781858977102726795_n.jpg",
      "instagram": "https://www.instagram.com/st212cafe/",
      "description": "Красивая кофейня от создателей знаменитой фотостудии 212.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 108,
      "name": "Гуд бой кофе",
      "location": [
        59.883179,
        30.469321
      ],
      "adress": "📍 Дальневосточный 60",
      "image": "https://fenster.coffee/mapImages/XXXL.jpeg",
      "instagram": "https://www.instagram.com/goodboycoffee.spb/",
      "description": "Небольшая кофейня на десять посадочных мест. Зерно от Больше Кофе, из альтернативы фильтр и иногда Cold Brew. Отличное место в малоосвоенном хорошими кофейнями районе.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 109,
      "name": "Am Saint",
      "location": [
        59.946613,
        30.364988
      ],
      "adress": "📍 Чайковского, 56",
      "image": "https://fenster.coffee/mapImages/Снимок экрана 2021-02-20 в 19.42.58.png",
      "instagram": "https://www.instagram.com/am.saint.coffee",
      "description": "Кофейня с тёмным стильным дизайном, большим столом для коворкинга и посиделок в большой компании возле Таврического сада. ",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 110,
      "name": "Вираж",
      "location": [
        59.910731,
        30.324591
      ],
      "adress": "📍 наб. Обводного канала, 121",
      "image": "https://fenster.coffee/mapImages/photo_2021-04-01 17.20.28.jpeg",
      "instagram": "https://www.instagram.com/virage_cooperative",
      "description": "Кофейня с винтажным интерьером и советской лакированной мебелью, но свежим гранжевым молодёжным духом. Десерты, кофе, огромные окна. Вираж — не только кофейня, но и веломастерская. Велосипеды собирают в отдельном помещении, а в кофейне они только в качестве предметов интерьера.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 111,
      "name": "Amazing Cacao",
      "location": [
        59.910938,
        30.330079
      ],
      "adress": "📍 наб. Обводного канала, 74Т",
      "image": "https://fenster.coffee/mapImages/photo_2021-04-01 17.28.06.jpeg",
      "instagram": "https://www.instagram.com/amazingcacao/",
      "description": "Кофейня на шоколадной фабрике. Сюда надо приходить не только за кофе, но и пробовать бин-ту-бар шоколад в виде небольших шотов горячего напитка. Кофейню от шоколадного производства отделяет стеклянная стена, поэтому можно наблюдать за процессом.",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 112,
      "name": "Civil Coffee",
      "location": [
        59.938531,
        30.322462
      ],
      "adress": "📍 Волынский переулок д.8",
      "image": "https://fenster.coffee/mapImages/photo_2021-04-02 18.35.04.jpeg",
      "instagram": "https://www.instagram.com/civil.coffeebar/?hl=ru",
      "description": "Новое заведение Civil напротив ДЛТ. Два просторных этажа, 3 зала со сдержанным минималистичным интерьером. ПС. Рекомендуем бронировать столики заранее 🙈",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 113,
      "name": "Verle",
      "location": [
        59.804261,
        30.232859
      ],
      "adress": "📍 Pulkovo Airport, gate D09",
      "image": "https://fenster.coffee/mapImages/photo_2021-04-02 18.51.01.jpeg",
      "instagram": "https://www.instagram.com/verlegarden/?hl=ru",
      "description": "Полноценная кофейня в аэропорту у выхода D09, отличный вариант взбодриться и перекусить перед полетом",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    },
    {
      "n": 114,
      "name": "92°с",
      "location": [
        42.976086,
        47.50832
      ],
      "adress": "📍 ​Коркмасова, 82",
      "image": "https://fenster.coffee/mapImages/92.png",
      "instagram": "https://www.instagram.com/92.gradusa/",
      "description": "Хорошая кофейня в Махачкале.  Зерно от Питерских обжарщиков Junight Clan 🔥",
      "discount": "",
      "tag": "",
      "togo": "TRUE"
    }
  ]
}
"""
