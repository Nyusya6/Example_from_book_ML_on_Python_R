# Глава 9 Построение случайного леса с помощью пакета R randomForest

# 9.1 Построение ансамбля деревьев классификации

# 9.1.1 Подготовка данных

# Задаем постоянный CRAN репозиторий
cat(".Rprofile: Setting US repositoryn")
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
rm(r)

# Устанавливаем необходимые для работы пакеты
install.packages("pROC")
install.packages("randomForest")
install.packages("rpart")
install.packages("caret")

data <- read.csv2("C:/Trees/Response.csv")

data$mortgage <-as.factor(data$mortgage)
data$life_ins <-as.factor(data$life_ins)
data$cre_card <-as.factor(data$cre_card)
data$deb_card <-as.factor(data$deb_card)
data$mob_bank <-as.factor(data$mob_bank)
data$curr_acc <-as.factor(data$curr_acc)
data$internet <-as.factor(data$internet)
data$perloan <-as.factor(data$perloan)
data$savings <-as.factor(data$savings)
data$atm_user <-as.factor(data$atm_user)
data$markpl <-as.factor(data$markpl)
data$response <-as.factor(data$response)

set.seed(42)

data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]

development$random_number <- NULL
holdout$random_number <- NULL

str(development)

str(holdout)

# 9.1.2 Построение модели и получение OOB оценки качества

library(randomForest)

set.seed(152)
model<-randomForest(response ~., development, importance=TRUE)
print(model)

table(development$response, predict(model))

plot(model)

set.seed(152)
tuneRF(development[,1:13], development[,14], ntreeTry=500, trace=FALSE)

# 9.1.3 Важности предикторов

importance(model)
varImpPlot(model)

# 9.1.4 Графики частной зависимости

partialPlot(model, development, age, 1)
partialPlot(model, development, cus_leng, 1)
partialPlot(model, development, atm_user, 1)
partialPlot(model, development, atm_user, 0)

# 9.1.5 Вычисление вероятностей классов

prob <- predict(model, development, type="prob")
prob2 <- predict(model, holdout, type="prob")

tail(prob, 5)

tail(prob2, 5)

# Создаем таблицы данных, содержащие исходную информацию, 
# и спрогнозированные вероятности.
newdevelopment<-data.frame(development, result=prob)
newholdout<-data.frame(holdout, result=prob2)
# На основе таблиц данных записываем отдельные CSV файлы.
write.csv(newdevelopment, "resultRFcl_development.csv")
write.csv(newholdout, "resultRFcl_holdout.csv")

# 9.1.6 Оценка дискриминирующей способности модели с помощью ROC-кривой

# Загружаем пакет для построения ROC-кривых.
library(pROC)
# Строим ROC-кривые.
roc_dev<-plot(roc(development$response, prob[,2], ci=TRUE), percent=TRUE, 
             print.auc=TRUE, col="#1c61b6")
roc_hold<-plot(roc(holdout$response, prob2[,2], ci=TRUE), percent=TRUE, 
         print.auc=TRUE, col="#008600", print.auc.y= .4, add=TRUE)
# Создаем легенды к ROC-кривым.
legend("bottomright", legend=c("Обучающая выборка", "Контрольная выборка"), 
       col=c("#1c61b6", "#008600"), lwd=2)

roc(development$response, prob[,2], ci=TRUE)

roc(holdout$response, prob2[,2], ci=TRUE)

prob <- predict(model, type="prob")

# Строим ROC-кривые.
roc_dev<-plot(roc(development$response, prob[,2], ci=TRUE), percent=TRUE, 
             print.auc=TRUE, col="#1c61b6")
roc_hold<-plot(roc(holdout$response, prob2[,2], ci=TRUE), percent=TRUE, 
         print.auc=TRUE, col="#008600", print.auc.y= .4, add=TRUE)
# Создаем легенды к ROC-кривым.
legend("bottomright", legend=c("Обучающая выборка", "Контрольная выборка"), 
       col=c("#1c61b6", "#008600"), lwd=2)

# Загружаем пакет rpart.
library(rpart)
# Подгоняем модель CRT
model2<-rpart(response ~., development)
# Записываем вероятности, спрогнозированные деревом CRT, в объект score
score <- predict(model2, holdout, type="prob")
# Визуализируем обе ROC-кривые.
rf<-plot(roc(holdout$response, prob2[,2], ci=TRUE), percent=TRUE, print.auc=TRUE, col="#1c61b6")
crt<-plot(roc(holdout$response, score[,2], ci=TRUE), percent=TRUE, 
         print.auc=TRUE, col="#008600", print.auc.y= .4, add=TRUE)
# Создаем легенды к ROC-кривым.
legend("bottomright", legend=c("Случайный лес", "Дерево CRT"), 
       col=c("#1c61b6", "#008600"), lwd=2)

# 9.1.7 Получение спрогнозированных классов зависимой переменной

set.seed(152)
resp <- predict(model, development, type="response")

tail(resp, 5)

table(development$response, resp)

set.seed(152)
resp2 <- predict(model, holdout, type="response")

tail(resp2, 5)

table(holdout$response, resp2)

# 9.1.9 График зазора прогнозов

plot(margin(model))

# 9.2 Построение ансамбля деревьев регрессии
# 9.2.1 Подготовка данных

data <- read.csv2("C:/Trees/Income.csv")
str(data)

set.seed(42)

data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]

development$random_number <- NULL
holdout$random_number <- NULL

library(randomForest)
set.seed(152)

# 9.2.2 Построение модели и получение OOB оценки качества

model<-randomForest(income ~., development, importance=TRUE)
print(model)
plot(model)

# 9.2.3 Важности предикторов

importance(model)
varImpPlot(model)

# 9.2.4 Графики частной зависимости

partialPlot(model, development, local)
partialPlot(model, development, longdist)

# 9.2.5 Работа с прогнозами и вычисление среднеквадратической ошибки

predvalue_development <- predict(model, development)
tail(predvalue_development, 5)


MSE_development <- sum((development$income - predvalue_development)^2)/nrow(development)
MSE_development

predvalue_holdout <- predict(model, holdout)
tail(predvalue_holdout, 5)

MSE_holdout <- sum((holdout$income - predvalue_holdout)^2)/nrow(holdout)
MSE_holdout

# 9.2.6 Улучшение качества прогнозов

set.seed(152)
tuneRF(development[,1:10], development[,11], ntreeTry=500, trace=FALSE)

set.seed(152)
model2<-randomForest(income ~., development, mtry=6)

print(model2)

newpredvalue_holdout <- predict(model2, holdout)
newMSE_holdout <- sum((holdout$income - newpredvalue_holdout)^2)/nrow(holdout)
newMSE_holdout

# 9.2.7 Вычисление коэффициента детерминации

TSS <- sum((holdout$income-(mean(holdout$income)))^2)
RSS <- sum((holdout$income-newpredvalue_holdout)^2)
R2 <- 1-RSS/TSS
R2

# 9.2.8 Получение более развернутого вывода о качестве модели

Xtrain <-development[,1:10]
ytrain <-development[,11]
Xtest <-holdout[,1:10]
ytest <-holdout[,11]

set.seed(152)
model3 <- randomForest(Xtrain, ytrain, Xtest, ytest, mtry=6)

print(model3)

# 9.3 Поиск оптимальных параметров случайного леса с помощью пакета caret

# 9.3.1 Схема оптимизации параметров, реализованная в пакете caret

# 9.3.2 Настройка условий оптимизации

# 9.3.3 Поиск оптимальных параметров для задачи регрессии

data <- read.csv2("C:/Trees/Income.csv")
# разбиваем данные на обучающий и тестовый наборы.
set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
test <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
test$random_number <- NULL
# загружаем необходимые пакеты.
library(randomForest)
library(caret)
# задаем набор условий для оптимизации.
control <- trainControl(method="repeatedcv", number=10, repeats=10, search="grid")
set.seed(152)
# задаем сетку параметров для решетчатого поиска.
tunegrid <- expand.grid(.mtry=c(1:7))
# строим модели и выбираем оптимальную.
rf_gridsearch <- train(income~., data=development, method="rf", ntree=500,
                       tuneGrid=tunegrid, trControl=control)

print(rf_gridsearch)

plot(rf_gridsearch)

predictions <- predict(rf_gridsearch, test)
RMSE <- sqrt(sum(predictions - test$income)^2/length(predictions))
RMSE

TSS <- sum((test$income-(mean(test$income)))^2)
RSS <- sum((test$income-predictions)^2)
R2 <- 1-RSS/TSS
R2

# 9.3.4 Поиск оптимальных параметров для задачи классификации

data <- read.csv2("C:/Trees/Bankloan.csv")
# выполняем необходимые преобразования.
data$ed2 <- ordered(data$ed, levels = c("1", "2", "3", "4", "5"))
data$ed <- NULL
data$default <-as.factor(data$default)
# разбиваем данные на обучающий и тестовый наборы.
set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
test <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
test$random_number <- NULL
# загружаем необходимые пакеты.
library(randomForest)
library(caret)
# задаем набор условий для оптимизации.
control <- trainControl(method="repeatedcv", number=10, repeats=10, search="grid")
set.seed(152)
# задаем сетку параметров для решетчатого поиска.
tunegrid <- expand.grid(.mtry=c(1:7))
# строим модели и выбираем оптимальную.
rf_gridsearch2 <- train(default ~ ., data=development, method="rf", ntree=500,
                        tuneGrid=tunegrid, trControl=control)

print(rf_gridsearch2)

plot(rf_gridsearch2)

predval <- predict(rf_gridsearch2, test)
table(test$default, predval)

data <- read.csv2("C:/Trees/Bankloan.csv")
data$default2<-factor(data$default, levels=c(0, 1), labels=c("good","bad"),exclude=NULL)
data$default <- NULL
data$ed2 <- ordered(data$ed, levels = c("1", "2", "3", "4", "5"))
data$ed <- NULL
# разбиваем данные на обучающий и тестовый наборы.
set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
test <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
test$random_number <- NULL
# загружаем необходимые пакеты.
library(randomForest)
library(caret)
# задаем набор условий для оптимизации.
control <- trainControl(method="repeatedcv", number=10, repeats=10, search="grid",
                        classProbs=TRUE, summaryFunction=twoClassSummary)
set.seed(152)
# задаем сетку параметров для решетчатого поиска.
tunegrid <- expand.grid(.mtry=c(1:7))
# строим модели и выбираем оптимальную.
rf_gridsearch3 <- train(default2 ~ ., data=development, method="rf", metric="ROC", ntree=500,
                       tuneGrid=tunegrid, trControl=control)

print(rf_gridsearch3)

plot(rf_gridsearch3)

prob <- predict(rf_gridsearch3, test, type="prob")
library(pROC)
roc(test$default2, prob[,2], ci=TRUE)

plot(roc(test$default2, prob[,2], ci=TRUE))

customRF <- list(type = "Classification", library = "randomForest", loop = NULL)
customRF$parameters <- data.frame(parameter = c("mtry", "ntree"), 
                                  class = rep("numeric", 2), label = c("mtry", "ntree"))
customRF$grid <- function(x, y, len = NULL, search = "grid") {}
customRF$fit <- function(x, y, wts, param, lev, last, weights, classProbs, ...) {
randomForest(x, y, mtry = param$mtry, ntree=param$ntree, ...)
}
customRF$predict <- function(modelFit, newdata, preProc = NULL, submodels = NULL)
predict(modelFit, newdata)
customRF$prob <- function(modelFit, newdata, preProc = NULL, submodels = NULL)
predict(modelFit, newdata, type = "prob")
customRF$sort <- function(x) x[order(x[,1]),]
customRF$levels <- function(x) x$classes

control <- trainControl(method="repeatedcv", number=10, repeats=10,
                          classProbs=TRUE, summaryFunction=twoClassSummary)
tunegrid <- expand.grid(.mtry=c(1:7), .ntree=c(100, 200, 500, 600))
set.seed(152)
custom <- train(default2 ~ ., data=development, method=customRF, metric="ROC",            
                tuneGrid=tunegrid, trControl=control)

print(custom)

plot(custom)

pr <- predict(custom, test, type="prob")
roc(test$default2, pr[,2], ci=TRUE)

customRF2 <- list(type = "Classification", library = "randomForest", loop = NULL)
customRF2$parameters <- data.frame(parameter = c("mtry", "ntree", "nodesize"), 
                       class = rep("numeric", 3), label = c("mtry", "ntree", "nodesize"))
customRF2$grid <- function(x, y, len = NULL, search = "grid") {}
customRF2$fit <- function(x, y, wts, param, lev, last, weights, classProbs, ...) {
randomForest(x, y, mtry = param$mtry, ntree=param$ntree, nodesize=param$nodesize, ...)
}
customRF2$predict <- function(modelFit, newdata, preProc = NULL, submodels = NULL)
predict(modelFit, newdata)
customRF2$prob <- function(modelFit, newdata, preProc = NULL, submodels = NULL)
predict(modelFit, newdata, type = "prob")
customRF2$sort <- function(x) x[order(x[,1]),]
customRF2$levels <- function(x) x$classes

control <- trainControl(method="repeatedcv", number=10, repeats=10,
                          classProbs=TRUE, summaryFunction=twoClassSummary)
tunegrid <- expand.grid(.mtry=c(1:7), .ntree=c(100, 200, 500, 600), 
                        .nodesize=c(1, 5, 10, 15, 20))
set.seed(152)
custom2 <- train(default2 ~ ., data=development, method=customRF2, metric="ROC",            
                tuneGrid=tunegrid, trControl=control)

plot(custom2)

pr2 <- predict(custom2, test, type="prob")
roc(test$default2, pr2[,2], ci=TRUE)



