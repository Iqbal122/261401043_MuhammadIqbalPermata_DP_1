program Soal8_261401043_MuhammadIqbalPermata;
uses crt;
const
  JamStandar  = 40;
  TarifLembur = 20000;
  BonusC      = 100000;

var
  Gol        : char;
  JamKerja   : longint;
  JamLembur  : longint;
  GajiPokok  : longint;
  Lembur     : longint;
  Bonus      : longint;
  TotalGaji  : longint;
  Valid      : boolean;

begin
clrscr;
  writeln('===== PERHITUNGAN GAJI KARYAWAN =====');
  writeln('Golongan A : Rp1.500.000');
  writeln('Golongan B : Rp2.000.000');
  writeln('Golongan C : Rp2.500.000');
  writeln('=====================================');
  write('Masukkan golongan (A/B/C)      : ');
  readln(Gol);
  Gol := upcase(Gol);
  write('Masukkan total jam kerja/minggu : ');
  readln(JamKerja);

  Valid := true;
  GajiPokok := 0;

  if JamKerja < 0 then
    Valid := false
  else
    case Gol of
      'A': GajiPokok := 1500000;
      'B': GajiPokok := 2000000;
      'C': GajiPokok := 2500000;
    else
      Valid := false;
    end;

  if not Valid then
    writeln('Input tidak valid! Golongan harus A/B/C dan jam kerja tidak boleh negatif.')
  else
  begin
    { 1. Hitung lembur }
    if JamKerja > JamStandar then
      JamLembur := JamKerja - JamStandar
    else
      JamLembur := 0;
    Lembur := JamLembur * TarifLembur;

    { 2. Bonus khusus golongan C }
    Bonus := 0;
    if (Gol = 'C') and (JamKerja > 50) then
      Bonus := BonusC;

    TotalGaji := GajiPokok + Lembur + Bonus;

    { Tampilkan rincian }
    writeln;
    writeln('========== RINCIAN GAJI ==========');
    writeln('Golongan        : ', Gol);
    writeln('Total jam kerja : ', JamKerja, ' jam');
    writeln('Jam lembur      : ', JamLembur, ' jam');
    writeln('----------------------------------');
    writeln('Gaji Pokok      : Rp', GajiPokok);
    writeln('Lembur          : Rp', Lembur);
    writeln('Bonus           : Rp', Bonus);
    writeln('----------------------------------');
    writeln('Total Gaji Akhir: Rp', TotalGaji);
  end;
end.