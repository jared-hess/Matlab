function a = powermod(b,n,m)

a = 1;

bases = mod(b,m);

while n~= 0
    
    ak = mod(n,2);
    n = div(n,2)
    
    if ak == 1
        a = mod(a^bases,n);
    end
    
    bases = mod(bases*bases,n)
    
end
end
