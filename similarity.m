function [R]=similarity(Y,c)%The Euclidean distance method is used to establish the similar matrix
[m,n]=size(Y);
O=zeros(m);
R=zeros(m);
for i=1:m
    for j=1:m
        for k=1:n
            O(i,j)=sqrt((Y(i,k)-Y(j,k))^2+O(i,j));
            R(i,j)=1-c*O(i,j);
        end
    end
end
End
