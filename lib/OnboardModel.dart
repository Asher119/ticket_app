class Onboardingcontent {
  String? image;
  String? text;
  String? number;
  String? quotes;
  String? message;
  Onboardingcontent({
    required this.image,
    required this.text,
    required this.number,
    required this.quotes,
    required this.message
  });
}

List<Onboardingcontent> contents = [
  Onboardingcontent(
    text: 'Explore',
    quotes: 'The Beautiful',
    message: 'World!',
    
    image: 'assets/girl.png',
    number: '1'),


    Onboardingcontent(
    text: 'Find',
    image: 'assets/boy.png',
    quotes: 'Your Perfect',
    number: '2',
    message: 'Tickets To Fly'
    ),


    Onboardingcontent(
    text: 'Book',
    quotes: 'Appointment',
    image: 'assets/travel.png',
    number: '3',
    message: 'In Easiest Way!'
    ),
  
  
  
  ];