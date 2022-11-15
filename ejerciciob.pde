void setup()
{
  size(1000, 1000, P3D);
  stroke(255);
  noFill();
  
}

float rz = radians(0);
void draw()
{
  background(0);
  float tx = width/2; 
  float ty = height/2;
  float tz = 0;
  
  PMatrix3D translation = new PMatrix3D(1, 0, 0, tx,
                                        0, 1, 0, ty,
                                        0, 0, 1, tz,
                                        0, 0, 0, 1);

  float sx = 2;
  float sy = 2;
  float sz = 2;
  PMatrix3D scale = new PMatrix3D(sx, 0, 0, 0,
                                  0, sy, 0, 0,
                                  0, 0, sz, 0,
                                  0, 0, 0, 1);
                                  
  
  rz += 0.1;
  PMatrix3D rotateZ = new PMatrix3D(cos(rz), -sin(rz), 0, 0,
                                    sin(rz), cos(rz), 0, 0,
                                    0, 0, 1, 0,
                                    0, 0, 0, 1);
  
  applyMatrix(translation);
  applyMatrix(scale);
  applyMatrix(rotateZ);
  beginShape();
  vertex(-50, -50);
  vertex(50, -50);
  vertex(50, 50);
  vertex(-50, 50);
  endShape(CLOSE);
}
