L = 50 # Number of days
dtat1 = rnorm(L, 0, 0.05) # this is orginial data
dta2 = dtat1 + 1
dta3 = cumprod(dta2)
plot (
  dta3, type = "l", 
  main = "MCMC Simulation", 
  xlim = c(0, 50), 
  ylim = c(0.5, 1.8),
  xlab = "Number of Days",
  ylab = "Cumulative Return from $1",
  col = "Yellow")
# N is the number of path
for (N in 1:20) {
  dtat1 = rnorm(L, 0, 0.05)
  dta2 = dtat1 + 1
  dta3 = cumprod(dta2)
  lines(
    dta3, type = "l", 
    xlim = c(0, 50), 
    ylim = c(0.5, 1.8),
    col = N )
} # Done
