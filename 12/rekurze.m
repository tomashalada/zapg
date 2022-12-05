1;

function vysledek = faktorial( n )
if n <=2
    vysledek = n;
else
    vysledek = n*faktorial(n-1);
end
end

faktorial(6)
