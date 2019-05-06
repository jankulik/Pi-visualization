String[] pi;
int[] digits;
int index = 0;
int number_of_digits = 4472;

void setup()
{
  size(980, 980);
  background(0);
  smooth();
  
  pi = loadStrings("pi.txt");
  digits = int(pi[0].split(""));
}

void draw()
{
  translate(width/2, height/2);
  colorMode(HSB, 100);
  
  int digit = digits[index];
  int next_digit = digits[index+1];
  index++;
  
  float a1 = random(digit*36, digit*36+14);
  float a2 = random(next_digit*36, next_digit*36+14);
  float col = a1 / 3.6;
  
  float x1 = cos(radians(a1)) * 480;
  float y1 = sin(radians(a1)) * 480;
  
  float x2 = cos(radians(a2)) * 480;
  float y2 = sin(radians(a2)) * 480;
  
  strokeWeight(0.1);
  stroke(col, 100, 100);
  if(index < number_of_digits) line(x1, y1, x2, y2);
  
  println(index);
}
