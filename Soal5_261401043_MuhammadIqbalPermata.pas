program Soal5_261401043_MuhammadIqbalPermata;
uses crt;
var
  M, N, i, j       : integer;
  Nilai, Total     : real;
  Rata             : real;
  JmlLulus, JmlTidak : integer;

begin
clrscr;
  { 1. Minta input M dan N }
  write('Masukkan jumlah mahasiswa (M) : ');
  readln(M);
  write('Masukkan jumlah tugas (N)     : ');
  readln(N);
  writeln;

  JmlLulus := 0;
  JmlTidak := 0;

  writeln('===== REKAPITULASI NILAI =====');

  { 2. Nested loop: luar = mahasiswa, dalam = tugas }
  for i := 1 to M do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    Total := 0;

    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ' : ');
      readln(Nilai);
      Total := Total + Nilai;
    end;

    { 3. Hitung rata-rata dan tentukan kelulusan }
    Rata := Total / N;

    { 4a. Tampilkan rata-rata dan status tiap mahasiswa }
    write('  Rata-rata       : ', Rata:0:2, '  -> ');
    if Rata >= 65 then
    begin
      writeln('LULUS');
      JmlLulus := JmlLulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      JmlTidak := JmlTidak + 1;
    end;
  end;

  { 4b. Tampilkan total LULUS dan TIDAK LULUS }
  writeln;
  writeln('==============================');
  writeln('Total mahasiswa LULUS       : ', JmlLulus);
  writeln('Total mahasiswa TIDAK LULUS : ', JmlTidak);
end.
