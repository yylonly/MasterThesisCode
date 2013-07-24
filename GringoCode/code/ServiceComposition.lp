

% Define  Composition Rules

% -------------------------------------1----------------------------------------

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeA))

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

DomainA == DomainB, OutA1 == InB1, OutA1 != #infimum, OutUA1 == InUB1,  OutA2 == InB2,  OutUA2 == InUB2, ServiceNameA != ServiceNameB, PrivilegeA >= PrivilegeB.

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeB))

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

DomainA == DomainB, OutA1 == InB1, OutA1 != #infimum, OutUA1 == InUB1,  OutA2 == InB2,  OutUA2 == InUB2, ServiceNameA != ServiceNameB, PrivilegeA < PrivilegeB.


% -------------------------------------2----------------------------------------

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeA))

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

DomainA == DomainB, OutA1 == InB2, OutA1 != #infimum, OutUA1 == InUB2,  OutA2 == InB1, OutA2 != #infimum, OutUA2 == InUB1, ServiceNameA != ServiceNameB, PrivilegeA >= PrivilegeB.

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeB))

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

DomainA == DomainB, OutA1 == InB2, OutA1 != #infimum, OutUA1 == InUB2,  OutA2 == InB1, OutA2 != #infimum, OutUA2 == InUB1, ServiceNameA != ServiceNameB, PrivilegeA < PrivilegeB.


% --------------------------------------3------------------------------------------------
atomService(rdec(var(InA1, InUA1), var(InB2, InUB2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InB2, InUB2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeA)) 

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

DomainA == DomainB, InA2 == #infimum, InUA2 == #infimum,  OutA2 == #infimum, OutUA2 == #infimum, OutA1 == InB1, OutUA1 == InUB1, OutA1 != #infimum,  InB2 != #infimum, ServiceNameA != ServiceNameB, PrivilegeA >= PrivilegeB.

atomService(rdec(var(InA1, InUA1), var(InB2, InUB2), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InB2, InUB2)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeB)) 

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

DomainA == DomainB, InA2 == #infimum, InUA2 == #infimum,  OutA2 == #infimum, OutUA2 == #infimum, OutA1 == InB1, OutUA1 == InUB1, OutA1 != #infimum,  InB2 != #infimum, ServiceNameA != ServiceNameB, PrivilegeA < PrivilegeB.


% -------------------------------------4----------------------------------------

atomService(rdec(var(InA1, InUA1), var(InB1, InUB1), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InB1, InUB1)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeA)) 

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

DomainA == DomainB, InA2 == #infimum, InUA2 == #infimum,  OutA2 == #infimum, OutUA2 == #infimum, OutA1 == InB2, OutA1 != #infimum, OutUA1 == InUB2, InB1 != #infimum, ServiceNameA != ServiceNameB, PrivilegeA >= PrivilegeB.

atomService(rdec(var(InA1, InUA1), var(InB1, InUB1), var(OutB1, OutUB1), var(OutB2, OutUB2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InB1, InUB1)),
out(var(OutB1, OutUB1), var(OutB2, OutUB2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeB)) 

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

DomainA == DomainB, InA2 == #infimum, InUA2 == #infimum,  OutA2 == #infimum, OutUA2 == #infimum, OutA1 == InB2, OutA1 != #infimum, OutUA1 == InUB2, InB1 != #infimum, ServiceNameA != ServiceNameB, PrivilegeA < PrivilegeB.

% -------------------------------------5----------------------------------------

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutA2, OutUA2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutA2, OutUA2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeA))

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

DomainA == DomainB, InB2 == #infimum, InUB2 == #infimum, OutB2 == #infimum, OutUB2 == #infimum, OutA1 == InB1, OutA1 != #infimum, OutA2 != #infimum, OutUA1 == InUB1, ServiceNameA != ServiceNameB, PrivilegeA >= PrivilegeB.

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutB1, OutUB1), var(OutA2, OutUA2)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutB1, OutUB1), var(OutA2, OutUA2))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeB))

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

DomainA == DomainB, InB2 == #infimum, InUB2 == #infimum, OutB2 == #infimum, OutUB2 == #infimum, OutA1 == InB1, OutA1 != #infimum, OutA2 != #infimum, OutUA1 == InUB1, ServiceNameA != ServiceNameB, PrivilegeA < PrivilegeB.


% -------------------------------------6----------------------------------------

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutA1, OutUA1), var(OutB1, OutUB1)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutA1, OutUA1), var(OutB1, OutUB1))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeA))

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

DomainA == DomainB, InB2 == #infimum, InUB2 == #infimum, OutB2 == #infimum, OutUB2 == #infimum, OutA2 == InB1, OutA2 != #infimum, OutA1 != #infimum, OutUA2 == InUB1, ServiceNameA != ServiceNameB, PrivilegeA >= PrivilegeB.

atomService(rdec(var(InA1, InUA1), var(InA2, InUA2), var(OutA1, OutUA1), var(OutB1, OutUB1)),
sdec(cp(ServiceNameA, ServiceNameB)), sign(0, 0),
funcR(cp(DescA, DescB), cp(ClassA, ClassB), DomainA,
in(var(InA1, InUA1), var(InA2, InUA2)),
out(var(OutA1, OutUA1), var(OutB1, OutUB1))),
nonFuncR((RTA+RTB)/2, (AvailabilityA+AvailabilityB)/2, (ThroughputA+ThroughputB)/2, (ReliabilityA+ReliabilityB)/2, (PriceA+PriceB)/2, (RankA+RankB)/2, PrivilegeB))

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

DomainA == DomainB, InB2 == #infimum, InUB2 == #infimum, OutB2 == #infimum, OutUB2 == #infimum, OutA2 == InB1, OutA2 != #infimum, OutA1 != #infimum, OutUA2 == InUB1, ServiceNameA != ServiceNameB, PrivilegeA < PrivilegeB.


% TEST Constraint 
:- atomService(rdec(var(In1, InU1), var(In2, InU2), var(Out1, OutU1), var(Out2, OutU2)),
sdec(ServiceName), sign(Type, URL),
funcR(Desc, Class, Domain,
in(var(In1, InU1), var(In2, InU2)),
out(var(Out1, OutU1), var(Out2, OutU2))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege)), 
In1 != #infimum, InU1 != #infimum, In2 != #infimum, InU2 != #infimum, Out1 != #infimum, OutU1 != #infimum, Out2 != #infimum, OutU2 != #infimum.

% Define Compute Cost
composition(ServiceName, sign(Type, URL), funcR(Desc, Class, Domain, in(var(out1, out1T), var(out2, out2T)), out(var(in1, in1T), var(in2, in2T))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege),
w1 * (RT - rt) ** 2 + w2 * (Availability - av) ** 2 +  w3 * (Throughput - tr) ** 2 + 
w4 * (Reliability - re) ** 2 + w5 * (Price - pr) ** 2 + w6 * (Rank - rank) ** 2 + w7 * (Privilege - privilege) ** 2) 
:- atomService(rdec(var(In1, InU1), var(In2, InU2), var(Out1, OutU1), var(Out2, OutU2)),
sdec(ServiceName), sign(Type, URL),
funcR(Desc, Class, Domain,
in(var(In1, InU1), var(In2, InU2)),
out(var(Out1, OutU1), var(Out2, OutU2))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege)), 
In1 == #infimum, InU1 == #infimum, In2 == #infimum, InU2 == #infimum, Out1 == #infimum, OutU1 == #infimum, Out2 == #infimum, OutU2 == #infimum.

% Aggreagate
1 { compositionService(ServiceName, sign(Type, URL), funcR(Desc, Class, Domain, in(var(out1, out1T), var(out2, out2T)), out(var(in1, in1T), var(in2, in2T))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege), Cost) : composition(ServiceName, sign(Type, URL), 
funcR(Desc, Class, Domain, in(var(out1, out1T), var(out2, out2T)), out(var(in1, in1T), var(in2, in2T))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege), Cost)} 1.

% Optimize
#minimize [ compositionService(ServiceName, sign(Type, URL), funcR(Desc, Class, Domain, in(var(out1, out1T), var(out2, out2T)), out(var(in1, in1T), var(in2, in2T))),
nonFuncR(RT, Availability, Throughput, Reliability, Price, Rank, Privilege), Cost) = Cost].


% DISPLAY
 #hide.
 #show compositionService/5.
