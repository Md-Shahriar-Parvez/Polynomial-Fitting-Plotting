x=input('Enter the values of independant variable as row matrix:');
y=input('Enter the values of dependant variable as row matrix:');
m=length(x);
if length(y)~=m
    disp('Number of independant and dependant variable should be same.')
else 
    or=input('Enter the order of the polynomial:')
    n=or+1;
    a=zeros(n,n);
    for i=1:n
        for j=1:n
            a(i,j)=sum(x.^(i+j-2));
        end
    end
    b=zeros(n,1);
    for i=1:n
        b(i,1)=sum((x.^(i-1)).*y);
    end
    c=a\b;
    disp('The coefficients of the polynomial are:')
    disp(c)
    xp=linspace(min(x),max(x),1000);
    t=length(xp);
    sum=zeros(1,t);
    for p=1:n
        for q=1:t
            sum(1,q)=sum(1,q)+c(p,1)*(xp(q)^(p-1));
            yp(q)=sum(1,q);
        end
    end
    plot(x,y,'*',xp,yp,'k-')
    grid on
end




