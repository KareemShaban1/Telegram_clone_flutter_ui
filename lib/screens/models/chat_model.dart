class ChatModel{
  final String name;
  final String message;
  final String time;
  final String imgPath;
  final bool status ;
  final int messNum;


  ChatModel({this.name, this.message, this.time, this.imgPath,this.status,this.messNum});

}

final List<ChatModel> items =[
  ChatModel(name: 'Creative 1',message: 'repellat earum qui', time: '10:39',imgPath: 'assets/images/img1.jpg',status: true,messNum: 2000),
  ChatModel(name: 'Creative 2 ',message: 'esse minus reiciendis', time: 'Feb 12',imgPath: 'assets/images/img2.jpg',status: false,messNum: 420),
  ChatModel(name: 'Creative 3',message: 'suscipit molestias rerum', time: '12:12',imgPath: 'assets/images/img3.jpg',status: false,messNum: 20),
  ChatModel(name: 'Creative 4',message: 'quam perferendis ratione', time: '6:11',imgPath: 'assets/images/img4.jpg',status: true),
  ChatModel(name: 'Creative 5 ',message: 'blanditiis expedita distinctio', time: 'Jan 1',imgPath: 'assets/images/img5.jpg',status: true,messNum: 50),
  ChatModel(name: 'Creative 6',message: 'dolorum dolore at', time: '4:00',imgPath: 'assets/images/img6.jpg',status: true,messNum: 104),
  ChatModel(name: 'Creative 7',message: 'ut sunt sequi', time: 'Dec 10',imgPath: 'assets/images/img7.jpg',status: false,messNum: 249),
  ChatModel(name: 'Creative 8',message: 'dolorem quisquam dolorem', time: '4:30',imgPath: 'assets/images/img8.jpg',status: false),
  ChatModel(name: 'Creative 9',message: 'et laborum mollitia', time: '6:00',imgPath: 'assets/images/img9.jpg',status: true,messNum: 3000),

];