function [result] = normRes(x,d,noll,ett,tva,tre,fyra,fem,sex,sju,atta,nio,base0,base1,base2,base3,base4,base5,base6,base7,base8,base9)

x0 = base0*base0'*x;
x1 = base1*base1'*x;
x2 = base2*base2'*x;
x3 = base3*base3'*x;
x4 = base4*base4'*x;
x5 = base5*base5'*x;
x6 = base6*base6'*x;
x7 = base7*base7'*x;
x8 = base8*base8'*x;
x9 = base9*base9'*x;

r0 = x-x0;
r1 = x-x1;
r2 = x-x2;
r3 = x-x3;
r4 = x-x4;
r5 = x-x5;
r6 = x-x6;
r7 = x-x7;
r8 = x-x8;
r9 = x-x9;

n0 = norm(r0);
n1 = norm(r1);
n2 = norm(r2);
n3 = norm(r3);
n4 = norm(r4);
n5 = norm(r5);
n6 = norm(r6);
n7 = norm(r7);
n8 = norm(r8);
n9 = norm(r9);

N = [n0 n1 n2 n3 n4 n5 n6 n7 n8 n9];

for i = 1:length(N)
   if(N(i) == min(N))
       result = i-1;
   end
end


end

