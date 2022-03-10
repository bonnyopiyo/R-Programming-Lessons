PL <- iris$Petal.Length
PW <- iris$Petal.Width

plot(PL, PW, pch = 2, col = 'green')
iris$Species

speciesID <- as.numeric(iris$Species)
speciesID
class(speciesID)

plot(PL, PW, pch = speciesID, 
     col = rainbow(3)[iris$Species],
     xlab = "Petal Length cm",
     ylab = "Petal Width cm",
     main = "Petal Width vcs Length")
abline(lm(PW ~ PL))

PCC <- cor(PW, PL)
PCC <- round(PCC, 2)
PCC

text(5,0.5, paste("R=", PCC))
legend('topleft',
       levels(iris$Species),
       pch = 1:3,
       col = rainbow(3))


