
Complete Champion, Support for Churches
=======================================

User Interface
--------------

In PCGEN:
- navigate to the 'Feats & Abilities' tab
- navigate to the 'Church' sub tab

* Category Church

Membership abilities are available for each Church.

Pick a Church Membership (for example, Ruby Temple, deity must be Wee Jas)

More abilities become available

Pick abilities to describe *what* the character has done.
This computes the affiliation score.

* Category The Ruby Temple Rank

The affiliation score is displayed in the total.

Pick Church ranks, get the bonuses.

Implementation
--------------

The general pattern is:

Ability "Church / XYZ Membership":
- has no cost
- defines a variable XYZAffiliationScore
- gives a bonus to the "XYZ Rank" ability pool
- grants automatic abilities

Abilities in "Church", type = XYZ
- have no cost
- requires the Membership prerequisite
- gives a bonus to XYZAffiliationScore

Abilities in "Church Rank", type = XYZ
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
Shining Light of Pelor: complete
Fharlanghn's Way: complete

All other churches:
- automatic 'Character Level' score: completed
- other one time score: to do
- other many time score: to do
- ranks: to do
- bonuses: to do

