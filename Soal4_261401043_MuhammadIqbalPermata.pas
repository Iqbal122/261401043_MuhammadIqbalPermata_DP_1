program Soal4_261401043_MuhammadIqbalPermata;
uses crt;
var
  Pilihan : integer;
  A, B    : real;
  AI, BI  : longint;
  Lagi    : char;

begin
clrscr;
  repeat
    { 1. Tampilkan menu }
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln('================================');
    write('Pilih operasi (1-5) : ');
    readln(Pilihan);

    if (Pilihan >= 1) and (Pilihan <= 5) then
    begin
      { 2. Minta dua operand }
      if Pilihan = 5 then
      begin
        { DIV dan MOD hanya berlaku untuk bilangan bulat }
        write('Masukkan angka pertama (bulat) : ');
        readln(AI);
        write('Masukkan angka kedua   (bulat) : ');
        readln(BI);
      end
      else
      begin
        write('Masukkan angka pertama : ');
        readln(A);
        write('Masukkan angka kedua   : ');
        readln(B);
      end;

      writeln;
      write('Hasil : ');

      { Hitung dan tampilkan hasil }
      case Pilihan of
        1: writeln(A:0:2, ' + ', B:0:2, ' = ', A + B:0:2);
        2: writeln(A:0:2, ' - ', B:0:2, ' = ', A - B:0:2);
        3: writeln(A:0:2, ' x ', B:0:2, ' = ', A * B:0:2);
        4: if B = 0 then
             writeln('Error! Pembagian dengan nol tidak diperbolehkan.')
           else
             writeln(A:0:2, ' / ', B:0:2, ' = ', A / B:0:2);
        5: if BI = 0 then
             writeln('Error! Pembagian dengan nol tidak diperbolehkan.')
           else
           begin
             writeln(AI, ' DIV ', BI, ' = ', AI div BI);
             writeln('       ', AI, ' MOD ', BI, ' = ', AI mod BI);
           end;
      end;
    end
    else
      writeln('Pilihan tidak valid! Pilih angka 1 sampai 5.');

    { 3. Tanya apakah ingin mengulang }
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T) : ');
    readln(Lagi);
    writeln;
  until (Lagi = 'T') or (Lagi = 't');

  writeln('Terima kasih telah menggunakan kalkulator ini.');
end.