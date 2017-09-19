function [sol, val] = gabpEval(sol,options)
% val - the fittness of this individual
% sol - the individual, returned to allow for Lamarckian evolution
% options - [current_generation]
% p=[1000 0 1;800 200 1;600 400 1;400 600 1;1000 0 3;800 200 3;600 400 3;400 600 3;...
%     1000 0 10;800 200 10;600 400 10;400 600 10;1000 0 30;800 200 30;600 400 30;400 600 30;...
%     1000 0 100;800 200 100;600 400 100;400 600 100;1000 0 365;800 200 365;600 400 365;400 600 365]';
% t=[0.79;1.75;2.37;5.79;2.16;4.77;8.17;19.56;1.15;3.53;6.98;8.10;...
%     0.90;1.72;2.04;2.15;0.44;0.60;0.77;0.86;0.19;0.22;0.23;0.27]';
p = [1000 0 3;970 30 3;950 50 3;930 70 3;900 100 3;870 130 3;850 150 3;830 170 3;800 200 3;...
1000 0 7;970 30 7;950 50 7;930 70 7;900 100 7;870 130 7;850 150 7;830 170 7;800 200 7;...
1000 0 28;970 30 28;950 50 28;930 70 28;900 100 28;870 130 28;850 150 28;830 170 28;800 200 28]';
t = [3.63;3.91;3.88;3.83;3.34;2.23;2.15;2.15;1.83;...
4.41;5.33;4.72;4.64;3.74;3.10;2.88;2.66;2.67;...
4.95;5.71;5.01;4.46;3.76;3.77;3.77;2.98;2.90]';

[pn,ps] = mapminmax(p);%normalizing input data
[tn,ts] = mapminmax(t);%normalizing output data
P=pn;
T=tn;
R=size(P,1);
S2=size(T,1);
S1=7;%The number of hidden layer neurons
S=R*S1+S1*S2+S1+S2;
for i=1:S
   x(i)=sol(i);
end;
[W1, B1, W2, B2, P, T, A1, A2, SE, val]=gadecod(x);
