% Atom Service
atomService(rdec(var(city, string), var(#infimum, #infimum) , var(happiness, number), var(#infimum, #infimum)),
sdec(happinessA),
sign(localservice, url1),
funcR(queryHappinessInCountryA, psychology, happiness,
in(var(city,string), var(#infimum, #infimum)),
out(var(happiness, number), var(#infimum, #infimum))),
nonFuncR(10, 90, 5, 10, 0, 23, 0)).

atomService(rdec(var(city, string), var(#infimum, #infimum), var(happiness, number), var(#infimum, #infimum)),
sdec(happinessB),
sign(localservice, url2),
funcR(queryHappinessInCountryB, statistics, happiness,
in(var(city,string), var(#infimum, #infimum)),
out(var(happiness, number), var(#infimum, #infimum))),
nonFuncR(9, 80, 4, 10, 0, 15, 0)).

atomService(rdec(var(happiness, number), var(happiness, number),
var(result, number), var(#infimum, #infimum)),
sdec(compareHappiness),
sign(localservice, url3),
funcR(compareTwoHappiness, compare, happiness,
in(var(happiness, number), var(happiness, number)),
out(var(result,number), var(#infimum, #infimum))),
nonFuncR(4, 90, 10, 1, 0, 5, 0)).

% Source Service
atomService(rdec(var(#infimum, #infimum), var(#infimum, #infimum),var(city, string), var(city, string)),
sdec(compareCityHappiness),
sign(localservice, url4),
funcR(compareHappinessWithTwoCity, statistics, happiness,
in(var(#infimum, #infimum), var(#infimum, #infimum)),
out(var(city, string), var(city, string))),
nonFuncR(8, 80, 6, 10, 0, 8, 0)).

% Target Service
atomService(rdec(var(result,number), var(#infimum, #infimum), var(#infimum, #infimum), var(#infimum, #infimum)),
sdec(compareCityHappiness),
sign(localservice, url4),
funcR(compareHappinessWithTwoCity, statistics, happiness,
in(var(result,number), var(#infimum, #infimum)),
out(var(#infimum, #infimum), var(#infimum, #infimum))),
nonFuncR(8, 80, 6, 10, 0, 8, 0)).