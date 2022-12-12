let pg;
let video;


function setup() {
  createCanvas(640, 480);

  pg = createGraphics(640, 480);

  video = createCapture(VIDEO, function () { }); //??
  video.size(640, 480);
  video.position(0, 0);
  video.hide();

  ctracker = new clm.tracker();
  ctracker.init();
  ctracker.start(video.elt);
}

function draw() {
  image(video, 0, 0);
  positions = ctracker.getCurrentPosition();

  // noStroke();
  // noFill();
  // 	// right eye
  // 	for (var i = 0; i < positions.length; i++) {
  // 		if ((i >= 23 && i <= 26) || (i >= 63 && i <= 66)) {
  // 			ellipse(positions[i][0], positions[i][1], 5, 5);
  // 		}
  // 	}

  // 	// left eye
  // 	for (var i = 0; i < positions.length; i++) {
  // 		if ((i >= 28 && i <= 31) || (i >= 67 && i <= 71)) {
  // 			ellipse(positions[i][0], positions[i][1], 5, 5);
  // 		}
  // 	}

  //   // mouse
  // 	for (var i = 0; i < positions.length; i++) {
  // 		if (i >= 44 && i <= 55) {
  // 			ellipse(positions[i][0], positions[i][1], 5, 5);
  // 		}
  // 	}

  pg.background(200, 200, 200);

  pg.erase();

  //right eye paint 
  pg.strokeWeight(20);
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

  image(pg, 0, 0);
}