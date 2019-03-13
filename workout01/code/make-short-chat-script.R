curry_scatterplot  = ggplot(data = curry) + geom_point(aes(x = x, y = y, color = shot_made_flag))


library(grid)
library(jpeg)
court_file = "images/nba-court.jpg"

court_image = rasterGrob(readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))


curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart:Stephen Curry (2018 season)') +
  theme_minimal()

klay_shot_chart <- ggplot(data = klay) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2018 season)') +
  theme_minimal()

graymand_shot_chart <- ggplot(data = graymand) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Graymand Green (2018 season)') +
  theme_minimal()

iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2018 season)') +
  theme_minimal()

kevin_shot_chart <- ggplot(data = kevin) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2018 season)') +
  theme_minimal()


setwd("~/Desktop/UC Berkeley/Stat133/workout01/images")

shots_data_chart = ggplot(data = shots_data)+
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW(2018 season)') +
  facet_wrap(~ Name, ncol = 2)
  theme_minimal()

ggsave("gsw-shots_chart.png", width = 8, height = 7, units = "in")

library(jpeg)
library(grid)

pdf("gsw-shot-charts.pdf", width = (8*2.54), height = (7*2.54))
plot(shots_data_chart)
dev.off()






