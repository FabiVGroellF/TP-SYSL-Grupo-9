program SortExample;

procedure InsertionSort(var arr: array of Integer);
var
  i, j, key: Integer;
begin
  for i := 1 to High(arr) do
  begin
    key := arr[i];
    j := i - 1;
    while (j >= 0) and (arr[j] > key) do
    begin
      arr[j + 1] := arr[j];
      j := j - 1;
    end;
    arr[j + 1] := key;
  end;
end;

var
  arr: array[0..4] of Integer = (64, 25, 12, 22, 11);
  i: Integer;
begin
  { Ordenar usando Bubble Sort }
  InsertionSort(arr);
  
  { Imprimir el array ordenado }
  for i := 0 to High(arr) do
    Write(arr[i], ' ');
  
  Writeln;
end.

{ Output: 11 12 22 25 64}
