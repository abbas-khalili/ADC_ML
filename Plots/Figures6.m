%% Fig6
clear;clc;close all;

load('SISO/Ch0MO11ADC1Nt1Nr1Nq4.mat')

subplot(3,3,1)
hold off
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
hold off

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
hold off

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
load('SISO/Ch0MO64ADC2Nt1Nr1Nq4.mat')

b = 2;

subplot(3,3,4)
hold off

snr = 0;
Vt = squeeze(V(11,:,:))*H;
tt = t(11,:);
at = a(11);
Ct = squeeze(Const(11,:,:));
PXplot = squeeze(Px(11,:,:));
tt = repelem(tt',  2^b-1,1) + at*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(tt),1);
Vt = repelem(Vt,  2^b-1,1);

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
hold off

snr = 15;
Vt = squeeze(V(26,:,:))*H;
tt = t(26,:);
at = a(26);
Ct = squeeze(Const(26,:,:));
PXplot = squeeze(Px(26,:,:));
tt = repelem(tt',  2^b-1,1) + at*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(tt),1);
Vt = repelem(Vt,  2^b-1,1);




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
hold off

snr = 25;
Vt = squeeze(V(36,:,:))*H;
tt = t(36,:);
at = a(36);
Ct = squeeze(Const(36,:,:));
PXplot = squeeze(Px(36,:,:));
tt = repelem(tt',  2^b-1,1) + at*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(tt),1);
Vt = repelem(Vt,  2^b-1,1);




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
load('SISO/Ch0MO64ADC3Nt1Nr1Nq4.mat')

b = 3;

subplot(3,3,7)
hold off

snr = 0;
Vt = squeeze(V(11,:,:))*H;
tt = t(11,:);
at = a(11);
Ct = squeeze(Const(11,:,:));
PXplot = squeeze(Px(11,:,:));
tt = repelem(tt',  2^b-1,1) + at*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(tt),1);
Vt = repelem(Vt,  2^b-1,1);

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
hold off

snr = 15;
Vt = squeeze(V(26,:,:))*H;
tt = t(26,:);
at = a(26);
Ct = squeeze(Const(26,:,:));
PXplot = squeeze(Px(26,:,:));
tt = repelem(tt',  2^b-1,1) + at*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(tt),1);
Vt = repelem(Vt,  2^b-1,1);




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
hold off

snr = 25;
Vt = squeeze(V(36,:,:))*H;
tt = t(36,:);
at = a(36);
Ct = squeeze(Const(36,:,:));
PXplot = squeeze(Px(36,:,:));
tt = repelem(tt',  2^b-1,1) + at*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(tt),1);
Vt = repelem(Vt,  2^b-1,1);




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





