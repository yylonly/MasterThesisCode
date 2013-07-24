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
in(var(city, string), var(#infimum, #infimum)),
out(var(happiness, number), var(#infimum, #infimum))),
nonFuncR(10, 90, 5, 10, 0, 23, 0)).

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutA2, OutUA2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutA2, OutUA2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, 0))

:- atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutA1, OutUA1), var(OutA2, OutUA2)),
sdec(ServiceNameA), sign(TypeA, URLA),
funcR(DescA, ClassA, DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutA1, OutUA1), var(OutA2, OutUA2))),
nonFuncR(RTA, AvailabilityA, ThroughputA, ReliabilityA, PriceA, RankA, PrivilegeA)),

atomService(rdec(var(InB1, InUB1), var(InB2, InUB2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(ServiceNameB), sign(TypeB, URLB),
funcR(DescB, ClassB, DomainB,
in(var(InB1, InUB1), var(InB2, InUB2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR(RTB, AvailabilityB, ThroughputB, ReliabilityB, PriceB, RankB, PrivilegeB)),

DomainA == DomainB, InB2 == #infimum, InUB2 == #infimum, OutB2 == #infimum, OutUB2 == #infimum, OutA1 == InB1, OutA1 != #infimum, OutUA1 == InUB1, ServiceNameA != ServiceNameB.
