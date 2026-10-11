program Soal3_261401043_MuhammadIqbalPermata;
uses crt;
var
  N, Pilihan, i: integer;

begin
  clrscr;
  { 1. Minta masukan }
  write('Masukkan nilai N              : ');
  readln(N);
  write('Pilih kategori (1=Ganjil, 2=Genap) : ');
  readln(Pilihan);
  writeln;
  writeln('Hasil deret:');

  { 2. While loop dari 1 sampai N }
  i := 0;
  while i < N do
  begin
    i := i + 1;

    { 3. Lewati jika tidak sesuai kategori }
    if (Pilihan = 1) and (i mod 2 = 0) then
      continue;
    if (Pilihan = 2) and (i mod 2 <> 0) then
      continue;

    { 4. Lewati jika kelipatan 5 }
    if i mod 5 = 0 then
      continue;

    { 5. Tampilkan angka hasil penyaringan }
    write(i, ' ');
  end;

  writeln;
end.