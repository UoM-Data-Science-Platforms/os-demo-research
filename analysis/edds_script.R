## import libraries

library('tidyverse')
library('sf')

bmi_distribution <- c(18.5, 19.0, 20.2, 21.5, 22.8, 24.0, 25.4, 26.1,
                      27.6, 29.0, 30.2, 31.5, 33.0, 35.2, 37.8, 40.1)

plot_bmi_bar <- ggplot(data.frame(bmi = bmi_distribution), aes(x = bmi)) +
  geom_histogram(aes(y = ..density..), bins = 10, fill = "steelblue", colour = "black", alpha = 0.8) +
  geom_density(fill = "blue", alpha = 0.2) +
  geom_vline(xintercept = median(bmi_distribution), linetype = "dashed", colour = "red") +
  labs(
    title = "BMI distribution (mock data)",
    x = "BMI",
    y = "Density"
  ) +
  theme_minimal() +
  theme(
    plot.title.position = "plot",
    plot.caption.position = "plot"
  )


plot_bmi_bar(
  plot= plot_stppop_bar,
  filename="plot_bmi_bar.png", path=here::here("output", "plots"),
  units = "cm",
  height = 15,
  width = 15
)


plot_bmi_bar

