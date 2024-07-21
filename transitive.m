function [R0] = transitive( R )
m=size(R);
R0=zeros(m);
flag=0;
while flag==0
    for i=1:m
        for j=1:m
            for k=1:m
                R0(i,j)=max(min(R(i,k),R(k,j)),R0(i,j));%Take the small and then take the big
            end
        end
    end
    if R0==R
        flag=1;
    else
        R=R0;%Loop the R-transitive closure
    end
end
end