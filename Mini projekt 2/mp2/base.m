function [B] = base(d,A)

[U,S,V] = svd(A);

B = (U(:,1:d));

end

