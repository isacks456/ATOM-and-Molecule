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
{

program sum;
uses crt, GraphABC;
var x, y, x0, y0, rvod, xe, ye, rel, dy, re, i: integer;
begin
  x := 640;
  y := 480;
  setWindowSize(x, y);
  x0 := 320; // Центр по оси X
  y0 := 240; // Центр по оси Y (середина окна)
  rvod := 30; // Радиус основной окружности
  dy := 100; // Расстояние от центра до движущейся точки
  rel := 10; // Радиус движущейся точки
  i := 360; // Начальный угол

  // Рисуем оси координат
  setPenColor(clBlack);
  line(0, y0, x, y0); // Горизонтальная ось (ось X)
  line(x0, 0, x0, y); // Вертикальная ось (ось Y)

  // Рисуем сетку (опционально)
  setPenColor(clLightGray);
  for i := 0 to x do
    if i mod 50 = 0 then
      line(i, 0, i, y); // Вертикальные линии сетки
  for i := 0 to y do
    if i mod 50 = 0 then
      line(0, i, x, i); // Горизонтальные линии сетки

  // Основная окружность
  setPenColor(clBlue);
  circle(x0, y0, rvod);
  floodFill(x0, y0, clRed);

  // Анимация движущейся точки
  repeat
    clearWindow;

    // Перерисовываем оси и сетку
    setPenColor(clBlack);
    line(0, y0, x, y0); // Ось X
    line(x0, 0, x0, y); // Ось Y
    setPenColor(clLightGray);
    for i := 0 to x do
      if i mod 50 = 0 then
        line(i, 0, i, y); // Вертикальные линии сетки
    for i := 0 to y do
      if i mod 50 = 0 then
        line(0, i, x, i); // Горизонтальные линии сетки

    // Перерисовываем основную окружность
    setPenColor(clBlue);
    circle(x0, y0, rvod);
    floodFill(x0, y0, clRed);

    // Обновляем угол
    if i = 360 then
      i := 1
    else
      inc(i);

    // Вычисляем координаты движущейся точки
    xe := x0 + round(dy * cos(i * pi / 180));
    ye := y0 - round(dy * sin(i * pi / 180)); // Ось Y инвертирована

    // Рисуем движущуюся точку
    setPenColor(clGreen);
    circle(xe, ye, rel);

    // Задержка для анимации
    delay(10);
  until keyPressed;

  // Останавливаем точку в конечной позиции
  xe := x0 + round(dy * cos(i * pi / 180));
  ye := y0 - round(dy * sin(i * pi / 180));
  setPenColor(clGreen);
  circle(xe, ye, rel);
end.


}
