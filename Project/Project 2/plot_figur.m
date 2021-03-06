close all;
clc;
clear all;
if ~ exist(fullfile(pwd,'images'),'dir'), mkdir images; end


%% Question 2

f_s = 16000;    % Hz
% h=hchannel()

h_BB_reversedOrder_max = [.000647441;
        -3.63489e-5;
        1.99533e-5;
        -.000477628;
        -3.85194e-5;
        .00179907;
        .00190134;
        .00090054;
        .000763857;
        .00120679;
        .000701309;
        -.000228958;
        -.000705672;
        -.000921864;
        -.00111964;
        -.00124332;
        -.000650712;
        -.00027462;
        -.000236774;
        -.000463898;
        -.000995261;
        -.00109391;
        -.000969487;
        -.000879068;
        -.00166541;
        -.00259317;
        -.00277906;
        -.00242538;
        -.00175648;
        -.000829365;
        -.000567761;
        -.000739102;
        -.00127981;
        -.00173369;
        -.00133207;
        -.000754981;
        .000232262;
        .000533809;
        .000366466;
        .00027916;
        .000308424;
        .000837594;
        .00108294;
        .00139431;
        .00123353;
        .00043857;
        -.000241727;
        -.000782751;
        -.000833289;
        -.00022654;
        4.23091e-5;
        .000102519;
        .000122918;
        -.000289276;
        -.000430911;
        -.00027781;
        -.000547041;
        -.000605317;
        -.00108093;
        -.00188694;
        -.00209452;
        -.00211638;
        -.0020903;
        -.00219707;
        -.00198443;
        -.00152169;
        -.00089682;
        -.000125363;
        .000218061;
        .000267258;
        .000430709;
        .000767514;
        .00083293;
        .000643584;
        .00028945;
        .000350858;
        .000648133;
        .00144458;
        .00244328;
        .00221819;
        .00159097;
        .0016531;
        .00195066;
        .00208343;
        .00161807;
        .00113558;
        .000566107;
        .000613533;
        .00104324;
        .00079424;
        .000379815;
        -3.26232e-6;
        -7.18036e-5;
        -.000719043;
        -.00100572;
        -.00107629;
        -.00114897;
        -.00117877;
        -.00116321;
        -.000813127;
        -.000167284;
        .000832219;
        .00157034;
        .00189364;
        .00177573;
        .00146276;
        .00124948;
        .0010717;
        .00104494;
        .00143629;
        .00173495;
        .00154313;
        .00136852;
        .00112065;
        .00156072;
        .001696;
        .00164155;
        .00130445;
        .000641458;
        .000151811;
        -.000247385;
        -.000245381;
        -.000164346;
        .000435043;
        .000713775;
        .000260033;
        -.000206158;
        -8.00945e-5;
        .000208777;
        .00066332;
        .000481602;
        -6.5208e-5;
        -.000525617;
        -.00100142;
        -.00103654;
        -.000686534;
        -1.80606e-5;
        .000405943;
        1.58674e-5;
        -.000688362;
        -.0011637;
        -.000787888;
        .000290514;
        .00113505;
        .000636474;
        -.000432895;
        -.000580817;
        -.000253689;
        .000670263;
        .00133963;
        .00168371;
        .00211089;
        .00249314;
        .00246688;
        .00156621;
        .000324265;
        -.000752525;
        -.00164831;
        -.00237526;
        -.00268204;
        -.00220075;
        -.00115207;
        2.04383e-5;
        .000476263;
        .000290317;
        .000181562;
        .000485985;
        .000625446;
        -.000200787;
        -.00131331;
        -.00222809;
        -.00247006;
        -.00222483;
        -.00208526;
        -.00151522;
        -.00067526;
        -.00027874;
        -.000375885;
        -.00129033;
        -.00193142;
        -.00177103;
        -.00130056;
        -.0013296;
        -.00125115;
        -.00105221;
        -.000647802;
        .000286893;
        .000705221;
        .0011536;
        .00158346;
        .00132779;
        .000398729;
        -.00052554;
        -.001149;
        -.000670817;
        .000527795;
        .00127965;
        .00116642;
        .00092741;
        .00113384;
        .00169685;
        .00245686;
        .001888;
        .000597453;
        -.000444532;
        -.000889364;
        -.000660077;
        -.000480225;
        -.000663712;
        -.000650612;
        -.000875602;
        -.000642231;
        -3.87059e-5;
        -8.95711e-6;
        .000305924;
        .000687476;
        .000363243;
        -.00079901;
        -.00126426;
        -.000393841;
        .00154074;
        .00314321;
        .00343283;
        .00252095;
        .000547321;
        .000319775;
        .00205554;
        .00331518;
        .00419724;
        .00353583;
        .000751488;
        -.00124101;
        -.000405035;
        .00248308;
        .00462061;
        .00440576;
        .00278033;
        .000492979;
        -.00100608;
        -.00061201;
        .0005346;
        .00193925;
        .00310979;
        .0030182;
        -2.8814e-5;
        -.00442152;
        -.00566411;
        -.00366466;
        -.00174105;
        -.001206;
        -.00317012;
        -.0059643;
        -.00621918;
        -.00299398;
        .000471503;
        .00103929;
        -.000792644;
        -.00282787;
        -.00307923;
        -.00302664;
        -.00161638;
        .00208281;
        .00298738;
        .00285292;
        .0047966;
        .00283478;
        .00162784;
        .00420368;
        .00793046;
        .00997283;
        .00389983;
        -.00201859;
        -.00139006;
        .00222552;
        .0111845;
        .0161785;
        .00889661;
        .00302252;
        .000694591;
        -.00394777;
        -.00481946;
        .00084498;
        .00621173;
        .00188993;
        -.0121628;
        -.0144574;
        -.000481941;
        .0136573;
        .0180817;
        .00488765;
        -.0185161;
        -.0299138;
        -.0215036;
        -.0100662;
        -.0163327;
        -.023756;
        -.0214363;
        -.0253801;
        -.00801681;
        .0221656;
        .0394;
        .0334961;
        .011861;
        4.55421e-7;
        -.00839102;
        -.00340085;
        .00447564;
        -.000294879;
        -.00498842;
        -.00276394;
        .000915413;
        -6.29117e-5;
        -.00203013;
        -.00134873;
        -.00010232;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
       0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0;
        0];
    
h_sin_reversedOrder_max = [-1.5306e-5;
        6.19622e-5;
        -.000235864;
        -.000295074;
        7.60288e-5;
        .000126119;
        -.000147745;
        6.82246e-5;
        .000180837;
        .000292643;
        .000105106;
        3.45441e-5;
        -9.22413e-5;
        -.00021689;
        -.000141103;
        3.50412e-6;
        .000360872;
        -1.20919e-5;
        1.37092e-5;
        -8.29074e-6;
        -5.65196e-5;
        -5.2301e-5;
        .000289828;
        .000293614;
        .000254638;
        .000208851;
        .000126785;
        -4.90555e-5;
        -.000188697;
        -.000357869;
        -.000395226;
        -.000358724;
        -.000242617;
        -.000121198;
        -.000253651;
        -.000522017;
        -.000866695;
        -.00106352;
        -.00110673;
        -.00102671;
        -.0008181;
        -.000678247;
        -.000362944;
        .000109141;
        .000560389;
        .00094883;
        .00119395;
        .00125073;
        .00115001;
        .00101565;
        .000979391;
        .000953786;
        .00079608;
        .000568722;
        .000316398;
        .000235887;
        .000334139;
        .000499181;
        .000496637;
        .000320774;
        -1.61604e-5;
        -.000345092;
        -.000568862;
        -.000780402;
        -.000868429;
        -.000967233;
        -.00111872;
        -.00125683;
        -.00137281;
        -.00139083;
        -.00119409;
        -.000977894;
        -.000650551;
        -.00042745;
        -.000363023;
        -.000329901;
        -.000381433;
        -.000229111;
        3.80258e-5;
        .000384624;
        .000530031;
        .000432557;
        .000356036;
        .000302266;
        .000568667;
        .00103627;
        .00133792;
        .00141765;
        .00133923;
        .00119342;
        .00109938;
        .00108343;
        .000958178;
        .000651241;
        .000282499;
        6.75951e-5;
        7.09597e-5;
        .000191026;
        .000282311;
        .000229683;
        3.59395e-5;
        -.000177278;
        -.000221263;
        -.000120425;
        -5.41205e-5;
        -.000131498;
        -.000287992;
        -.000489012;
        -.000355046;
        -9.25933e-6;
        .000267853;
        .000313581;
        .00013768;
        -.000116999;
        -.000293355;
        -.000106307;
        .000124146;
        .000322525;
        .000351634;
        .00019016;
        6.28769e-5;
        6.3102e-5;
        .000150433;
        .000220775;
        3.71613e-5;
        -.000303171;
        -.000526503;
        -.000664459;
        -.000535599;
        -.000295717;
        -4.70402e-5;
        .00015489;
        .000166375;
        .000167789;
        .000195474;
        .000156214;
        .000173024;
        .000133305;
        2.59231e-5;
        -.000111618;
        -.000255998;
        -.000367599;
        -.000416072;
        -.000442167;
        -.00051595;
        -.000696757;
        -.000950483;
        -.000957026;
        -.00082454;
        -.000524338;
        -.000205374;
        .000103273;
        .000386625;
        .000650037;
        .000917168;
        .00098629;
        .000994;
        .000871179;
        .00082781;
        .000793351;
        .000838959;
        .000877686;
        .000670829;
        .000374973;
        9.16772e-5;
        1.59549e-5;
        1.17113e-5;
        .000263511;
        .000495388;
        .00065191;
        .000838108;
        .000886411;
        .000959861;
        .000913658;
        .000895673;
        .000900812;
        .000855506;
        .000795685;
        .000728865;
        .000467498;
        6.05107e-5;
        -.000343376;
        -.000671269;
        -.000889584;
        -.00109603;
        -.00118912;
        -.00126915;
        -.00115876;
        -.000856393;
        -.000525244;
        -.000290542;
        -.000148386;
        -.000101715;
        1.42555e-5;
        .000268388;
        .000507065;
        .000696589;
        .000601017;
        .000218221;
        -3.99822e-5;
        -2.84165e-5;
        .000279625;
        .000787149;
        .00102292;
        .0010755;
        .000950314;
        .000791046;
        .000729029;
        .000588442;
        .000338405;
        -2.69407e-5;
        -.000299016;
        -.000442822;
        -.00037708;
        -.000199672;
        -.000173168;
        -.000279738;
        -.000534997;
        -.000714873;
        -.000728919;
        -.000619223;
        -.000439393;
        -.000422149;
        -.000573117;
        -.000756483;
        -.000639838;
        -.00012278;
        .000631316;
        .0011533;
        .0010346;
        .000593701;
        .000122967;
        .000161863;
        .000832466;
        .00163959;
        .00212733;
        .00187945;
        .00110846;
        .000417131;
        .000172427;
        .000494282;
        .000920949;
        .000858666;
        .000406298;
        -.000405583;
        -.000952365;
        -.000825827;
        -.000247961;
        .000620917;
        .000881987;
        .000265898;
        -.00115164;
        -.00265873;
        -.00341985;
        -.00341751;
        -.00317105;
        -.00331044;
        -.00388068;
        -.0043842;
        -.00412484;
        -.00304112;
        -.00172273;
        -.000868346;
        -.000920169;
        -.0015431;
        -.00190938;
        -.00162724;
        -.000539525;
        .00108389;
        .00244902;
        .00311347;
        .00336739;
        .00334833;
        .0037378;
        .00463944;
        .00501293;
        .00443298;
        .00249374;
        .000564135;
        .0005305;
        .00228028;
        .00501505;
        .00659828;
        .00522262;
        .00225373;
        -.000553806;
        -.00182542;
        -.000966273;
        2.13075e-5;
        -.000718516;
        -.00297662;
        -.00505598;
        -.00371276;
        .000901408;
        .00476295;
        .00482857;
        -.000488876;
        -.00806453;
        -.0135321;
        -.0150835;
        -.0138323;
        -.0135826;
        -.0141689;
        -.013203;
        -.00936684;
        -.000443954;
        .0104727;
        .0180237;
        .0191005;
        .0140149;
        .00748687;
        .00234517;
        .000232982;
        .000414029;
        .00036635;
        9.28123e-6;
        -.000125269;
        -5.56074e-5;
        -7.35736e-5;
        -.000162515;
        -.000364829;
        -.000502697;
        -.000520264;
        -.000508273;
        -.000500841;
        -.000716165;
        -.00102336;
        -.00128236;
        -.00138077;
        -.0013055;
        -.00109981;
        -.000961812;
        -.000852896;
        -.000797911;
        -.000807171;
        -.00074151;
        -.000615363;
        -.000529962;
        -.000411716;
        -.000259758;
        -.000172815;
        5.91299e-5;
        .000329576;
        .000530601;
        .00071913;
        .000744226;
        .000761494;
        .000846687;
        .000989844;
        .00117238;
        .00125213;
        .00122436];


h = flipud(h_sin_reversedOrder_max);
[H,w] = freqz(h,1,512,f_s); %'whole',


figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'hsin(n) - Filter coefficients', title 'Estimated Filter hsin(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs'),'epsc')

figure('Color','white');
subplot(2,1,1);
plot(2*w,(abs(H))); grid on;
xlabel 'Frequency', ylabel 'Magnitude', title 'Estimated Filter Hsin(w)'
subplot(2,1,2)
plot(2*w,(angle(H))); grid on;
xlabel 'Frequency ', ylabel 'Phase (degrees)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','Hsin'),'epsc')





%% Question 3

f_s = 16000;    % Hz
h = [1 0 0 0.5];
[H,w] = freqz(h,1,512,f_s); %'whole',

figure('Color','white');
subplot(2,1,1);
plot(w/f_s,20*log10(abs(H))); grid on;
xlabel 'Normalized Frequency (\times \pi [rad/sample])', ylabel 'Magnitude (dB)', title 'Frequency response H(w) of h = [1, 0, 0, 0.5]'
subplot(2,1,2)
plot(w/f_s, 180/pi*wrapToPi(phase(H))); grid on;
xlabel 'Normalized Frequency (\times \pi [rad/sample])', ylabel 'Phase (degrees)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','H-echo'),'epsc')


%% Question 6


f_s = 16000;    % Hz

h = flipud(h_BB_reversedOrder_max);
figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'hBB(n) - Filter coefficients', title 'Estimated Filter hBB(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs-SIN-MAX'),'epsc')

h = flipud(h_reversedOrder_100);
figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'hBB(n) - Filter coefficients', title 'Estimated Filter hBB(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs-SIN-100'),'epsc')

h = flipud(h_reversedOrder_10);
figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'h(n) - Filter coefficients', title 'Estimated Filter h(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs-SIN-10'),'epsc')

[H,w] = freqz(h,1,512,f_s); %'whole',
figure('Color','white');
subplot(2,1,1);
plot(w/f_s,20*log10(abs(H))); grid on;
xlabel 'Normalized Frequency (\times \pi [rad/sample])', ylabel 'Magnitude (dB)', title 'Estimated Filter H(w)'
subplot(2,1,2)
plot(w/f_s, 180/pi*wrapToPi(angle(H))); grid on;
xlabel 'Normalized Frequency (\times \pi [rad/sample])', ylabel 'Phase (degrees)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','H-SIN-MAX'),'epsc')

%%%%%%%%%%%%

h = flipud(h_BB_reversedOrder_max);
figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'h(n) - Filter coefficients', title 'Estimated Filter h(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs-SIN-MAX-inc'),'epsc')

h = flipud(h_reversedOrder_100_inc);
figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'h(n) - Filter coefficients', title 'Estimated Filter h(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs-SIN-100-inc'),'epsc')

h = flipud(h_reversedOrder_10_inc);
figure('Color','white')
stem(0:numel(h)-1, h); grid on;
xlabel 'Samples', ylabel 'h(n) - Filter coefficients', title 'Estimated Filter h(n)'
set(gca,'LooseInset',get(gca,'TightInset'))
saveas(gcf, fullfile(pwd,'images/','h-coeffs-SIN-10-inc'),'epsc')
