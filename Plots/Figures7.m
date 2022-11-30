%% Fig7

clear;clc;close all;
load('SISO/Ch0MO11ADC1Nt1Nr1Nq4.mat')

subplot(3,3,1)

snr = 0;
Vt = squeeze(V(11,:,:))*H;
tt = t(11,:);
Ct = squeeze(Const(11,:,:));
PXplot = squeeze(Px(11,:,:));


x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])

subplot(3,3,2)

snr = 15;
Vt = squeeze(V(26,:,:))*H;
tt = t(26,:);
Ct = squeeze(Const(26,:,:));
PXplot = squeeze(Px(26,:,:));




x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])

subplot(3,3,3)

snr = 25;
Vt = squeeze(V(36,:,:))*H;
tt = t(36,:);
Ct = squeeze(Const(36,:,:));
PXplot = squeeze(Px(36,:,:));




x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])


%
clear
load('SISO/Ch0MO22ADC1Nt1Nr1Nq6.mat')

subplot(3,3,4)

snr = 0;
Vt = squeeze(V(11,:,:))*H;
tt = t(11,:);
Ct = squeeze(Const(11,:,:));
PXplot = squeeze(Px(11,:,:));


x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])

subplot(3,3,5)

snr = 15;
Vt = squeeze(V(26,:,:))*H;
tt = t(26,:);
Ct = squeeze(Const(26,:,:));
PXplot = squeeze(Px(26,:,:));




x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])

subplot(3,3,6)

snr = 25;
Vt = squeeze(V(36,:,:))*H;
tt = t(36,:);
Ct = squeeze(Const(36,:,:));
PXplot = squeeze(Px(36,:,:));




x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])


%
%
clear
load('SISO/Ch0MO37ADC1Nt1Nr1Nq8.mat')

subplot(3,3,7)

snr = 0;
Vt = squeeze(V(11,:,:))*H;
tt = t(11,:);
Ct = squeeze(Const(11,:,:));
PXplot = squeeze(Px(11,:,:));


x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])

subplot(3,3,8)

snr = 15;
Vt = squeeze(V(26,:,:))*H;
tt = t(26,:);
Ct = squeeze(Const(26,:,:));
PXplot = squeeze(Px(26,:,:));




x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])

subplot(3,3,9)

snr = 25;
Vt = squeeze(V(36,:,:))*H;
tt = t(36,:);
Ct = squeeze(Const(36,:,:));
PXplot = squeeze(Px(36,:,:));




x = -5:0.01:5;
y = zeros(1,length(x));
for iv =1:size(Vt,1)
    y = -(x*Vt(iv,1) + tt(iv))/Vt(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end


for ix =1:size(Ct,1)
    if PXplot(ix)>1e-4
        plot(Ct(ix,1),Ct(ix,2),'rx','MarkerSize',8,'LineWidth',2);
    end
end
axis tight;
str = ['SNR $=',num2str(snr), '$ [dB]'];
title(str,'Interpreter', 'Latex');
set(gca,'fontsize',18)

xlim([min(Ct(:,1))-0.3,max(Ct(:,1))+0.3])
ylim([min(Ct(:,2))-0.3,max(Ct(:,2))+0.3])


%

