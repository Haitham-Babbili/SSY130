clc
close all
clear all
%y=Asin(2?(k+o)/p)
samples=rand(100,1);
f0=440;
fs=16000;
A=[-1 1];
% f0=[440:100:800]
for i=1:length(f0)
xsin=sin((2*pi*f0(i)*samples)/fs);

end
h = [1,-2,3, 4, .3, 5];
x = conv(xsin,h);
hsin = x(length(h):end-length(h)+1);
% plot(hsin)
%Test with broad-band noise
lms_state = rand([1,3*fs]);	%Disturbance data
[H,w] = freqz(hsin,1,512,fs);
% plot(samples);
% plot(y);
figure('Color','white')
stem(0:numel(hsin)-1, hsin); grid on;
xlabel 'Samples', ylabel 'hsin(n) - Filter coefficients', title 'Estimated Filter hsin(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
% saveas(gcf, fullfile(pwd,'images/','h-coeffs'),'epsc')

% plot(w/fs,20*log10(abs(H)));
figure('Color','white');
subplot(2,1,1);
plot(2*w,(abs(H))); grid on;
xlabel 'Frequency ', ylabel 'Magnitude (dB)', title 'Estimated Filter Hsin(w)'
subplot(2,1,2)
plot(2*w, (angle(H))); grid on;
xlabel 'Frequency', ylabel 'Phase (degrees)'
set(gca,'LooseInset',get(gca,'TightInset'))
% saveas(gcf, fullfile(pwd,'images/','Hsin'),'epsc')