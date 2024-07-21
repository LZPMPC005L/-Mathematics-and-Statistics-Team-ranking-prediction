function[x]=standardization(X)%Translate the data by standard deviation transformation
[m,n]=size(X);
for i=1:m
    for j=1:n
        x(i,j)=(X(i,j)-mean(X(:,j)))/sqrt(cov(X(:,j)));
    end
end
End