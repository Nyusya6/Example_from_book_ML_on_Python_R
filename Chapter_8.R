# Глава 8 Построение деревьев решений CRT с помощью пакета R rpart

# 8.1 Метод отсечения ветвей на основе стоимости-сложности с кросс-проверкой

# 8.2 Построение и интерпретация дерева классификации CRT
# 8.2.1 Подготовка данных

# Задаем постоянный CRAN репозиторий
cat(".Rprofile: Setting US repositoryn")
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
rm(r)

# Устанавливаем необходимые для работы пакеты
install.packages("pROC")
install.packages("RGtk2")
install.packages("rpart")
install.packages("rpart.plot")
install.packages("rattle")
install.packages("ROCR")

data <- read.csv2("C:/Trees/Response.csv")
str(data)

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

str(data)

# 8.2.2 Построение модели и работа с диаграммой дерева

library(rpart)

set.seed(42)
model<-rpart(response~., method='class', data, cp=0.001)
modelprintcp(model)
summary(model)
print(model)
plot(model)
text(model)

library(rpart.plot)
library(rattle)
fancyRpartPlot(model)

# 8.2.3 Прунинг дерева CRT

plotcp(model)
model2 <- prune(model, cp=0.00107)
fancyRpartPlot(model2)

model$cptable[which.min(model$cptable[,"xerror"]),"CP"]
model3<- prune(model,cp=model$cptable
         [which.min(model$cptable[,"xerror"]),"CP"]) 

# 8.2.4 Вычисление вероятностей классов

predict(model2, data, type="prob")
predict(model2, data, type="prob")[30230:30259]
score <- predict(model2, data, type="prob")

library(ROCR)
pred <- prediction(score[,2], data$response)
plot(performance(pred, "tpr", "fpr"))
abline(0, 1, lty = 2)

AUC = performance(pred,"auc")@y.values[[1]]
AUC

library(pROC)
roc(data$response, score[,1], ci=TRUE)

roc <- roc(data$response, score[,1], ci=TRUE)
plot(roc)

ci.auc(roc)

ci.auc(roc, method="bootstrap")

ci.auc(roc, method="bootstrap", boot.n=10000)

ci.auc(roc, method="bootstrap", boot.stratified=FALSE)

# 8.2.6 Сохранение спрогнозированных вероятностей

newdata<-data.frame(data, result=score)
write.csv(newdata, "result.csv")

# 8.2.7 Применение модели к новым данным

prognoz <- read.csv2("C:/Trees/Response_new.csv")
str(prognoz)

prognoz$mortgage <-as.factor(prognoz$mortgage)
prognoz$life_ins <-as.factor(prognoz$life_ins)
prognoz$cre_card <-as.factor(prognoz$cre_card)
prognoz$deb_card <-as.factor(prognoz$deb_card)
prognoz$mob_bank <-as.factor(prognoz$mob_bank)
prognoz$curr_acc <-as.factor(prognoz$curr_acc)
prognoz$internet <-as.factor(prognoz$internet)
prognoz$perloan <-as.factor(prognoz$perloan)
prognoz$savings <-as.factor(prognoz$savings)
prognoz$atm_user <-as.factor(prognoz$atm_user)
prognoz$markpl <-as.factor(prognoz$markpl)

str(prognoz)

predict(model2, prognoz, type="prob")

newscore <- predict(model2,prognoz, type="prob")

newclients_prognoz<-data.frame(prognoz, result=newscore)

write.csv(newclients_prognoz, "newclients_prognoz.csv")

# 8.3 Построение и интерпретация дерева регрессии CRT
# 8.3.1 Подготовка данных

data <- read.csv2("C:/Trees/Savings.csv")
str(data)

data$inccat2 <- ordered(data$inccat)
data$inccat <- NULL
data$ed2 <- ordered(data$ed, levels = c("Неполное среднее", "Среднее", "Среднее специальное", "Незаконченное высшее", "Высшее, ученая степень"))
data$ed <- NULL

str(data)

# 8.3.2 Построение модели и работа с диаграммой дерева

library(rpart)
set.seed(42)
model<-rpart(savings~., method='anova', data, cp=0.001)

printcp(model)
plotcp(model)

model2 <- prune(model, cp=0.0017)

plotcp(model2)
library(rpart.plot)
library(rattle)
fancyRpartPlot(model2)

predict(model2, data)[3105:3110]








