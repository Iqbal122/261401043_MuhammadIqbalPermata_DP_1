program Soal1_261401043_MuhammadIqbalPermata;
uses crt;
var
  N, i,  persenDiskon: integer;
  hargaBarang, totalAwal, besarDiskon, totalAkhir: real;

begin
  clrscr;
  { 1. masukkan jumlah barang (N) }
  write('Masukkan jumlah barang yang dibeli (N): ');
  readln(N);
  writeln;

  totalAwal := 0;

  { 2. Perulangan for-to-do untuk menginput harga barang ke-1 hingga ke-N }
  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp ');
    readln(hargaBarang);
    totalAwal := totalAwal + hargaBarang;
  end;

  { 3. Menentukan persentase diskon dengan kondisi if-else }
  if (totalAwal < 100000) then
  begin
    persenDiskon := 0;
  end
  else if (totalAwal >= 100000) and (totalAwal < 500000) then
  begin
    persenDiskon := 10;
  end
  else { totalAwal >= 500000 }
  begin
    persenDiskon := 20;
  end;

  { Menghitung nilai rupiah diskon dan total bayar akhir }
  besarDiskon := totalAwal * (persenDiskon / 100);
  totalAkhir := totalAwal - besarDiskon;

  { 4. Menampilkan rincian belanja akhir }
  writeln;
  writeln('Jumlah Barang        : ', N, ' item');
  writeln('Total Sebelum Diskon : Rp', totalAwal:0:0);
  writeln('Besar Diskon (', persenDiskon, '%)  : Rp', besarDiskon:0:0);
  writeln('TOTAL BAYAR AKHIR    : Rp', totalAkhir:0:0);
  readln;
end.