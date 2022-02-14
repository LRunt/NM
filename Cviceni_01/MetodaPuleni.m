a = 1;
b = 4;
delta = 0.01;
fs = delta + 1;
delka_intervalu = abs(b-a);
pocet_iteraci = 0;

while (((fs > delta)||(delka_intervalu > eps)) && (pocet_iteraci < 100))
    s = (a+b)/2;
    fs = nase_fce(s);
    fa = nase_fce(a);
    fb = nase_fce(b);
    if(fa * fs < 0)
        b = s;
    else
        a = s;
    end
    delka_intervalu = delka_intervalu /2;
    %delka_intervalu = abs(b-a);
    pocet_iteraci = pocet_iteraci + 1; 
end

s
pocet_iteraci