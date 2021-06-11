
data{
  int<lower=0> N; //number of datapoints
  vector[N] x; //covariates
  vector[N] y; //variates
}

parameters{
  // unknown, estimated from data
  real alpha; //intercept
  real beta; //slope
  real<lower=0> sigma; //scatter 
}

model{
  // priors
  //alpha ~ normal(0,10);
  //beta ~ normal(0,10);
  sigma ~ cauchy(0,1);

  y ~ normal(alpha + beta * x, sigma); //likelyhood;
      // (observed y) drawn from (normal predicted y), given (x, params alpha & beta, and sd Sigma)
}


generated quantities{ // posterior retrodictive checks
  vector[N] y_sim; // simulated data from posterior
  for (i in 1:N)  //simulation = normal y = (alpha + beta + x), with sd of sigma
    y_sim[i] = normal_rng(alpha + beta * x[i], sigma);
}
