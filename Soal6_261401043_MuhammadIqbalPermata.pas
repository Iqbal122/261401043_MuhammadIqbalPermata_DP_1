program Soal6_261401043_MuhammadIqbalPermata;
uses crt;
var

  Tugas, UTS, UAS    : real;
  Kehadiran, NilaiAkhir : real;
  Indeks             : char;

begin
clrscr;
  { Input }
  write('Masukkan Nilai Tugas        : ');
  readln(Tugas);
  write('Masukkan Nilai UTS          : ');
  readln(UTS);
  write('Masukkan Nilai UAS          : ');
  readln(UAS);
  write('Masukkan Kehadiran (%)      : ');
  readln(Kehadiran);

  { 1. Hitung Nilai Akhir }
  NilaiAkhir := (0.30 * Tugas) + (0.30 * UTS) + (0.40 * UAS);

  { 3. Tentukan Indeks Huruf }
  if NilaiAkhir >= 85 then
    Indeks := 'A'
  else if NilaiAkhir >= 75 then
    Indeks := 'B'
  else if NilaiAkhir >= 60 then
    Indeks := 'C'
  else if NilaiAkhir >= 50 then
    Indeks := 'D'
  else
    Indeks := 'E';

  { Tampilkan hasil }
  writeln;
  writeln('===== HASIL AKHIR =====');
  writeln('Nilai Akhir  : ', NilaiAkhir:0:2);
  writeln('Indeks Huruf : ', Indeks);
  writeln('Kehadiran    : ', Kehadiran:0:2, '%');

  { 2. Tentukan status kelulusan }
  write('Status       : ');
  if (NilaiAkhir >= 60) and (Kehadiran >= 80) then
    writeln('LULUS')
  else
    writeln('TIDAK LULUS');
end.