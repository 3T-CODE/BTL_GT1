%De bai : Dua vao bang so lieu hay lam cac cau sau
% cau b ) Tinh mat do quan the vi khuan V.natriegens sau 2 gio
% cau c ) Uoc luong toc do tang truong cua quan the V.natriegens tai t = 25
% cau d ) Quan the dat toc do tang truong 2*10^-3 (don vi mat do) sau khoang thoi gian bao lau

close all
clear all
%Khai bao
syms B_t B_0 t ;
%Nhap du lieu

Bt = input('Nhap phuong trinh tong quat:  B(t) = ');


% Cau b  Tinh mat do quan the vi khuan V.natriegens sau 2 gio
t_2h = input('Nhap thoi diem muon tinh mat do t =  ');
B_2h = double(subs(Bt , t , t_2h));
fprintf('Sau %.1f phut (%.1f gio) thi mat do quan the vi khuan V.natriegens la %.4f \n' , t_2h , t_2h/60 , B_2h);

%Cau c Uoc luong toc do tang truong cua quan the V.natriegens tai t = 25





