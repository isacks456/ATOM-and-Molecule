program sum;
uses  crt, GraphABC;
var x, y, x0, y0, rvod, xe, ye, rel, dy, re, i:integer;
begin
  x:= 640;
  y:= 480;
  setWindowSize(x,y);
  x0:= 320;
  y0 := 220;
  rvod:= 30;
  setPenColor(clblue);
  circle(x0, y0, rvod);
  floodFill(x0, y0, clred);
  re:= y0 -dy;
  dy:= 100;
  i:= 360;
  rel:= 10;
  repeat
    clearWindow;
    if i = 360 then
      i := 1 else 
        inc(i);
      setPenColor(clBlue);
      circle(x0, y0, rvod);
      floodFill(x0, y0, clred);
      xe := x0 + round (re * cos (i * pi / 180));
      ye := y0 + round(re * sin(i * pi / 180));
      circle(xe, ye, rel);
      delay(10);
  until keyPressed ;
  xe := x0;
  ye := y0 - re;
  circle(xe, ye, rel);
end.
