program Soal2_261401043_MuhammadIqbalPermata;
uses crt;
var 
  sandiRahasia, inputSandi: string;
  kesempatan: integer;
begin
  clrscr;
  sandiRahasia := 'pascal123';
  kesempatan := 0;

  repeat
    write('Masukkan Password = '); 
    readln(inputSandi);
    inc(kesempatan);// Wajib menambah hitungan percobaan (+1) setiap kali memasukkan sandi
    writeln;

    if inputSandi = sandiRahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break; // Keluar dari perulangan secara paksa jika kata sandi benar
      end
      else if kesempatan < 3 then
      begin
        writeln('Kata sandi salah. Sisa kesempatan: ', 3 - kesempatan);
        writeln;
      end
    else
    begin
     writeln('Akses Ditolak! Akun Terkunci.');
    end;
    until kesempatan = 3; // Loop berhenti otomatis jika sudah 3 kali mencoba
end.