program SortExample;

procedure SelectionSort(var arr: array of Integer);
var
  i, j, minIdx, temp: Integer;
begin
  for i := 0 to High(arr) - 1 do
  begin
    minIdx := i;
    for j := i + 1 to High(arr) do
      if arr[j] < arr[minIdx] then
        minIdx := j;
    if minIdx <> i then
    begin
      temp := arr[i];
      arr[i] := arr[minIdx];
      arr[minIdx] := temp;
    end;
  end;
end;

var
  arr: array[0..4] of Integer = (64, 25, 12, 22, 11);
  i: Integer;
begin
  { Ordenar usando Bubble Sort }
  SelectionSort(arr);
  
  { Imprimir el array ordenado }
  for i := 0 to High(arr) do
    Write(arr[i], ' ');
  
  Writeln;
end.

{ Output: 11 12 22 25 64 }
