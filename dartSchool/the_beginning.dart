
main(){

}

abstract class Insect {
  void crawl(){
    print('crawling');
  }
}

abstract class AirboneInsect extends Insect {

  void flutter(){
    print('fluttering');
  }

  void buzz(){
    print('buzzing annoyingly');
  }
}

class Mosquito extends AirboneInsect {
  void doMosquitoThing(){
    crawl();
    flutter();
    buzz();
    print('sucking blood');
  }
}