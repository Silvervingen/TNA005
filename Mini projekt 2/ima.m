function []=ima(A)
% Function to show digits in matrix form
% Call with: ima(A)
% Translates matrix to become nonnegative
% and scales to interval [0,20]

a1=squeeze(A);
a1=(a1-min(min(a1))*ones(size(a1)));
a1=(20/max(max(a1)))*a1;

mymap1 =[1.0000    1.0000    1.0000
    0.8715    0.9028    0.9028
    0.7431    0.8056    0.8056
    0.6146    0.7083    0.7083
    0.4861    0.6111    0.6111
    0.3889    0.4722    0.5139
    0.2917    0.3333    0.4167
    0.1944    0.1944    0.3194
    0.0972    0.0972    0.1806
         0         0    0.0417];
colormap(mymap1)

image(a1)
axis off
axis equal


clear
clf
load uspsDigits.mat;
% Skicka in alla funktioner i separata funktionsfiler
% ---Funktionen matToVec---
% function [B] = matToVec(A)
% % Använder reshape
% load uspsDigits.mat trainDigits;
% load uspsDigits.mat trainAns;
% B = [];
% for i=1:7291
%    if(A == trainAns(i))
%        B = [B reshape(trainDigits(:,:,i),[],1)];
%    end
% end
% end
noll = matToVec(0);
ett = matToVec(1);
tva = matToVec(2);
tre = matToVec(3);
fyra = matToVec(4);
fem = matToVec(5);
sex = matToVec(6);
sju = matToVec(7);
atta = matToVec(8);
nio = matToVec(9);
d = 12; % dim ändra till vad som helst upp till 256
% ---Funktionen base---
% function [B] = base(d,A)
% % Kör svd och skickar tillbaka vänstersingulära vektorerna
% [U,S,V] = svd(A);
% B = (U(:,1:d));
% end
base0 = base(d,noll);
base1 = base(d,ett);
base2 = base(d,tva);
base3 = base(d,tre);
base4 = base(d,fyra);
base5 = base(d,fem);
base6 = base(d,sex);
base7 = base(d,sju);
base8 = base(d,atta);
base9 = base(d,nio);
% Skapa en array med testdatan
x = [];
for i=1:2007
    x = [x reshape(testDigits(:,:,i),[],1)];
end
% Skapa en variabel xDummy som i for loopen tar in en handskriven siffra i
% taget och skickas in i funktionen normRes
% results blir ifylld med de värdena som returneras av normRes en efter en
xDummy = 0;
results = zeros(1,2007);
% ---Funktionen normRes---
%function [result] = normRes(x,d,noll,ett,tva,tre,fyra,fem,sex,sju,atta,nio,base0,base1,base2,base3,base4,base5,base6,base7,base8,base9)
% % Tar in en vektor x och beräknar avståndet till samtliga underrum för
% % varje klass och sedan returnerar den klassen som vektorn hade kortast
% % avstånd till
%x0 = base0*base0'*x;
%x1 = base1*base1'*x;
%x2 = base2*base2'*x;
%x3 = base3*base3'*x;
%x4 = base4*base4'*x;
%x5 = base5*base5'*x;
%x6 = base6*base6'*x;
%x7 = base7*base7'*x;
%x8 = base8*base8'*x;
%x9 = base9*base9'*x;
%r0 = x-x0;
%r1 = x-x1;
%r2 = x-x2;
%r3 = x-x3;
%r4 = x-x4;
%r5 = x-x5;
%r6 = x-x6;
%r7 = x-x7;
%r8 = x-x8;
%r9 = x-x9;
%n0 = norm(r0);
%n1 = norm(r1);
%n2 = norm(r2);
%n3 = norm(r3);
%n4 = norm(r4);
%n5 = norm(r5);
%n6 = norm(r6);
%n7 = norm(r7);
%n8 = norm(r8);
%n9 = norm(r9);
%N = [n0 n1 n2 n3 n4 n5 n6 n7 n8 n9];
%for i = 1:length(N)
%   if(N(i) == min(N))
%       result = i-1;
%   end
%end
%end
for i=1:2007
    xDummy = x(:,i);
    results(1,i) = normRes(xDummy,d,noll,ett,tva,tre,fyra,fem,sex,sju,atta,nio,base0,base1,base2,base3,base4,base5,base6,base7,base8,base9);
end
% printar ut algoritmens resultat och facit(transponerad för bättre
% utseende)
results
results = 1*2007;
     9     6     3     0     6     0     0     0     6     9     6     2     3     9     0     3     1     6     9     6     2     2     4     9     6     2     0     5     8     3     7     0     5     0     7     9     5     0     0     7     0     8     1     0     7     1     0     4     2     0
testAns'
ans = 1*2007
     9     6     3     6     6     0     0     0     6     9     6     2     2     4     0     3     1     6     9     6     2     2     4     9     6     2     0     3     8     3     7     0     5     0     7     9     5     0     0     7     0     8     1     0     7     1     0     4     2     0
% printar ut procent för hur korrekt algoritmen var jämfört med facit
PDif = results / testAns' * 100
PDif = 98.0784


