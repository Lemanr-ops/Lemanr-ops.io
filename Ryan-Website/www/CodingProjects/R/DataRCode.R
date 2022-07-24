##########- Instructions, Your instructions will be noted with the sign "############-"             -###################
##########- You need to have your 7 dopamine CV files with the point numbers associated with them   -###################
##########- You need to have your BK files associated with the CV files                             -###################
#########- Just continue down and follow the instructions notated by the ##########- sign           -###################
#########- This program only creates a CONC matrix without dragging and dropping in Excel           -###################
#########- Lastly, if you get errors, ensure your Rstudio has installed the libraries needed shown below

library(ggplot2)
library(readr)

#===ignore, programer note: Just ignore this small section, I'm trying to learn how to use readline for better user experience

#options(max.print = 11000)
#Rat <- readline(prompt = "Copy&Paste file path for Rat here: ")

#====ignore, programer note: Consolidate all 3rd colume BK files
BkFiles <- matrix(data = NA, nrow = 1000, ncol = 7, byrow = FALSE,
       dimnames = NULL)
i <- 0
while (i < 7) {
i <- i + 1
BkFiles[nrow = 1000 ,ncol= i] <- 0 
}

##############-        find file path to your rat's BK files that you want to analyse.                     -########################
##############- the easiest way to do this is to press the windows button+R then drag the file into open:  -########################
##############-        Copy& paste this including quotations " " after file =                              -########################


Bk1D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/base-6_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 1] <- cbind(Bk1D$X3)

Bk2D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/veh-1_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 2] <- cbind(Bk2D$X3)

Bk3D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her1-1_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 3] <- cbind(Bk3D$X3)

Bk4D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her2-7_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 4] <- cbind(Bk4D$X3)

Bk5D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her3-3_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 5] <- cbind(Bk5D$X3)

Bk6D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her3-8_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 6] <- cbind(Bk6D$X3)

Bk7D <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her4-1_CV_bk.txt", col_names = FALSE)
BkFiles[nrow = 1:1000, ncol = 7] <- cbind(Bk7D$X3)
#print(BkFiles)
#==============================================================================#
#==========Finding Sensitivity=================================================#
BkFiles <- abs(BkFiles)
BkFiles <- as.data.frame(BkFiles)
ElectrodeSense1 <- sum(BkFiles$V1)
ElectrodeSense2 <- sum(BkFiles$V2)
ElectrodeSense3 <- sum(BkFiles$V3)
ElectrodeSense4 <- sum(BkFiles$V4)
ElectrodeSense5 <- sum(BkFiles$V5)
ElectrodeSense6 <- sum(BkFiles$V6)
ElectrodeSense7 <- sum(BkFiles$V7)

ElectrodeSense <- 0
ElectrodeSense1 <- (ElectrodeSense1*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 1] <- ElectrodeSense1
ElectrodeSense2 <- (ElectrodeSense2*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 2] <- ElectrodeSense2
ElectrodeSense3 <- (ElectrodeSense3*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 3] <- ElectrodeSense3
ElectrodeSense4 <- (ElectrodeSense4*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 4] <- ElectrodeSense4
ElectrodeSense5 <- (ElectrodeSense5*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 5] <- ElectrodeSense5
ElectrodeSense6 <- (ElectrodeSense6*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 6] <- ElectrodeSense6
ElectrodeSense7 <- (ElectrodeSense7*0.00004713)-(1.46*17.185)+((1.46^2)*8.324)-0.656
ElectrodeSense[ncol = 7] <- ElectrodeSense7
#print(ElectrodeSense)
#=====================================================================================#
#==========Point number Calc==========================================================#

Sample1 <- 0
Sample2 <- 0
Sample3 <- 0
Sample4 <- 0
Sample5 <- 0
Sample6 <- 0
Sample7 <- 0
CVSamples <- 0
CVSamples <- matrix(data = NA, nrow = 1000, ncol = 7, byrow = FALSE,
       dimnames = NULL)
i <- 0
while (i < 7) {
 i <- i+1
 CVSamples[nrow = 1:1000, ncol = i] <- 0
}

##############-        find file path to your rat's CV files that you want to analyse.                          -########################
##############- the easiest way to do this is to press windows button+R then drag the file into open:           -########################
##############-          Copy& paste this including quotations " " after file =                                 -########################
##############- After you do this for each file, go to edit, then replace and find, then replace all / with /   -########################

Sample1 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/base-6_CV_287.txt"
, col_names = FALSE)
Sample1 <- as.data.frame(Sample1)
CVSamples[nrow = 1:1000 , ncol = 1] <- Sample1$X3

Sample2 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/veh-1_CV_282.txt"
, col_names = FALSE)
Sample2 <- as.data.frame(Sample2)
CVSamples[nrow = 1:1000 , ncol = 2] <- Sample2$X3

Sample3 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her1-1_CV_298.txt"
, col_names = FALSE)
Sample3 <- as.data.frame(Sample3)
CVSamples[nrow = 1:1000 , ncol = 3] <- Sample3$X3

Sample4 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her2-7_CV_282.txt"
, col_names = FALSE)
Sample4 <- as.data.frame(Sample4)
CVSamples[nrow = 1:1000 , ncol = 4] <- Sample4$X3

Sample5 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her3-3_CV_282.txt"
, col_names = FALSE)
Sample5 <- as.data.frame(Sample5)
CVSamples[nrow = 1:1000 , ncol = 5] <- Sample5$X3

Sample6 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her3-8_CV_302.txt"
, col_names = FALSE)
Sample6 <- as.data.frame(Sample6)
CVSamples[nrow = 1:1000 , ncol = 6] <- Sample6$X3

Sample7 <- read_tsv(file = "/home/leman/codes/win heroin/011420x/veh5/data analysis/her4-1_CV_295.txt", col_names = FALSE)
Sample7 <- as.data.frame(Sample7)

CVSamples[nrow = 1:1000 , ncol = 7] <- Sample7$X3
CVSamples <- as.data.frame(CVSamples)

##########- So for the point number thing we'll use an example to explain. Lets say your dopamine peak is 326.                      -####################
##########- If your peak is 326 then your lower end will be 322 while you're higher end is 331 so you will enter [nrow = 322:331]   -####################
##########- Do this for each CV sample you had. Obviously you must match Sample1 with PointNumber1, Scroll down for last instuction -####################

PointNumber1 <- CVSamples$V1[nrow = 283:292]
PointNumber2 <- CVSamples$V2[nrow = 278:287]
PointNumber3 <- CVSamples$V3[nrow = 294:303]
PointNumber4 <- CVSamples$V4[nrow = 278:287]
PointNumber5 <- CVSamples$V5[nrow = 278:287]
PointNumber6 <- CVSamples$V6[nrow = 298:307]
PointNumber7 <- CVSamples$V7[nrow = 291:300]

avePointNumber <- 0
avePointNumber <- matrix(data = NA, nrow = 7, ncol = 10, byrow = FALSE,
       dimnames = NULL)
i <- 0
while (i < 7) {
i <- i+1
avePointNumber[nrow=i,ncol=10] <- 0
}
avePointNumber[ncol=1,nrow=1:10] <- cbind(ave(PointNumber1))
avePointNumber[ncol=2,nrow=1:10] <- cbind(ave(PointNumber2))
avePointNumber[ncol=3,nrow=1:10] <- cbind(ave(PointNumber3))
avePointNumber[ncol=4,nrow=1:10] <- cbind(ave(PointNumber4))
avePointNumber[ncol=5,nrow=1:10] <- cbind(ave(PointNumber5))
avePointNumber[ncol=6,nrow=1:10] <- cbind(ave(PointNumber6))
avePointNumber[ncol=7,nrow=1:10] <- cbind(ave(PointNumber7))
avePointNumber <- as.data.frame(avePointNumber)
#print(avePointNumber)

#==========Creation of CV matrix================================================#

CVMatrix <- read.csv("/home/leman/codes/win heroin/FSCV analysis spreadsheets/CVmatrixtemplate.csv", header= FALSE)
CVMatrix$V1 <- cbind(CVSamples$V1)
CVMatrix$V2 <- cbind(CVSamples$V2)
CVMatrix$V3 <- cbind(CVSamples$V3)
CVMatrix$V4 <- cbind(CVSamples$V4)
CVMatrix$V5 <- cbind(CVSamples$V5)
CVMatrix$V6 <- cbind(CVSamples$V6)
CVMatrix$V7 <- cbind(CVSamples$V7)

##############- Because we work with the same data needed to write CV Matrix we used                                   -##############
##############- The previous information along with a template to create the CV Matrix for you                         -##############
##############- All you have to do is set the path you want your file to be saved to and give it a name ending in .csv -##############
write.table(CVMatrix, file = "/home/leman/codes/win heroin/011420x/veh5/Matrix Output/matrixCV.txt", col.names = FALSE, row.names = FALSE, sep = "\t")

#==========creation of Conc File ==================#
ConcNumbers <- (avePointNumber$V1)/(ElectrodeSense)
ConcNumbers <- as.data.frame(ConcNumbers)

ConcMatrix <- read.csv("/home/leman/codes/win heroin/FSCV analysis spreadsheets/CONCmatrixtemplate.csv", header=FALSE)
ConcMatrix$V1[nrow=1] <- ConcNumbers$ConcNumbers[nrow=1]
ConcMatrix$V2[nrow=1] <- ConcNumbers$ConcNumbers[nrow=2]
ConcMatrix$V3[nrow=1] <- ConcNumbers$ConcNumbers[nrow=3]
ConcMatrix$V4[nrow=1] <- ConcNumbers$ConcNumbers[nrow=4]
ConcMatrix$V5[nrow=1] <- ConcNumbers$ConcNumbers[nrow=5]
ConcMatrix$V6[nrow=1] <- ConcNumbers$ConcNumbers[nrow=6]
ConcMatrix$V7[nrow=1] <- ConcNumbers$ConcNumbers[nrow=7]
write.table(ConcMatrix, file = "/home/leman/codes/win heroin/011420x/veh5/Matrix Output/Conc.txt", col.names = FALSE,row.names = FALSE, sep = "\t")

##########- Now you are ready to run the program. If you're using R studio you can select (highlight) all the code then click run on the top right-######
#########- This program will calculate the 7 dopamine concentrations you need for your concentration matrix and you're all done!                 -########

#print(CVMatrix)
#print(avePointNumber$X1)
#print(CVSamples)
#print(PointNumber1)
#print(ElectrodeSense)
print(ConcNumbers)