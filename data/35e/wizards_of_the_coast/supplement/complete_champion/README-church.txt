
Complete Champion, Support for Churches
=======================================

User Interface
--------------

In PCGEN:
- navigate to the 'Feats & Abilities' tab
- navigate to the 'Church' sub tab
- Pick category 'Church'

Membership abilities are available for each Church.

Pick a Church Membership (for example, Ruby Temple, deity must be Wee Jas)

Additional ability categories are displayed:

- The Ruby Temple Affiliation Criterion

In the 'Affiliation Criterion', pick abilities to describe *what* the
character has done. This computes the affiliation score.

- The Ruby Temple Rank

The affiliation score is displayed in the total.

Pick Church ranks, get the bonuses.

Implementation
--------------

The general pattern is:

Ability "Church / XYZ Membership":
- has no cost
- defines a variable XYZAffiliationScore
- gives a bonus to the "XYZ Rank" ability pool
- grants automatic abilities in category "XYZ Affiliation Criterion"

Abilities in "XYZ Affiliation Criterion"
- have no cost
- requires the Membership prerequisite
- gives a bonus to XYZAffiliationScore

Abilities in "XYZ Rank"
- require the previous rank
- have a cost, defined incrementally
- grant bonuses

Note that scores (XYZAffiliationScore) are computed in 1/100th,
so that when taking 4 times an ability that gives 1/4 point,
(for example, kill 4 CR1 with magic in the Ruby Temple)
the total "XYZ Rank" pool score is 1 ((25 + 25 + 25 + 25) / 100), not 0.

Status
------

Church list, membership for each church: complete

Ruby Temple: complete

All other churches:
- automatic 'Character Level' score: completed
- other one time score: to do
- other many time score: to do
- ranks: to do
- bonuses: to do

