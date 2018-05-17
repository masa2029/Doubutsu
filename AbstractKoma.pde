abstract class AbstractKoma {
  String name;
  int x;
  int y;
  int team;//0 or 1
  KomaStatus kStat;




  AbstractKoma(String name, int x, int y, int team, boolean active) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.team = team;
    this.kStat = new KomaStatus(active);
  }



  
  
  void draw() {
    String komaImage = "";
    if (this.team==0 && this.kStat.active) komaImage = this.name+"A.png";
    else if (this.team==1 && this.kStat.active) komaImage = this.name+"B.png";
    else return;

    PImage img = loadImage(komaImage);
    image(img, SQUARESIZE*this.x+2, this.y*SQUARESIZE+2, SQUARESIZE-4, SQUARESIZE-4);

  }
}


void move(int toX, int toY) {
    this.updatePos(toX, toY);
  }
  void updatePos(int toX, int toY) {
    this.x=toX;
    this.y=toY;
    gs.turn = (gs.turn+1)%2;
  }