program SortExample;

procedure BubbleSort(var arr: array of Integer);
var
  i, j, temp: Integer;
  n: Integer;
begin
  n := Length(arr);
  for i := 0 to n - 2 do
    for j := 0 to n - 2 - i do
      if arr[j] > arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

var
  arr: array[0..4] of Integer = (64, 25, 12, 22, 11);
  i: Integer;
begin
  { Ordenar usando Bubble Sort } 
  BubbleSort(arr);
  
  { Imprimir el array ordenado }
  for i := 0 to High(arr) do
    Write(arr[i], ' ');
  
  Writeln;
end.

{ Output: 11 12 22 25 64 }
