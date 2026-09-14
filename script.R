
R version 4.6.1 (2026-06-24) -- "Happy Hop"
Copyright (C) 2026 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.83 (8608) x86_64-apple-darwin20]

[History restored from /Users/mhashmi/.Rapp.history]

> hist(iris$Sepal.Width)
> 
> 
> mean(iris$Sepal.Width)
[1] 3.057333
> 
> median(iris$Sepal.Width)
[1] 3
> 
> quantile(iris$Sepal.Width)
  0%  25%  50%  75% 100% 
 2.0  2.8  3.0  3.3  4.4 
> quantile(iris$Sepal.Width, 0.73)
73% 
3.3 
> iris$Sepal.Width, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Sepal Width") 
Error: unexpected ',' in "iris$Sepal.Width,"
> 
> plot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Sepal Width")
> plot(iris$Sepal.Length, iris$Petal.Length, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Petal Length")
> plot(iris$Sepal.Length, iris$Petal.Length, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Petal Length")
> plot(iris$Sepal.Length, iris$Petal.Width, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Petal Width")
> plot(iris$Sepal.Length, iris$Petal.Width, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Petal Width")
> plot(iris$Sepal.Width, iris$Petal.Length, col=iris$Species, pch=19, xlab="Sepal Width", ylab="Petal Length")
> plot(iris$Sepal.Width, iris$Petal.Width, col=iris$Species, pch=19, xlab="Sepal Width", ylab="Petal Width")
> plot(iris$Petal.Length, iris$Petal.Width, col=iris$Species, pch=19, xlab="Petal Length", ylab="Petal Width")
> exit
Error: object 'exit' not found
> 
> 
> data("PlantGrowth")
> 
> 
> head(PlantGrowth)
  weight group
1   4.17  ctrl
2   5.58  ctrl
3   5.18  ctrl
4   6.11  ctrl
5   4.50  ctrl
6   4.61  ctrl
> data("PlantGrowth")
> custom_breaks <- seq(3.3, 6.6, by = 0.3)
> hist(PlantGrowth$weight, 
+      breaks = custom_breaks, 
+      main = "Histogram of Plant Weights", 
+      xlab = "Weight", 
+      ylab = "Frequency", 
+      col = "black", 
+      las = 1)
> hist(PlantGrowth$weight, 
+      breaks = custom_breaks, 
+      main = "Histogram of Plant Weights", 
+      xlab = "Weight", 
+      ylab = "Frequency", 
+      col = "white", 
+      las = 1)
> boxplot(weight ~ group, data = PlantGrowth, 
+         main = "Boxplot of Weight by Group",
+         xlab = "Group", 
+         ylab = "Weight")
> trt1_weights <- PlantGrowth$weight[PlantGrowth$group == "trt1"]
> trt2_weights <- PlantGrowth$weight[PlantGrowth$group == "trt2"]
> mean(trt1_weights < min(trt2_weights)) * 100
[1] 80
> filtered_data <- subset(PlantGrowth, weight > 5.5)
> group_counts <- table(filtered_data$group)
> 
> barplot(group_counts, 
+         main = "Count of Groups for Plants with Weight > 5.5",
+         xlab = "Group", 
+         ylab = "Count", 
+         col = rainbow(length(group_counts)), # Colorful palette
+         border = "black")
2026-09-13 21:19:22.231 R[88956:14288559] The class 'NSSavePanel' overrides the method identifier.  This method is implemented by class 'NSWindow'
> 