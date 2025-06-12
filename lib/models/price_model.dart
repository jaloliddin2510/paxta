class PriceModel{
  final String date;
  final String price;
  PriceModel({required this.date,required this.price});
}
List<PriceModel> priceList=[
  PriceModel(date: 'Sana', price: '1 kg narxi(so\'m)'),
  PriceModel(date: '01.02.2010', price: '300 000 so\'m'),
  PriceModel(date: '01.04.2009', price: '300 000 so\'m'),
];