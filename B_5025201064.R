# Soal 1
# a
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
sd(x-y)

#b
t.test (y , x , paired=TRUE)

# Soal 2
# b
install.packages("BSDA")
library(BSDA)

zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "greater", mu = 20000,
          conf.level = 0.95)

# Soal 3
# b 
library(BSDA)
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# c
install.packages("mosaic")
library(mosaic)
plotDist (dist='t', df=2, col="blue")

# d
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# Soal 4
# a
dataoneway <- read.table("onewayanova.txt",h=T)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(dataoneway$Group)

Group1 <- subset(dataoneway, Group == "Kucing Oren")
Group2 <- subset(dataoneway, Group == "Kucing Hitam")
Group3 <- subset(dataoneway, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# b
bartlett.test(Length ~ Group, data = dataoneway)

# c
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

# d
TukeyHSD(aov(model1))

# e
install.packages("ggplot2")
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "grey80", colour = "black") +
  scale_x_discrete() + xlab("Treatment Group") +
  ylab("Length (cm)")

# Soal 5
# a
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# d
tukey <- TukeyHSD(anova)
print(tukey)

# e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)