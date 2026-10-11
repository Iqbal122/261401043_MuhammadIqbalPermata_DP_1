program Soal9_261401043_MuhammadIqbalPermata;
uses crt;
var
  Tahun, Bulan, JmlHari : integer;
  Kabisat               : boolean;
  NamaBulan             : string;
  ValidBulan            : boolean;

begin
clrscr;
  { 1. Minta input }
  write('Masukkan tahun               : ');
  readln(Tahun);
  write('Masukkan nomor bulan (1-12)  : ');
  readln(Bulan);

  writeln;

  if (Bulan < 1) or (Bulan > 12) or (Tahun < 1) then
    writeln('Input tidak valid! Tahun harus positif dan bulan antara 1 sampai 12.')
  else
  begin
    { 2. Cek tahun kabisat }
    Kabisat := (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0));

    { 3. Tentukan jumlah hari }
    case Bulan of
      1, 3, 5, 7, 8, 10, 12 : JmlHari := 31;
      4, 6, 9, 11           : JmlHari := 30;
      2                     : if Kabisat then
                                 JmlHari := 29
                               else
                                 JmlHari := 28;
    end;

    case Bulan of
      1  : NamaBulan := 'Januari';
      2  : NamaBulan := 'Februari';
      3  : NamaBulan := 'Maret';
      4  : NamaBulan := 'April';
      5  : NamaBulan := 'Mei';
      6  : NamaBulan := 'Juni';
      7  : NamaBulan := 'Juli';
      8  : NamaBulan := 'Agustus';
      9  : NamaBulan := 'September';
      10 : NamaBulan := 'Oktober';
      11 : NamaBulan := 'November';
      12 : NamaBulan := 'Desember';
    end;

    { Tampilkan hasil }
    write('Tahun ', Tahun, ' adalah ');
    if Kabisat then
      writeln('tahun KABISAT.')
    else
      writeln('BUKAN tahun kabisat.');
    writeln('Bulan ', NamaBulan, ' ', Tahun, ' memiliki ', JmlHari, ' hari.');
  end;
end.