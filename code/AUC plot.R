# Load required libraries
library(ggplot2)
library(patchwork)

# Source the scripts that generate the AUC plots
# Each script should save the ggplot object to a variable
source('F:/Github/Embeddings_Voting/code/H1_climateact_emb_0.5.Rmd')  # Assuming this script saves a ggplot object to `auc_plot_0.5`
source('F:/Github/Embeddings_Voting/code/H1_climateact_emb_0.6.Rmd')  # Assuming this script saves a ggplot object to `auc_plot_0.6`
source('F:/Github/Embeddings_Voting/code/H1_climateact_emb_0.7.Rmd')  # Assuming this script saves a ggplot object to `auc_plot_0.7`

# Combine the plots (make sure the plot objects are named correctly as per your scripts)
combined_plot <- auc_plot_0.5 + auc_plot_0.6 + auc_plot_0.7 + 
  plot_layout(ncol = 1)  # Arranges them in a single column; use `nrow = 1` for a single row

# Print the combined plot
print(combined_plot)

# Save the combined plot to a file
ggsave("combined_auc_plots.png", combined_plot, width = 12, height = 12, dpi = 300)
