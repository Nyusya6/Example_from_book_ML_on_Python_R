# Глава 10 Построение случайного леса с помощью пакета R ranger

# 10.1 Построение ансамбля деревьев классификации

# Задаем постоянный CRAN репозиторий
cat(".Rprofile: Setting US repositoryn")
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
rm(r)

# Устанавливаем необходимые для работы пакеты
install.packages("dplyr")
install.packages("imputeTS")
install.packages("imputeMissings")
install.packages("Hmisc")
install.packages("memisc")
install.packages("car")
install.packages("ranger")
install.packages("pROC")
install.packages("survival")

# Загружаем данные
data <- read.csv2("C:/Trees/Credit.csv")

# Смотрим типы переменных
str(data)

# Удаляем идентификационную переменную client_id
data$client_id <-NULL

# Выполняем преобразования типов переменных
data$gender <-as.factor(data$gender)
data$marital_status <-as.factor(data$marital_status)
data$job_position <-as.factor(data$job_position)
data$education <-as.factor(data$education)
data$tariff_id <-as.factor(data$tariff_id)
data$living_region <-as.factor(data$living_region)
data$okrug <-as.factor(data$okrug)
data$open_account_flg <-as.factor(data$open_account_flg)

# Смотрим, как изменились типы переменных
str(data)

# Выводим сводку по пропускам
sapply(data, function(x) sum(is.na(x)))

# Разбиваем данные на обучающую и контрольную выборки
set.seed(42)
data$random_number <- runif(nrow(data),0,1)
development <- data[which(data$random_number > 0.3), ]
holdout <- data[ which(data$random_number <= 0.3), ]
development$random_number <- NULL
holdout$random_number <- NULL
data$random_number <- NULL

# Смотрим обучающую и контрольную выборки
str(development)
str(holdout)

# Загружаем пакет imputeTS
library(imputeTS)

# Выполняем с помощью функции na.replace пакета imputeTS импутацию переменных avregzarplata,
# credit_count и overdue_credit_count значением -1
development$avregzarplata <- na.replace(development$avregzarplata, fill = -1)
development$credit_count <- na.replace(development$credit_count, fill = -1)
development$overdue_credit_count <- na.replace(development$overdue_credit_count, fill = -1)

holdout$avregzarplata <- na.replace(holdout$avregzarplata, fill = -1)
holdout$credit_count <- na.replace(holdout$credit_count, fill = -1)
holdout$overdue_credit_count <- na.replace(holdout$overdue_credit_count, fill = -1)

# Выполняем с помощью функции na.replace пакета imputeTS импутацию переменной
# living_region значением 82 (создаем отдельную категорию для пропусков)

development$living_region <- as.integer(development$living_region)
development$living_region <- na.replace(development$living_region, fill = 82)
development$living_region <- as.factor(development$living_region)

holdout$living_region <- as.integer(holdout$living_region)
holdout$living_region <- na.replace(holdout$living_region, fill = 82)
holdout$living_region <- as.factor(holdout$living_region)

# Выполняем с помощью функции na.replace пакета imputeTS импутацию переменной
# living_region значением 9 (создаем отдельную категорию для пропусков)
development$okrug <- as.integer(development$okrug)
development$okrug <- na.replace(development$okrug, fill = 9)
development$okrug <- as.factor(development$okrug)

holdout$okrug <- as.integer(holdout$okrug)
holdout$okrug <- na.replace(holdout$okrug, fill = 9)
holdout$okrug <- as.factor(holdout$okrug)


# Загружаем пакет imputeMissings
library(imputeMissings)

# Вычисляем с помощью функции compute пакета imputeMissings медианы для количественных
# переменных и моды для категориальных переменных
values <- compute(development)
values

# С помощью функции colSums пакета imputeMissings выводим сводку по пропускам
colSums(is.na(development))

# Выполняем импутацию модами и медианами
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

# Выводим сводки по пропускам для обучающей и контрольной выборок
sapply(development, function(x) sum(is.na(x)))

sapply(holdout, function(x) sum(is.na(x)))

# Смотрим данные
str(development)
str(holdout)


# Загружаем пакет Hmisc и с помощью функции describe этого пакета 
# выводим подробную информацию о переменных
library(Hmisc)
describe(development)
describe(holdout)

# Создаем датафрейм tmp_dev с переменными job_position и open_account_flg 
tmp_dev <- development[,c(4,16)]

# Смотрим датафрейм tmp_dev
str(tmp_dev)

# Записываем датафрейм tmp_dev как CSV файл
write.csv(tmp_dev, "C:/Trees/tmp_dev.csv")

# Загружаем пакет memisc и с помощью его функции recode создаем переменную
# jobcat с укрупненными категориями
library(memisc)
development$jobcat <- recode(development$job_position,
  "1" <- c("15", "16", "17", "18"),
  "2" <- c("14", "4", "2"),
  "3" <- c("1", "6", "11", "13"),
  otherwise="4")

holdout$jobcat <- recode(holdout$job_position,
  "1" <- c("15", "16", "17", "18"),
  "2" <- c("14", "4", "2"),
  "3" <- c("1", "6", "11", "13"),
  otherwise="4")

# С помощью функции describe пакета Hmisc выводим подробную информацию о переменных
describe(development)

# Записываем обучающий и контрольный датафреймы с переменной living_region в CSV файлы
write.csv(development$living_region, "C:/Trees/Development.csv")
write.csv(holdout$living_region, "C:/Trees/Holdout.csv")

# Загружаем обучающий и контрольный CSV файлы с переменной living_region_freq
tmp_dev <- read.csv2("C:/Trees/varfreq_dev.csv", sep=',')
tmp_hold <- read.csv2("C:/Trees/varfreq_hold.csv", sep=',')

# Смотрим датафрейм tmp_dev
str(tmp_dev)

# Записываем переменные living_region_freq в обучающий и контрольный датафреймы
development$living_region_freq <- tmp_dev$living_region_freq
holdout$living_region_freq <- tmp_hold$living_region_freq

# Смотрим данные
str(development)
str(holdout)

# Загружаем пакет dplyr и создаем переменную living_region_freq2, у которой
# каждое значение - количество наблюдений в категории living_region 

library(dplyr)
tmp <-data.frame(development)
tmp <- tmp %>% 
group_by(living_region) %>%
mutate(living_region_freq2 = n())
development$living_region_freq2 <-tmp$living_region_freq2

tmp2 <-data.frame(holdout)
tmp2 <- tmp2 %>% 
group_by(living_region) %>%
mutate(living_region_freq2 = n())
holdout$living_region_freq2 <-tmp2$living_region_freq2

# Смотрим данные
str(development)
str(holdout)

# Удаляем объекты tmp и tmp2
rm(tmp, tmp2)

# Создаем резервные копии обучающей и контрольной выборок и удаляем
# новые переменные в исходных обучающей и контрольной выборках
tmpdev <-data.frame(development)
tmphold <-data.frame(holdout)
development$jobcat <- NULL
holdout$jobcat <- NULL
development$living_region_freq <- NULL
holdout$living_region_freq <- NULL
development$living_region_freq2 <- NULL
holdout$living_region_freq2 <- NULL

# Загружаем пакет ranger
library(ranger)

# Строим ансамбль деревьев классификации
model <- ranger(open_account_flg~., development, seed=152)

# Выводим информацию о качестве модели
print(model)

# Записываем результаты модели для контрольной выборки
result <- predict(model, holdout, type="response", seed=152)

# Смотрим структуру объекта result
str(result)

# Смотрим матрицу ошибок для контрольной выборки
table(holdout$open_account_flg, result$predictions)

# 10.2 Построение случайного леса вероятностей

# Строим лес вероятностей
model <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, seed=152)

# Выводим информацию о качестве модели
print(model)

# Записываем результаты модели для контрольной выборки
result <- predict(model, holdout, type="response", seed=152)

# Смотрим структуру объекта result
str(result)

# Загружаем пакет pROC и вычисляем AUC
library(pROC)
roc <- roc(holdout$open_account_flg, result$predictions[,1], ci=TRUE)
roc

# Записываем переменную с укрупненными категориями jobcat в обучающую
# и контрольную выборки
development$jobcat <- tmpdev$jobcat
holdout$jobcat <- tmphold$jobcat

# Строим модель и вычисляем AUC
model2 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, seed=152)
result2 <- predict(model2, holdout, type="response", seed=152)

roc2 <- roc(holdout$open_account_flg, result2$predictions[,1], ci=TRUE)
roc2

# Удаляем переменную jobcat в обучающей и контрольной выборках
development$jobcat <- NULL
holdout$jobcat <- NULL

# Загружаем пакет dplyr и выподняем "плотное" ранжирование переменных
# credit_month и credit_sum  
library(dplyr)
enrichment <-data.frame(development)
enrichment <- enrichment %>% 
mutate(credit_month_rank=dense_rank(desc(credit_month)))
enrichment <- enrichment %>% 
mutate(credit_sum_rank=dense_rank(desc(credit_sum)))
development$credit_month_rank <- enrichment$credit_month_rank
development$credit_sum_rank <-enrichment$credit_sum_rank

enrichment2 <-data.frame(holdout)
enrichment2 <- enrichment2 %>% 
mutate(credit_month_rank=dense_rank(desc(credit_month)))
enrichment2 <- enrichment2 %>% 
mutate(credit_sum_rank=dense_rank(desc(credit_sum)))
holdout$credit_month_rank <- enrichment2$credit_month_rank
holdout$credit_sum_rank <-enrichment2$credit_sum_rank

# Строим модель и вычисляем AUC
model3 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, seed=152)
result3 <- predict(model3, holdout, type="response", seed=152)

roc3 <- roc(holdout$open_account_flg, result3$predictions[,1], ci=TRUE)
roc3

# Удаляем переменные credit_month_rank и credit_sum_rank в обучающей и контрольной выборках
development$credit_month_rank <- NULL
development$credit_sum_rank <- NULL
holdout$credit_month_rank <- NULL
holdout$credit_sum_rank <- NULL

# Создаем переменную credsum_to_avrzarplata, которая является отношением суммы кредита
# к средней заработной плате
development$credsum_to_avrzarplata <- development$credit_sum/development$avregzarplata
holdout$credsum_to_avrzarplata <- holdout$credit_sum/ holdout$avregzarplata

# Заменяем значения Inf на 0
development$credsum_to_avrzarplata[is.infinite(development$credsum_to_avrzarplata)] <- 0
development$credsum_to_avrzarplata[is.na(development $credsum_to_avrzarplata)] <- 0
holdout$credsum_to_avrzarplata[is.infinite(holdout$credsum_to_avrzarplata)] <- 0
holdout$credsum_to_avrzarplata[is.na(holdout$credsum_to_avrzarplata)] <- 0

# Строим модель и вычисляем AUC
model4 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, seed=152)
result4 <- predict(model4, holdout, type="response", seed=152)

roc4 <- roc(holdout$open_account_flg, result4$predictions[,1], ci=TRUE)
roc4

# Удаляем переменную credsum_to_avrzarplata в обучающей и контрольной выборках
development$credsum_to_avrzarplata <- NULL
holdout$credsum_to_avrzarplata <- NULL

# Создаем переменную income_to_mean_income_by_gen_ed, которая является отношением месячного 
# заработка клиента к среднему месячному заработку по полу и образованию
enrichment <- enrichment %>% 
group_by(gender, education) %>% 
mutate(income_to_mean_income_by_gen_ed = monthly_income/mean(monthly_income))
development$income_to_mean_income_by_gen_ed <-enrichment$income_to_mean_income_by_gen_ed

enrichment2 <- enrichment2 %>% 
group_by(gender, education) %>% 
mutate(income_to_mean_income_by_gen_ed = monthly_income/mean(monthly_income))
holdout$income_to_mean_income_by_gen_ed <-enrichment2$income_to_mean_income_by_gen_ed

# Строим модель и вычисляем AUC
model5 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, seed=152)
result5 <- predict(model5, holdout, type="response", seed=152)

roc5 <- roc(holdout$open_account_flg, result5$predictions[,1], ci=TRUE)
roc5

# Удаляем переменную income_to_mean_income_by_gen_ed в обучающей и контрольной выборках
development$income_to_mean_income_by_gen_ed <- NULL
holdout$income_to_mean_income_by_gen_ed <- NULL

# Отсоединяем пакет dplyr
detach("package:dplyr", unload=TRUE)

# Удаляем ненужные модели и результаты
rm(model2, model3, model4, model5, result2, result3, result4, result5)

# Создаем переменную mean_score_zarplata, которая является усредненным значением переменных
# score_shk и avregzarplata
development$mean_score_zarplata=rowMeans(development[,c("score_shk", "avregzarplata")], na.rm=TRUE)
holdout$mean_score_zarplata=rowMeans(holdout[,c("score_shk", "avregzarplata")], na.rm=TRUE)

# Строим модель и вычисляем AUC
model6 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, seed=152)
result6 <- predict(model6, holdout, type="response", seed=152)

roc6 <- roc(holdout$open_account_flg, result6$predictions[,1], ci=TRUE)
roc6

# Удаляем переменную mean_score_zarplata в обучающей и контрольной выборках
development$mean_score_zarplata <- NULL
holdout$mean_score_zarplata <- NULL

# Загружаем пакет memisc и с помощью его функции recode создаем переменную tariffcat
# с укрупненными категориями переменной tariff_id 
library(memisc)
development$tariffcat <- recode(development$tariff_id,
  "1" <- c("28", "12", "4", "23", "14"),
  "2" <- c("2", "21", "13"),
  "3" <- c("25"),
  "4" <- c("1", "30", "10", "11", "8", "9", "24", "26", "16", "15", "33", "27"),
  "5" <- c("19", "5", "17"),
  "6" <- c("20", "29", "3", "22", "6", "7", "32"),
  otherwise="7")

holdout$tariffcat <- recode(holdout$tariff_id,
  "1" <- c("28", "12", "4", "23", "14"),
  "2" <- c("2", "21", "13"),
  "3" <- c("25"),
  "4" <- c("1", "30", "10", "11", "8", "9", "24", "26", "16", "15", "33", "27"),
  "5" <- c("19", "5", "17"),
  "6" <- c("20", "29", "3", "22", "6", "7", "32"),
  otherwise="7")

# Строим модель и вычисляем AUC
model7 <- ranger(open_account_flg~., development, importance="impurity", 
                 probability=TRUE, seed=152)
result7 <- predict(model7, holdout, type="response", seed=152)

roc7 <- roc(holdout$open_account_flg, result7$predictions[,1], ci=TRUE)
roc7


# Создаем переменную scorecat на основе биннинга переменной score_shk
development$scorecat<-cut(development$score_shk, c(0,0.361,0.397,0.430,0.576,0.643,1))
holdout$scorecat<-cut(holdout$score_shk, c(0,0.361,0.397,0.430,0.576,0.643,1))

development$scorecat <- as.integer(development$scorecat)
development$scorecat <- na.replace(development$scorecat, fill = 1)
development$scorecat <- as.factor(development$scorecat)

holdout$scorecat <- as.integer(holdout$scorecat)
holdout$scorecat <- na.replace(holdout$scorecat, fill = 1)
holdout$scorecat <- as.factor(holdout$scorecat)

# Удаляем переменную mean_scorecat в обучающей и контрольной выборках
development$scorecat <- NULL
holdout$scorecat <- NULL

# Строим модель и вычисляем AUC
model8 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, min.node.size=120, seed=152)
result8 <- predict(model8, holdout, type="response", seed=152)
roc8 <- roc(holdout$open_account_flg, result8$predictions[,1], ci=TRUE)
roc8

# Смотрим распределение значений переменных job_position и tariff_id
summary(development$job_position)
summary(holdout$job_position)

summary(development$tariff_id)
summary(holdout$tariff_id)

# Отсоединяем пакет memisc, чтобы не было конфликта между одноименными функциями recode пакетов
detach("package:memisc", unload=TRUE)

# Загружаем пакет car и с помощью его функции recode объединяем редкие категории
# переменных job_position и tariff_id с самой часто встречающеся категорией
library(car)
development$job_position <- recode(development$job_position, 
                                   "c('5', '7','9', '12')='14'")
holdout$job_position <- recode(holdout$job_position, 
                               "c('5', '7','9', '12')='14'")
development$tariff_id <- recode(development$tariff_id, 
                                "c('14', '15', '16', '17', '24', '26', '27', '33')='2'")
holdout$tariff_id <- recode(holdout$tariff_id, 
                            "c('14', '15', '16', '17', '24', '26', '27', '33')='2'")

# Смотрим распределение значений преобразованных переменных job_position и tariff_id
summary(development$job_position)
summary(holdout$job_position)

summary(development$tariff_id)
summary(holdout$tariff_id)

# Строим модель и вычисляем AUC
model9 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, min.node.size=140, seed=152)
result9 <- predict(model9, holdout, type="response", seed=152)
roc9 <- roc(holdout$open_account_flg, result9$predictions[,1], ci=TRUE)
roc9

# Удаляем преобразованные переменные и записываем исходные переменные 
# job_position и tariff_id из резервных копий
development$job_position <- NULL
holdout$job_position <- NULL
development$tariff_id <- NULL
holdout$tariff_id <- NULL
development$job_position <- tmpdev$job_position
holdout$job_position <- tmphold$job_position
development$tariff_id <- tmpdev$tariff_id
holdout$tariff_id <- tmphold$tariff_id

# Кодируем редкие категории как отдельную категорию "other"
development$job_position <- recode(development$job_position, 
                                   "c('5', '7','9', '12')='other'")
holdout$job_position <- recode(holdout$job_position, 
                               "c('5', '7','9', '12')='other'")
development$tariff_id <- recode(development$tariff_id, 
                                "c('14', '15', '16', '17', '24', '26', '27', '33')='other'")
holdout$tariff_id <- recode(holdout$tariff_id, 
                            "c('14', '15', '16', '17', '24', '26', '27', '33')='other'")

# Смотрим распределение значений преобразованных переменных job_position и tariff_id
summary(development$job_position)
summary(holdout$job_position)

summary(development$tariff_id)
summary(holdout$tariff_id)

# Строим модель и вычисляем AUC
model10 <- ranger(open_account_flg~., development, importance="impurity", 
                probability=TRUE, min.node.size=140, seed=152)
result10 <- predict(model10, holdout, type="response", seed=152)
roc10 <- roc(holdout$open_account_flg, result10$predictions[,1], ci=TRUE)
roc10

# 10.3 Построение случайного леса выживаемости

# Загружаем данные
data <- read.csv2("C:/Trees/Telco.csv")

# Смотрим типы данных
str(data)

# Выполняем преобразования
data$region <- as.factor(data$region)
data$marital <- as.factor(data$marital)
data$retire <- as.factor(data$retire)
data$gender <- as.factor(data$gender)
data$custcat <- as.factor(data$custcat)
data$churn <- as.factor(data$churn)

# Смотрим типы данных
str(data)

# Загружаем пакет survival
library(survival)

# Строим ансамбль деревьев выживаемости
model <- ranger(Surv(tenure, churn) ~., data, importance="permutation", seed=152)

# Выводим информацию о качестве модели
print(model)

# Записываем результаты модели и смотрим структуру объекта result 
result <- predict(model, data, type="response", seed=152)
str(result)

# Строим кривые функции выживания для наблюдений 3 и 8
plot(model$unique.death.times, model$survival[3,], type='l', col='orange', ylim=c(0.4,1))
lines(model$unique.death.times, model$survival[8,], col='blue')

# Смотрим наблюдения 3 и 8
data[3,]
data[8,]

# Строим кривые функции кумулятивного риска для наблюдений 3 и 8
plot(model$unique.death.times, model$chf[3,], type='l', col='orange', ylim=c(0.0,1))
lines(model$unique.death.times, model$chf[8,], col='blue')

