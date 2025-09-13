#Time after Arkansas's goal
g = 9 + 14/60

#Arkansas's last-minute injuries (not used in analysis)

f1 = 5 + 31/60
p1 <- 'McKenzie Mallon'

f2 = 4 + 52/60
p2 <- '14'

f3 = 2 + 55/60
p3 <- 'Bella Field'

f4 = 56.9/60
p4 <- 'Bella Field'

f5 = 56.9/60
p5 <- 'White'

#NCAA Division 1 injuries per 1000 regular season games [mean and upper and lower bound of 95% 
#confidence]
d1_mean = 15.35
lb = 14.13
ub = 16.57

#Players playing last 9:14
playing = 16
players = 21

# Expected injuries for whole team
exp_inj_team = function(stat)
{eit = playing*(15.35/1000)
  return (eit)}

exp_inj = exp_inj_team(d1_mean)
cat('Expected Injuries per game per team',exp_inj)

lb_inj = exp_inj_team(lb)
cat('Lower Bound Injuries per game per team',lb_inj)

ub_inj = exp_inj_team(ub)
cat('Upper Bound Injuries per game per team',ub_inj)


# Adjust for 9 minutes 14 seconds left in game
lambda = exp_inj * g/90

# Poisson test and print result
options(scipen = 2)
for (i in (1:5))
{print(paste0('Probability of ',i,' injuries in 9 minutes 14 seconds: ',dpois(i,lambda)))}


