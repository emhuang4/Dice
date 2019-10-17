Die bob;
void setup()
{
	size (500,600);
	noLoop();

}
void draw()
{
	//your code here
	int sum=0;

	background(0); 
	for (int i=0;i<500;i+=50){
		for (int j=0;j<500;j+=50){
			bob=new Die(i,j);
			bob.show();
			sum+=bob.rollNum;
		}
	}
	fill(255);
	textAlign(CENTER,CENTER);
	text ("Total: "+ sum,500/2,550);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY,rollNum;
	float dieSize;
	// constructor
	Die(int x, int y)  
	{
		//variable initializations
		myX=x; 
		myY=y;
		roll();
		dieSize=50;
	}
	void roll()
	{
		//your code here
		rollNum=(int)(Math.random()*6)+1;
	}
	void show(){ 
		fill(255);
		rect(myX,myY, dieSize, dieSize, 5);
		fill (0);
		if (rollNum==1 || rollNum==3 || rollNum==5){
			ellipse(myX+dieSize/2,myY+dieSize/2, 8, 8);
		}
		if (rollNum>=2){
			ellipse(myX+dieSize/4,myY+dieSize/4,8,8);
			ellipse(myX+dieSize/4*3,myY+dieSize/4*3, 8, 8);
		}

		if (rollNum>=4){
			ellipse(myX+dieSize/4*3,myY+dieSize/4,8,8);
			ellipse(myX+dieSize/4,myY+dieSize/4*3, 8, 8);
		}
			
		if (rollNum==6){
			ellipse(myX+dieSize/4*3,myY+dieSize/2, 8, 8);
			ellipse(myX+dieSize/4,myY+dieSize/2, 8, 8);
		}


	}
}

