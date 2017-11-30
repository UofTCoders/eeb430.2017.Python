library(ggthemes)
team_theme <- function() {list(
  
  theme(axis.line = element_line(color = "black"),
        text = element_text(size = 8, family = "Times"),
        panel.background = element_rect(fill = 'white', colour = 'black'),
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        plot.title = element_text(colour =  "black", size = 14, hjust = 0.5),
        legend.text = element_text(size = 12, family = "Times")),
  scale_colour_colorblind())
}
