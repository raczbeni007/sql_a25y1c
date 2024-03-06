select sz.SZOBA_ID, year(f.mettol), count(f.FOGLALAS_PK)
from foglalas f join szoba sz on f.SZOBA_FK = sz.SZOBA_ID
where right(STR(sz.SZOBA_SZAMA),1) not like 2 and right(STR(sz.SZOBA_SZAMA),1) not like 4 and right(STR(sz.SZOBA_SZAMA),1) not like 6 and right(STR(sz.SZOBA_SZAMA),1) not like 8 and right(STR(sz.SZOBA_SZAMA),1) not like 0 
group by sz.SZOBA_ID, year(f.mettol)
having count(f.FOGLALAS_PK)>10