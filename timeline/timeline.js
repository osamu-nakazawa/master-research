let video;
var wid = 200;
var hei = 150;

let pg;

var writeWidNumber = 0;
var writeHeightNumber = 0;

var rows = 3; //縦
var columns = 4; //横
var speed = 100;

function setup() {
	pg = createGraphics(wid, hei);
	video = createCapture(VIDEO);
	createCanvas(1000, 800);
	video.size(wid, hei);

	ctracker = new clm.tracker();
	ctracker.init();
	ctracker.start(video.elt);
}



function write() {
	image(video, wid * writeWidNumber, hei * writeHeightNumber);
	positions = ctracker.getCurrentPosition();
	pg.background(200, 200, 200);

	pg.erase();
  
	//right eye paint 
	pg.strokeWeight(5);
	pg.beginShape();
	for (var i = 0; i < positions.length; i++) {
	  if ((i >= 23 && i <= 26) || (i >= 63 && i <= 66)) {
		pg.curveVertex(positions[i][0], positions[i][1]);
	  }
	}
	pg.endShape();
  
	// left eye paint 
	pg.beginShape();
	for (var i = 0; i < positions.length; i++) {
	  if ((i >= 28 && i <= 31) || (i >= 67 && i <= 72)) {
		pg.curveVertex(positions[i][0], positions[i][1]);
	  }
	}
	pg.endShape();
  
	//mouse
	pg.strokeWeight(10);
	pg.beginShape();
	for (var i = 0; i < positions.length; i++) {
	  if (i >= 43 && i <= 56) {
		pg.curveVertex(positions[i][0], positions[i][1]);
	  }
	}
	pg.endShape();
  
	pg.noErase();
  
	// image(pg, 0, 0);
	image(pg, wid * writeWidNumber, hei * writeHeightNumber);
}

window.onload = function () {
	// ページ読み込み時に実行したい処理
}




setInterval(() => {
	write();

	if (writeWidNumber == columns) {
		// 横が4枚目に来た時、横を０枚目にする。
		writeWidNumber = 0;
		if (writeHeightNumber === rows) {
			// 横が4枚目かつ縦が４枚目に来た時、縦を0枚目にする。
			writeHeightNumber = 0;
		}
		else {
			// 横が４枚目かつ縦が４枚目でないなら縦に1足す
			writeHeightNumber++;
		}
	} else {
		// 横が４枚目でないなら、横に1足す
		writeWidNumber++;
	}



}, speed);
