% Atom Service
atomService(rdec(var(cityA, string), var(#infimum, #infimum) , var(happinessA, number), var(#infimum, #infimum)),
sdec(happinessA),
sign(localservice, url1),
funcR(queryHappinessInCountryA, psychology, happiness,
in(var(cityA,string), var(#infimum, #infimum)),
out(var(happinessA, number), var(#infimum, #infimum))),
nonFuncR(10, 90, 5, 10, 0, 23, 0)).

atomService(rdec(var(cityB, string), var(#infimum, #infimum), var(happinessB, number), var(#infimum, #infimum)),
sdec(happinessB),
sign(localservice, url2),
funcR(queryHappinessInCountryB, statistics, happiness,
in(var(cityB,string), var(#infimum, #infimum)),
out(var(happinessB, number), var(#infimum, #infimum))),
nonFuncR(9, 80, 4, 10, 0, 15, 0)).

atomService(rdec(var(cityB, string), var(#infimum, #infimum), var(happinessB, number), var(#infimum, #infimum)),
sdec(happinessC),
sign(localservice, url2),
funcR(queryHappinessInCountryB, statistics, happiness,
in(var(cityB,string), var(#infimum, #infimum)),
out(var(happinessB, number), var(#infimum, #infimum))),
nonFuncR(8, 90, 2, 11, 0, 12, 0)).

atomService(rdec(var(happinessA, number), var(happinessB, number),
var(result, number), var(#infimum, #infimum)),
sdec(compareHappiness),
sign(localservice, url3),
funcR(compareTwoHappiness, compare, happiness,
in(var(happinessA, number), var(happinessB, number)),
out(var(result,number), var(#infimum, #infimum))),
nonFuncR(4, 90, 10, 1, 0, 5, 0)).


% Source Service
atomService(rdec(var(#infimum, #infimum), var(#infimum, #infimum),var(out1, out1T), var(out2, out2T)),
sdec(serviceName),
sign(type, url),
funcR(description, class, domain,
in(var(#infimum, #infimum), var(#infimum, #infimum)),
out(var(out1, out1T), var(out2, out2T))),
nonFuncR(rt, av, tr, re, pr, rank, privilege)).

% Target Service
atomService(rdec(var(result,number), var(#infimum, #infimum), var(#infimum, #infimum), var(#infimum, #infimum)),
sdec(serviceName),
sign(type, url),
funcR(description, class, domain,
in(var(in1,in1T), var(in2, in2T)),
out(var(#infimum, #infimum), var(#infimum, #infimum))),
nonFuncR(rt, av, tr, re, pr, rank, privilege)).