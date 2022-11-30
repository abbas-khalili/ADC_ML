clear;clc;close all;

%% Fig 5.a
load('SISO/Ch0MO11ADC1Nt1Nr1Nq4.mat')
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
% SNR = -10:30; % in dB with max value of 30 dB
rate_shan = rate(:, 3); % Shannon capcity
rate_sd = timeshare(rate(:, 1));

figure
plot(SNR,rate_shan,'-','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{1},...
    'DisplayName', 'Shannon Capacity')
hold on

legendStr = [', $N_q = 4,~b =1,~M = 11$'];
SNR = -10:3:30; % in dB with max value of 30 dB

i = 2;
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', ['Deep Learning',legendStr])

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i=3;
load('SISO/Ch0MO64ADC2Nt1Nr1Nq4.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = [', $N_q = 4,~b =2,~M = 64$'];
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', ['Deep Learning',legendStr])

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i=4;
load('SISO/Ch0MO64ADC3Nt1Nr1Nq4.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:,1));
legendStr = [', $N_q = 4,~b =3,~M = 64$'];
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', ['Deep Learning',legendStr])

grid on
set(gca, 'FontSize', 16)
axis tight;
legend('Interpreter','latex','location','nw')
xlabel('SNR [dB]','Interpreter','latex')
ylabel('Spectral Efficiency [bits/Sec/Hz]','Interpreter','latex')


%% Fig 5.b

load('SISO/Ch0MO11ADC1Nt1Nr1Nq4.mat')
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
% SNR = -10:30; % in dB with max value of 30 dB
rate_shan = rate(:, 3); % Shannon capcity
rate_sd = timeshare(rate(:, 1));

figure
plot(SNR,rate_shan,'-','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{1},...
    'DisplayName', 'Shannon Capacity')
hold on

legendStr = [', $N_q = 4,~b =1,~M = 11$'];
SNR = -10:3:30; % in dB with max value of 30 dB

i = 2;
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', ['Deep Learning',legendStr])

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i=3;
load('SISO/Ch0MO22ADC1Nt1Nr1Nq6.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = [', $N_q = 6,~b =1,~M = 22$'];
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', ['Deep Learning',legendStr])

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i=4;
load('SISO/Ch0MO37ADC1Nt1Nr1Nq8.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = [', $N_q = 8,~b =1,~M = 37$'];
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', ['Deep Learning',legendStr])

grid on
set(gca, 'FontSize', 16)
axis tight;
legend('Interpreter','latex','location','nw')
xlabel('SNR [dB]','Interpreter','latex')
ylabel('Spectral Efficiency [bits/Sec/Hz]','Interpreter','latex')

%% Fig 5.c

load('SISO/Ch0MO11ADC1Nt1Nr1Nq4.mat')
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
rate_sd = timeshare(rate(:, 1));

figure
legendStr = ['$N_q = 4,~N_r =1$'];
SNR = -10:3:30; % in dB with max value of 30 dB

i = 1;
plot(SNR, rate_sd(1:3:end),'-o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', [legendStr])
hold on

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i=2;
load('SIMO_MRC_init/Ch0MO11ADC1Nt1Nr2Nq4.mat')

SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = ['$N_q = 4,~N_r =2$'];
plot(SNR, rate_sd(1:3:end),'-+','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', [legendStr])

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i = 3;
load('SIMO_MRC_init/Ch0MO11ADC1Nt1Nr4Nq4.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = ['$N_q = 4,~N_r =4$'];
plot(SNR, rate_sd(1:3:end),'-x','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', [legendStr])



load('SISO/Ch0MO22ADC1Nt1Nr1Nq6.mat')
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
rate_sd = timeshare(rate(:, 1));

legendStr = ['$N_q = 6,~N_r =1$'];
SNR = -10:3:30; % in dB with max value of 30 dB

i = 1;
plot(SNR, rate_sd(1:3:end),'--o','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', [legendStr])
hold on

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i = 2;
% load('SIMO_SingleAntenna_init/Ch0MO22ADC1Nt1Nr2Nq6.mat')
load('SIMO_MRC_init/Ch0MO22ADC1Nt1Nr2Nq6.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = ['$N_q = 6,~N_r =2$'];
plot(SNR, rate_sd(1:3:end),'--+','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', [legendStr])

clear;
blue = [57 106 177]./255; red = [204 37 41]./255; black = [83 81 84]./255;
green = [62 150 81]./255; brown = [146 36 40]./255; purple = [107 76 154]./255;
cl_colors = {blue, red, black,green, brown, purple};
i = 3;
load('SIMO_MRC_init/Ch0MO22ADC1Nt1Nr4Nq6.mat')
% load('SIMO_SingleAntenna_init/Ch0MO22ADC1Nt1Nr4Nq6.mat')
SNR = -10:3:30; % in dB with max value of 30 dB

rate_sd = timeshare(rate(:, 1));
legendStr = ['$N_q = 6,~N_r =4$'];
plot(SNR, rate_sd(1:3:end),'--x','MarkerSize',8,'LineWidth',3, ...
    'MarkerIndices',1:4:length(SNR),'Color',cl_colors{i},...
    'DisplayName', [legendStr])


grid on
set(gca, 'FontSize', 16)
axis tight;
legend('Interpreter','latex','location','nw')
xlabel('SNR [dB]','Interpreter','latex')
ylabel('Spectral Efficiency [bits/Sec/Hz]','Interpreter','latex')
xlim([-10,30.])

