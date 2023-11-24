%De bai : Dua vao bang so lieu hay lam cac cau sau
%Phuong trinh : Bt = B0*(5/3)^(t/)
% cau b ) Tinh mat do quan the vi khuan V.natriegens sau 2 gio
% cau c ) Uoc luong toc do tang truong cua quan the V.natriegens tai t = 25
% cau d ) Quan the dat toc do tang truong 2*10^-3 (don vi mat do / s) sau khoang thoi gian bao lau


%Reset
close all
clear all

%Khai bao
syms Bt  t ;

%Nhap du lieu
Bt = input('Nhap phuong trinh tong quat:  B(t) = ');

% Cau b)  Tinh mat do quan the vi khuan V.natriegens sau 2 gio
t_2h = input('Nhap thoi diem muon tinh mat do t(gio) =  ');
B_2h = double(subs(Bt , t , t_2h*60));
fprintf('Sau %.0f gio thi mat do quan the vi khuan V.natriegens la %.4f \n' , t_2h  , B_2h);

%Cau c) Uoc luong toc do tang truong cua quan the V.natriegens tai t = 25
t_25p = input('Nhap thoi diem muon tinh toc do tang truong t(phut) = ');
dB_dt = diff( Bt , t );
dB_dt_25p  = double(subs( dB_dt , t , t_25p ));
fprintf('Tai thoi diem t = %.0f phut thi toc do tang truong cua quan the V.natriegens uoc tinh la %.4f \n', t_25p , dB_dt_25p  );

%Cau d) Quan the dat toc do tang truong 2*10^-3 (don vi mat do / s) sau khoang thoi gian bao lau
dB_dt = input('Nhap toc do tang truong can tim V_tang_truong  = ');
eqn = diff(Bt,t) == dB_dt ;
t = double(solve(eqn, t));
fprintf('Quan the dat toc do tang truong 2*10^-3 (don vi mat do / s) trong khoang thoi gian  t = %.4f \n' , t);

%Cau e) Ve do thi trong khoang thoi gian tu 0 den 80 phut
t1=input('Nhap thoi diem bat dau t1= ');
t2=input('Nhap thoi diem ket thuc t2= ');
figure;
ezplot(Bt,t,[t1 , t2]);
xlabel('t (phut)');
ylabel('Bt ()');
title(['Do thi bieu thi tuong doi toc do tang truong cua vi khuan V.natriegens trong khoang thoi gian tu ' ,num2str(t1) ,' phut toi ',num2str(t2) ,' phut']);

