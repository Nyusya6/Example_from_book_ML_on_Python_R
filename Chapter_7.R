# Глава 7 Построение деревьев решений CHAID с помощью пакета R CHAID

# 7.1 Построение и интерпретация дерева классификации CHAID

# 7.1.1 Подготовка данных

# Задаем постоянный CRAN репозиторий
cat(".Rprofile: Setting US repositoryn")
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
rm(r)

# Устанавливаем необходимые для работы пакеты
install.packages("CHAID", repos="http://R-Forge.R-project.org")
install.packages("pROC")
install.packages("rattle")
install.packages("smbinning")

data <- read.csv2("C:/Trees/Churn_binned.csv")
str(data)

data$longdist2 <- ordered(data$longdist, levels = c("<2", "2--8", " 9--14", "15-20", "21+"))
data$longdist <- NULL

data$local2 <- ordered(data$local, levels = c("<8", "8--20", "21-35", "36-55", "56+"))
data$local <- NULL

data$incomecat2 <- ordered(data$incomecat, levels = c("<15", "15-35", "36-50", "51-65", "66+"))
data$incomecat <- NULL

data$agecat2 <- ordered(data$agecat, levels = c("<31", "31-45", "46-58", "59-70", "71+"))
data$agecat <- NULL

str(data)

# 7.1.2 Построение модели и работа с диаграммой дерева

set.seed(42)
library(CHAID)

model.chaid  <- chaid(churn ~ ., 
                      control = chaid_control
                      (minprob = 0.001,
                      minsplit = 500,minbucket = 250),
                      data)

plot(model.chaid)
print(model.chaid)

# 7.1.3 Вычисление вероятностей классов и выбор оптимального порога

predict(model.chaid, data, type="prob")
predict(model.chaid, data, type="prob")[4427:4431]
score <- predict(model.chaid, data, type="prob")

library(pROC)
roc <- roc(data$churn, score[,1], ci=TRUE)
plot(roc)
roc

roc2 <- plot.roc(data$churn, score[,1],
        main="ROC-кривая для модели дерева CHAID",  
        percent=TRUE, ci=TRUE, # вычислить AUC
        print.auc=TRUE) # напечатать значение AUC (вместе с довер. интервалом)

ci.thresholds(roc)
coords(roc, # ROC-кривая модели 
       "best", # вид критерия 
       best.method="youden", # способ расчета критерия
       ret=c("threshold", "spec", "sens")) # какие параметры возвращать

data.t <- table(data$churn)
w <- as.numeric(data.t[2]/(data.t[1]+data.t[2]))

coords(roc, # ROC-кривая модели
       "best", # вид критерия
       best.method="youden", # способ расчета критерия
       best.weights=c(1, w), # подставляем вычисленную долю ушедших в выборке
       ret=c("threshold", "spec", "sens")) # какие параметры возвращать

coords(roc,"best", best.method="youden",
       best.weights=c(2, 0.5), # первый параметр увеличен вдвое
       ret=c("threshold", "spec", "sens"))

# 7.1.4 Получение спрогнозированных классов зависимой переменной

predict(model.chaid, data, type="response")[4427:4431]
result <- predict(model.chaid, data, type="response")
table(data$churn, result)

# 7.1.5 Сохранение прогнозов

churnprob<-data.frame(data, result=score)
write.csv(churnprob, "churnprob.csv")

# 7.1.6 Применение модели к новым данным

churnprognoz <- read.csv2("C:/Trees/Churn_new.csv")
str(churnprognoz)
churnprognoz$longdist2 <- ordered(churnprognoz$longdist, levels = c("<2", "2--8", " 9--14", "15-20", "21+"))
churnprognoz$longdist <- NULL

churnprognoz$local2 <- ordered(churnprognoz$local, levels = c("<8", "8--20", "21-35", "36-55", "56+"))
churnprognoz$local <- NULL

churnprognoz$incomecat2 <- ordered(churnprognoz$incomecat, levels = c("<15", "15-35", "36-50", "51-65", "66+"))
churnprognoz$incomecat <- NULL

churnprognoz$agecat2 <- ordered(churnprognoz$agecat, levels = c("<31", "31-45", "46-58", "59-70", "71+"))
churnprognoz$agecat <- NULL

str(churnprognoz)
predict(model.chaid, churnprognoz, type="prob")
newscore <- predict(model.chaid, churnprognoz, type="prob")
newclients_churnprognoz<-data.frame(churnprognoz, result=newscore)
write.csv(newclients_churnprognoz,
          "newclients_churnprognoz.csv")

# 7.1.7 Проверка модели

# 7.1.7.1 Однократное случайное разбиение набора данных на обучающую и контрольную выборки

data <- read.csv2("C:/Trees/Churn_binned.csv")

data$longdist2 <- ordered(data$longdist, levels = c("<2", "2--8", " 9--14", "15-20", "21+"))
data$longdist <- NULL
data$local2 <- ordered(data$local, levels = c("<8", "8--20", "21-35", "36-55", "56+"))
data$local <- NULL
data$incomecat2 <- ordered(data$incomecat, levels = c("<15", "15-35", "36-50", "51-65", "66+"))
data$incomecat <- NULL
data$agecat2 <- ordered(data$agecat, levels = c("<31", "31-45", "46-58", "59-70", "71+"))
data$agecat <- NULL

set.seed(42)

data$random_number <- runif(nrow(data),0,1)
development <- data[ which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]

development$random_number <- NULL
holdout$random_number <- NULL

library(CHAID)

chaid.model  <- chaid(churn ~ . , 
                      control = chaid_control
                      (minprob = 0.001,
                      minsplit = 500, minbucket = 250),
                      data=development)

score_dev <- predict(chaid.model, development, type = "prob")
score_hold <- predict(chaid.model, holdout, type = "prob")

library(pROC)

roc_dev <-plot(roc(development$churn, score_dev[,1], ci=TRUE), percent=TRUE, print.auc=TRUE, col="#1c61b6")
roc_hold <-plot(roc(holdout$churn, score_hold[,1], ci=TRUE), percent=TRUE, 
         print.auc=TRUE, col="#008600", print.auc.y= .4, add=TRUE)
# Создаем легенды к ROC-кривым.
legend("bottomright", legend=c("Обучающая выборка", "Контрольная выборка"), 
       col=c("#1c61b6", "#008600"), lwd=2)

result_dev <- predict(chaid.model, development, type="response")
table(development$churn, result_dev)

result_hold <- predict(chaid.model, holdout, type="response")
table(holdout$churn, result_hold)

# 7.1.7.2 Многократное случайное разбиение набора данных на обучающую и контрольную выборки

data <- read.csv2("C:/Trees/Churn_binned.csv")
data$longdist2 <- ordered(data$longdist, levels = c("<2", "2--8", " 9--14", "15-20", "21+"))
data$longdist <- NULL
data$local2 <- ordered(data$local, levels = c("<8", "8--20", "21-35", "36-55", "56+"))
data$local <- NULL
data$incomecat2 <- ordered(data$incomecat, levels = c("<15", "15-35", "36-50", "51-65", "66+"))
data$incomecat <- NULL
data$agecat2 <- ordered(data$agecat, levels = c("<31", "31-45", "46-58", "59-70", "71+"))
data$agecat <- NULL
library(CHAID)
library(pROC)
chaid.auc = NULL
set.seed(42)
for (i in 1:1000) {
  data$random_number <- runif(nrow(data),0,1)
  development <- data[ which(data$random_number > 0.3), ]
  holdout     <- data[ which(data$random_number <= 0.3), ]
  development$random_number <- NULL
  holdout$random_number <- NULL
  chaid.model  <- chaid(churn ~ . , 
                        control = chaid_control
                        (minprob = 0.001,
                        minsplit = 500, minbucket = 250),
                        data=development)
  chaid.score <- predict(chaid.model, holdout, type = "prob")
  chaid.roc <- roc(holdout$churn, chaid.score[,1])
  chaid.auc[i] <- chaid.roc$auc
}

mean(chaid.auc)
ci.auc(chaid.roc)

# 7.1.7.3 Перекрестная проверка

data <- read.csv2("C:/Trees/Churn_binned.csv")
data$longdist2 <- ordered(data$longdist, levels = c("<2", "2--8", " 9--14", "15-20", "21+"))
data$longdist <- NULL
data$local2 <- ordered(data$local, levels = c("<8", "8--20", "21-35", "36-55", "56+"))
data$local <- NULL
data$incomecat2 <- ordered(data$incomecat, levels = c("<15", "15-35", "36-50", "51-65", "66+"))
data$incomecat <- NULL
data$agecat2 <- ordered(data$agecat, levels = c("<31", "31-45", "46-58", "59-70", "71+"))
data$agecat <- NULL
library(CHAID)

set.seed(42)

ind = cut(1:nrow(data), breaks=10, labels=F)

accuracies = c()
for (i in 1:10)  {
fit = chaid(churn ~., control = chaid_control (minprob = 0.001, 
            minsplit = 500, minbucket = 250), data[ind != i,])
predictions = predict(fit, data[ind == i, ! names(data) %in% c("churn")])
correct_count = sum(predictions == data[ind == i,c("churn")])
accuracies = append(correct_count / nrow(data[ind == i,]), accuracies)
}

accuracies

mean(accuracies)

# 7.2 Биннинг переменных

# 7.2.1 Биннинг в пакете rattle

data <- read.csv2("C:/Trees/Churn_rattle.csv")
library(rattle)
str(data)

longdist2<- binning(data$longdist, bins=3,
            method="quantile", labels=NULL, 
            ordered=TRUE, weights=NULL)
age2<- binning(data$age, bins=5, 
       method="quantile", labels=NULL, 
       ordered=TRUE, weights=NULL)

data<-data.frame(data, longdist2)
data<-data.frame(data, age2)

data$longdist<- NULL
data$age<- NULL

str(data)

# 7.2.2 Биннинг в пакете smbinning

data <- read.csv2("C:/Trees/Churn_smbinning.csv")
library(smbinning)
str(data)

result=smbinning (df=data, y="churn", x="age")

smbinning.sql(result)
smbinning.plot(ivout=result, option="WoE", 
               sub="Переменная age")
result2=smbinning.sumiv(df=data, y="churn")
result2
smbinning.sumiv.plot(sumivt=result2, cex=0.9)

data=smbinning.gen(df=data,ivout=result,
                   chrname="agebin")
data$age<- NULL



