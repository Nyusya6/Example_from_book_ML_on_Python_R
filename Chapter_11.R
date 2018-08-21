# Глава 11. Построение распределенного случайного леса с помощью пакета H2O

# Решение задачи классификации

# 11.1.1 Подготовка данных


# задаем постоянный CRAN репозиторий
cat(".Rprofile: Setting US repositoryn")
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
rm(r)


# устанавливаем пакет h2o
install.packages("h2o", repos=(c("http://s3.amazonaws.com/h2o-release/h2o/master/1497/R", getOption("repos"))))

# устанавливаем остальные необходимые пакеты
install.packages("car")
install.packages("Rcpp")
install.packages("imputeTS")

# загружаем пакет h2o
library(h2o)
# выполняем инициализацию
h2o.init(nthreads=-1, max_mem_size = "8G")

# загружаем данные.
data <- read.csv2("C:/Trees/Credit.csv")

# удаляем переменную client_id.
data$client_id <-NULL

# выполняем необходимые преобразования переменных.
data$gender <-as.factor(data$gender)
data$marital_status <-as.factor(data$marital_status)
data$job_position <-as.factor(data$job_position)
data$education <-as.factor(data$education)
data$tariff_id <-as.factor(data$tariff_id)
data$living_region <-as.factor(data$living_region)
data$okrug <-as.factor(data$okrug)
data$open_account_flg <-as.factor(data$open_account_flg)

# выделяем редкие категории в отдельную группу.
library(car)

data$job_position <- recode(data$job_position, 
                                   "c('5', '7','9', '12')='other'")
data$tariff_id <- recode(data$tariff_id, 
                                "c('14', '15', '16', '17', '24', '26', '27', '33')='other'")

# разбиваем набор данных на обучающую и контрольную выборки.
set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
holdout$random_number <- NULL
data$random_number <- NULL

# выполняем импутацию пропусков.
library(imputeTS)

development$avregzarplata <- na.replace(development$avregzarplata, fill = -1)
development$credit_count <- na.replace(development$credit_count, fill = -1)
development$overdue_credit_count <- na.replace(development$overdue_credit_count, fill = -1)

holdout$avregzarplata <- na.replace(holdout$avregzarplata, fill = -1)
holdout$credit_count <- na.replace(holdout$credit_count, fill = -1)
holdout$overdue_credit_count <- na.replace(holdout$overdue_credit_count, fill = -1)

development$living_region <- as.integer(development$living_region)
development$living_region <- na.replace(development$living_region, fill = 82)
development$living_region <- as.factor(development$living_region)

holdout$living_region <- as.integer(holdout$living_region)
holdout$living_region <- na.replace(holdout$living_region, fill = 82)
holdout$living_region <- as.factor(holdout$living_region)

development$okrug <- as.integer(development$okrug)
development$okrug <- na.replace(development$okrug, fill = 9)
development$okrug <- as.factor(development$okrug)

holdout$okrug <- as.integer(holdout$okrug)
holdout$okrug <- na.replace(holdout$okrug, fill = 9)
holdout$okrug <- as.factor(holdout$okrug)

development$education <- as.integer(development$education)
development$education <- na.replace(development$education, fill = 4)
development$education <- as.factor(development$education)

holdout$education <- as.integer(holdout$education)
holdout$education <- na.replace(holdout$education, fill = 4)
holdout$education <- as.factor(holdout$education)

development$marital_status <- as.integer(development$marital_status)
development$marital_status <- na.replace(development$marital_status, fill = 3)
development$marital_status <- as.factor(development$marital_status)

holdout$marital_status <- as.integer(holdout$marital_status)
holdout$marital_status <- na.replace(holdout$marital_status, fill = 3)
holdout$marital_status <- as.factor(holdout$marital_status)

development$age <- na.replace(development$age, fill = 34)
holdout$age <- na.replace(holdout$age, fill = 34)

development$credit_sum <- na.replace(development$credit_sum, fill = 21228)
holdout$credit_sum <- na.replace(holdout$credit_sum, fill = 21228)

development$credit_month <- na.replace(development$credit_month, fill = 10)
holdout$credit_month <- na.replace(holdout$credit_month, fill = 10)

development$score_shk <- na.replace(development$score_shk, fill = 0.461679)
holdout$score_shk <- na.replace(holdout$score_shk, fill = 0.461679)

development$monthly_income <- na.replace(development$monthly_income, fill = 35000)
holdout$monthly_income <- na.replace(holdout$monthly_income, fill = 35000)

str(development)

str(holdout)

train <- as.h2o(development)
valid <- as.h2o(holdout)

str(train)


# 11.1.2 Построение модели и работа с результатами

rf1 <- h2o.randomForest(         ## функция h2o.randomForest
  training_frame = train,        ## фрейм H2O для обучения
  validation_frame = valid,      ## фрейм H2O для проверки
  model_id="RF_credit",          ## задаем идентификатор модели
  x=1:15,                        ## столбцы предикторов, указаны индексы столбцов
  y=16,                          ## индекс зависимой переменной
  ntrees = 600,                  ## используем 600 деревьев,
                                 ## по умолчанию строится 50 деревьев
  seed = 1000000)                ## задаем стартовое значение

summary(rf1)

rf1_pred <- h2o.predict(rf1, newdata = valid)

rf1_pred
h2o.exportFile(rf1_pred, path = "C:/Trees/predictions.csv", force=TRUE)

plot(h2o.performance(rf1))

plot(h2o.performance(rf1, valid=TRUE))

# 11.1.3 Сохранение модели и применение к новым данным

path <- h2o.saveModel(rf1, path="C:\\Trees\\mybest_model", force=TRUE)
print(path)

m_loaded <- h2o.loadModel("C:\\Trees\\mybest_model\\RF_credit")

summary(m_loaded)

# загружаем новые данные.
newclients <- read.csv2("C:/Trees/Credit_new.csv")

# удаляем переменную client_id.
newclients$client_id <-NULL

# выполняем необходимые преобразования переменных.
newclients$gender <-as.factor(newclients$gender)
newclients$marital_status <-as.factor(newclients$marital_status)
newclients$job_position <-as.factor(newclients$job_position)
newclients$education <-as.factor(newclients$education)
newclients$tariff_id <-as.factor(newclients$tariff_id)
newclients$living_region <-as.factor(newclients$living_region)
newclients$okrug <-as.factor(newclients$okrug)

# выделяем редкие категории в отдельную группу.
newclients$job_position <- recode(newclients$job_position, 
                                   "c('5', '7','9', '12')='other'")
newclients$tariff_id <- recode(newclients$tariff_id, 
                                "c('14', '15', '16', '17', '24', '26', '27', '33')='other'")

# выполняем импутацию пропусков.
library(imputeTS)

newclients$avregzarplata <- na.replace(newclients$avregzarplata, fill = -1)
newclients$credit_count <- na.replace(newclients$credit_count, fill = -1)
newclients$overdue_credit_count <- na.replace(newclients$overdue_credit_count, fill = -1)

newclients$living_region <- as.integer(newclients$living_region)
newclients$living_region <- na.replace(newclients$living_region, fill = 82)
newclients$living_region <- as.factor(newclients$living_region)

newclients$okrug <- as.integer(newclients$okrug)
newclients$okrug <- na.replace(newclients$okrug, fill = 9)
newclients$okrug <- as.factor(newclients$okrug)

newclients$education <- as.integer(newclients$education)
newclients$education <- na.replace(newclients$education, fill = 4)
newclients$education <- as.factor(newclients$education)

newclients$marital_status <- as.integer(newclients$marital_status)
newclients$marital_status <- na.replace(newclients$marital_status, fill = 3)
newclients$marital_status <- as.factor(newclients$marital_status)

newclients$age <- na.replace(newclients$age, fill = 34)
newclients$credit_sum <- na.replace(newclients$credit_sum, fill = 21228)
newclients$credit_month <- na.replace(newclients$credit_month, fill = 10)
newclients$score_shk <- na.replace(newclients$score_shk, fill = 0.461679)
newclients$monthly_income <- na.replace(newclients$monthly_income, fill = 35000)

# преобразовываем датафрейм R во фрейм H2O.
newclients <- as.h2o(newclients)

# получаем прогнозы для новых данных
new_pred <- h2o.predict(m_loaded, newdata = newclients)

# 11.1.4 Поиск оптимальных значений параметров с помощью решетчатого поиска

# запускаем решетчатый поиск
grid <- h2o.grid(x=c(1:15), y=16, training_frame=train, validation_frame=valid,
                 algorithm="drf", grid_id="results_grid",
                 hyper_params = list(ntrees=c(600, 700, 800), max_depth = c(14, 16, 18)), 
                 stopping_metric="AUC", seed=10000)

# смотрим результаты решетчатого поиска
summary(grid)

# отсортируем полученные модели в порядке убывания AUC
sortedGrid <- h2o.getGrid("results_grid", sort_by = "auc", decreasing = TRUE)
sortedGrid

# загружаем данные.
data <- read.csv2("C:/Trees/Response.csv")

# выполняем необходимые преобразования.
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

# преобразуем датафрейм R во фрейм H2O.
frame <- as.h2o(data)

# разбиваем фрейм на обучающую, контрольную и тестовую выборки.
splits <- h2o.splitFrame(data=frame, ratios=c(0.7, 0.15), seed=10000)
	tr <- splits[[1]]
	val <- splits[[2]]
	test <- splits[[3]]

# запускаем решетчатый поиск
grid2 <- h2o.grid(x=c(1:13), y=14, training_frame=tr, validation_frame=val,
                 algorithm="drf", ntrees=300, grid_id="results_grid2",
                 hyper_params = list(mtries=c(3:6), max_depth=c(10, 12, 14, 16)), 
                 stopping_metric="AUC", seed=10000)

sortedGrid2 <- h2o.getGrid("results_grid2", sort_by = "auc", decreasing = TRUE)
sortedGrid2

best_model_id <- sortedGrid2@model_ids[[1]]
best_model <- h2o.getModel(best_model_id)

best_model

best_perf <- h2o.performance(model = best_model, newdata = test)
h2o.auc(best_perf)

data <- read.csv2("C:/Trees/Bankloan.csv")

data$ed <-as.factor(data$ed)
data$default <-as.factor(data$default)

set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
holdout$random_number <- NULL

training <- as.h2o(development)
validation <- as.h2o(holdout)

grid3 <- h2o.grid(x=c(1:8), y=9, training_frame=training, validation_frame=validation,
                 nfolds=10, keep_cross_validation_predictions=TRUE,
                 algorithm="drf", ntrees=300, grid_id="results_grid3",
                 hyper_params=list(mtries=c(3:5), max_depth=c(10, 12, 14, 16)), 
                 stopping_metric="AUC", seed=10000)

sortedGrid3 <- h2o.getGrid("results_grid3", sort_by = "auc", decreasing = TRUE)

sortedGrid3

optimal_model_id <- sortedGrid3@model_ids[[1]]
optimal_model <- h2o.getModel(optimal_model_id)

optimal_model

# 11.2 Решение задачи регрессии

# загружаем данные.
data <- read.csv2("C:/Trees/Response.csv")

# выполняем необходимые преобразования.
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

# разбиваем набор данных на обучающую и контрольную выборки.
set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
holdout$random_number <- NULL
data$random_number <- NULL

# смотрим данные, чтобы узнать какой индекс имеет зависимая переменная cus_leng.
str(development)

# для удобства перенесем переменную response в начало датафрейма, чтобы
# зависимая переменная cus_leng стала последней.
development<-development[,c(which(colnames(development)=="response"),
which(colnames(development)!="response"))]
holdout<-holdout[,c(which(colnames(holdout)=="response"),
which(colnames(holdout)!="response"))]

# преобразовываем датафреймы R во фреймы H2O.
train <- as.h2o(development)
valid <- as.h2o(holdout)

rf2 <- h2o.randomForest(x=c(1:13), y=14, training_frame = train, 
                        validation_frame = valid, ntrees=600, 
                        score_tree_interval=100, seed=1000000) 

summary(rf2)


