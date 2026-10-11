program Soal7_261401043_MuhammadIqbalPermata;
uses crt;
var
  Kode  : char;
  Lama  : longint;
  Tarif : longint;
  Valid : boolean;
  Jenis : string;

begin
  clrscr;
  writeln('===== TARIF PARKIR =====');
  writeln('M = Mobil');
  writeln('K = Motor');
  writeln('B = Bus');
  writeln('========================');
  write('Masukkan kode kendaraan (M/K/B) : ');
  readln(Kode);
  Kode := upcase(Kode);   { agar huruf kecil juga diterima }
  write('Masukkan lama parkir (jam)      : ');
  readln(Lama);

  Valid := true;
  Tarif := 0;
  Jenis := '';

  if Lama < 1 then
    Valid := false
  else
    case Kode of
      'M': begin
             Jenis := 'Mobil';
             if Lama > 10 then
               Tarif := 30000
             else
               Tarif := 5000 + (Lama - 1) * 3000;
           end;
      'K': begin
             Jenis := 'Motor';
             if Lama > 10 then
               Tarif := 10000
             else
               Tarif := 2000 + (Lama - 1) * 1000;
           end;
      'B': begin
             Jenis := 'Bus';
             if Lama > 10 then
               Tarif := 50000
             else
               Tarif := 10000 + (Lama - 1) * 5000;
           end;
    else
      Valid := false;
    end;

  writeln;
  if Valid then
  begin
    writeln('Jenis kendaraan : ', Jenis);
    writeln('Lama parkir     : ', Lama, ' jam');
    if Lama > 10 then
      writeln('Keterangan      : Tarif Maksimal Flat');
    writeln('Total tarif     : Rp', Tarif);
  end
  else
    writeln('Input tidak valid! Kode harus M/K/B dan lama parkir minimal 1 jam.');
end.