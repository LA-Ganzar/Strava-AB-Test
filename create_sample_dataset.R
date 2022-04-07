# Dataset for Hypothetical Experiment
# Create control observations
cont <- rbinom(n = 686, size = 1, prob = 0.10)
cont_df <- as.data.frame(cont)
cont_df <- cont_df %>%
  rename(conversion = cont) %>%
  mutate(condition = 0)

# Create experimental observations
exp <- rbinom(n = 686, size = 1, prob = 0.18)
exp_df <- as.data.frame(exp)
exp_df <- exp_df %>%
  rename(conversion = exp) %>%
  mutate(condition = 1)

# Merge control and experiment
full_df <- rbind(cont_df, exp_df)