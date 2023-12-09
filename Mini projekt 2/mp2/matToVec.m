function [B] = matToVec(A)
% Använder reshape
load uspsDigits.mat trainDigits;
load uspsDigits.mat trainAns;
B = [];
for i=1:7291
    if(A == trainAns(i))
        B = [B reshape(trainDigits(:,:,i),[],1)];
    end
end
end

