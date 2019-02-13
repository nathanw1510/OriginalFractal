void setup(){
	size(600,600);
	background(0);
}

void draw(){
	noStroke();
	fractal(0,0,100);
}

void fractal(int x, int y, int size){
	int r = 20;
	int g = 100;
	int b = 200;
	ellipse(x,y,size,size);
	if(size < 1){
		fill(r,g,b);
		ellipse(x,y,size,size);
	}else{
		fractal(x+100,y+100,size/2);
		fractal(x+50,y+50,size/3);
		fractal(x+100,y+10,size/2);
		fractal(x+10,y+100,size/2);

	}
		
}