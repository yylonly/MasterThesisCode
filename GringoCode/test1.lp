atomService(rdec(var(#infimum, #infimum), var(#infimum, #infimum), var(city, string), var(city, string)),
sdec(compareCityHappiness),
sign(localservice, url4),
funcR(compareHappinessWithTwoCity, statistics, happiness,
in(var(#infimum, #infimum), var(#infimum, #infimum)),
out(var(city, string), var(city, string))),
nonFuncR(8, 80, 6, 10, 0, 8, 0)).


atomService(rdec(var(city, string), var(#infimum, #infimum), var(happiness, number), var(#infimum, #infimum)),
sdec(happinessA),
sign(localservice, url1),
funcR(queryHappinessInCountryA, psychology, happiness,
in(var(city,string), var(#infimum, #infimum)),
out(var(happiness, number), var(#infimum, #infimum))),
nonFuncR(10, 90, 5, 10, 0, 23, 0)).

1 { trace(ServiceName) : atomService(rdec(var(In1, InU1), var(In2, InU2), var(Out1, OutU1), var(Out2, OutU2)),
sdec(ServiceName), sign(Type, URL),
funcR(Desc, Class, Domain,
in(var(In1, InU1), var(In2, InU2)),
out(var(Out1, OutU1), var(Out2, OutU2))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege)) } 1 .