clear; clc;close all
% load('init_mod_lin_M11_nq4_b1_t.mat')
% load('init_mod_lin_M22_nq6_b1_t.mat')
% load('init_mod_lin_M37_nq8_b1_t.mat')
% load('init_mod_lin_M64_nq4_b2_t.mat')
% load('init_mod_lin_M64_nq4_b3_t.mat')

t = repelem(t,  2^b-1,1) + a*repmat( [-2^(b-1)+1:2^(b-1)-1]',length(t),1);
V = repelem(V,  2^b-1,1);

x = -5:0.01:5;
for iv =1:size(V,1)
    y = -(x*V(iv,1) + t(iv))/V(iv,2);
    plot(x,y,'k','LineWidth',2);
    hold on
end

for ix =1:size(X,2)
       plot(X(1,ix),X(2,ix),'rx','MarkerSize',8,'LineWidth',2);
end

xlim([min(X(1,:)),max(X(1,:))])
ylim([min(X(2,:)),max(X(2,:))])

