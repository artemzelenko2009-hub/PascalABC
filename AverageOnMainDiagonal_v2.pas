program Seredne;

var
  A: array[1..10, 1..10] of integer;
  n, i, j, s: integer;
  ser: real;

begin
  write('Введіть розмір масиву n: ');
  readln(n);

  s := 0;

  writeln('Введіть елементи масиву від -100 до 100:');

  for i := 1 to n do
    for j := 1 to n do
    begin
      repeat
        read(A[i,j]);
        if (A[i,j] < -100) or (A[i,j] > 100) then
          writeln('Помилка! Введіть число від -100 до 100:');
      until (A[i,j] >= -100) and (A[i,j] <= 100);
    end;

  writeln('Головна діагональ:');

  for i := 1 to n do
  begin
    write(A[i,i], ' ');
    s := s + A[i,i];
  end;

  ser := s / n;

  writeln;
  writeln('Середнє арифметичне = ', ser:0:2);

end.