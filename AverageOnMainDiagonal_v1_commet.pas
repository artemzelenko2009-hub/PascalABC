program Seredne;

var
  A: array[1..10, 1..10] of integer;
  n, i, j, s: integer;
  ser: real;

begin
  writeln('Введіть розмірність матриці:');
  readln(n);

  s := 0;

  writeln('Введіть елементи матриці:');
  for i := 1 to n do
    for j := 1 to n do
      read(A[i,j]);

  for i := 1 to n do
    s := s + A[i,i];

  ser := s / n;

  writeln('Середнє арифметичне головної діагоналі = ', ser:0:2);

  readln;
end.