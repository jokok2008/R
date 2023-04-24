mydata <- read.csv("C:/Users/jokok/Desktop/data.csv")

df <-data.frame(mydata)
print (mydata)
library(label4MRI)
Result <- t(mapply(FUN = mni_to_region_name, x = df$x, y = df$y, z = df$z))
print(Result)

write.csv(Result,"labeled_result.csv")
