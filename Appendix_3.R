# Предварительные действия

# Задаем постоянный CRAN репозиторий
cat(".Rprofile: Setting US repositoryn")
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
rm(r)

# Устанавливаем пакет xlsx
install.packages("xlsx")

# Устанавливаем пакет openxlsx
install.packages("openxlsx")

# Устанавливаем пакет Hmisc
install.packages("Hmisc")

# Устанавливаем пакет imputeMissings
install.packages("imputeMissings")

# Устанавливаем пакет imputeTS
install.packages("imputeTS")

# Устанавливаем пакет dplyr
install.packages("dplyr")

# Устанавливаем пакет memisc
install.packages("memisc")

# Устанавливаем пакет rattle
install.packages("rattle")

# Устанавливаем пакет data.table
install.packages("data.table")

# Устанавливаем пакет anytime
install.packages("anytime")

# Устанавливаем пакет stringr
install.packages("stringr")

# 1. Создание датафрейма из файла Excel и CSV файла

# 1.1 Создаем датафрейм из файла Excel (первый способ)

# Во избежание ошибки java.lang.OutOfMemoryError: GC overhead limit exceeded
# увеличиваем размер доступной оперативной памяти (8 Гб) перед загрузкой 
# пакета rJava, который загружается как зависимость пакета xlsx
options(java.parameters = "-Xmx8192m")

# Загружаем пакет xlsx
library(xlsx)

# Считываем данные, указав индекс нужного рабочего листа
data <- read.xlsx2("C:/Trees/Credit.xlsx", sheetIndex=1)
head(data)

# 1.2 Создаем датафрейм из файла Excel (второй способ)

# Загружаем пакет openxlsx
library("openxlsx")

# Считываем данные, указав индекс нужного рабочего листа
data_xls <- read.xlsx("C:/Trees/Credit.xlsx", sheet=1)
head(data_xls)

# Отсоединяем пакет openxlsx
detach("package:openxlsx", unload=TRUE)

# 1.3 Создаем датафрейм из CSV файла, в котором используется кириллица и значения разделены точками с запятой

data2 <- read.csv2("C:/Trees/Example_semicolon.csv", sep = ';')
head(data2)

# 1.4 Создаем датафрейм из CSV файла, в котором используется кириллица и значения разделены запятыми

data3 <- read.csv2("C:/Trees/Example_comma.csv", sep = ',')
head(data3)

# 2. Запись датафрейма в CSV файл и файл Excel

# 2.1 Записываем на основе датафрейма CSV файл, в котором значения разделены запятыми (первый способ)

# Записываем CSV файл, по умолчанию в новом файле 
# создается дополнительный столбец ID
write.csv(data3, "C:/Trees/Example_from_R_to_csv_comma.csv")

# 2.2 Записываем на основе датафрейма CSV файл, в котором значения разделены запятыми (второй способ)

# Записываем CSV файл, по умолчанию создается дополнительный столбец ID, 
# у нас уже есть идентификационная переменная client_id, поэтому 
# с помощью параметра row.names=FALSE запретим создание столбца ID
write.table(data3, file="C:/Trees/Example_from_R_to_csv_comma2.csv", 
                        row.names=FALSE, sep=",")

# 2.3 Записываем на основе датафрейма CSV файл, в котором значения разделены точками с запятыми

# Записываем CSV файл, по умолчанию создается дополнительный столбец ID, 
# у нас уже есть идентификационная переменная client_id, поэтому 
# с помощью параметра row.names=FALSE запретим создание столбца ID  
write.table(data3, file="C:/Trees/Example_from_R_to_csv_semicolon.csv",       
            row.names=FALSE, sep=";")

# 2.4 Записываем на основе датафрейма файл Excel

# Записываем файл Excel, по умолчанию создается дополнительный столбец ID, 
# у нас уже есть идентификационная переменная client_id, поэтому 
# с помощью параметра row.names=FALSE запретим создание столбца ID  
write.xlsx2(data3, "C:/Trees/Example_from_R_to_xlsx.xlsx", row.names=FALSE)

# 3. Общие операции с датафреймом

# 3.1. Вывод общей информации о датафрейме

# Выводим общую информацию о датафрейме
str(data3)

# Выводим первые 6 наблюдений
head(data3)

# Выводим первые 10 наблюдений
head(data3, 10)

# Выводим последние 6 наблюдений
tail(data3)

# Выводим последние 10 наблюдений
head(data3, 10)

# 3.2. Отбор определенных столбцов и строк

# Обратимся к 4-му наблюдению в переменной age, сначала указывается название столбца, 
# затем указывается номер строки
data3$age[4]

# Отбираем столбцы age и marital_status и записываем в датафрейм example
example <- data3[,c("age","marital_status")]
head(example, 10)

# Или еще можно так
example=data3[,c("age","marital_status")]

# Отбираем строку 5
data3[c(5),]

# Отбираем первые 10 строк в столбцах age и marital_status
data3[1:10,c("age","marital_status")]

# Отбираем переменные, в названии которых встречается паттерн credit
# и записываем в датафрейм example
example <- data3[grepl("credit", names(data3))]
head(example, 10)

# 3.3. Сортировка наблюдений

# Сортируем наблюдения по возрастанию значений переменной age 
# и записываем в датафрейм example
example <- data3[order(data3$age),]
head(example, 10)

# Сортируем наблюдения по убыванию значений переменной age 
# и записываем в датафрейм example
example <- data3[order(-data3$age),]
head(example, 10)

# 4. Операции с переменными

# 4.1. Изменение типов переменных

# Выводим общую информацию о датафрейме
str(data3)

# Категориальные переменные tariff_id и open_account_flg, 
# у которых фактические значения – категории, неправильно записаны как
# тип int (значения – целые числа), поэтому преобразуем их в тип factor 
# (значения – уровни номинальных переменных) с помощью функции as.factor
data3$tariff_id <-as.factor(data3$tariff_id)
data3$open_account_flg <-as.factor(data3$open_account_flg)
str(data3)

# Количественные переменные credit_sum, score_shk, у которых фактические 
# значения – числа с плавающей точкой, неправильно записаны как тип factor, 
# поэтому преобразуем их в тип numeric (значения – числа с плавающей точкой)
# с помощью функции as.numeric.factor, предварительно написав ее 
as.numeric.factor <- function(x) {as.numeric(levels(x))[x]}
data3$credit_sum <-as.numeric.factor(data3$credit_sum)
data3$score_shk <-as.numeric.factor(data3$score_shk)
str(data3)

# Теперь категориальную переменную tariff_id будем рассматривать как 
# количественную, преобразуем ее в тип integer (значения – целые числа)
# с помощью функции as.integer 
data3$tariff_id <-as.integer(data3$tariff_id)
str(data3)

# Преобразуем переменную tariff_id обратно в тип factor
data3$tariff_id <-as.factor(data3$tariff_id)

# Представим, что переменная education является порядковой, тогда мы должны
# преобразовать ее в тип ordered factor (значения – уровни порядковых переменных)
# с помощью функции ordered 
data3$education2 <- ordered(data3$education, 
                           levels = c("SCH", "UGR", "GRD", "PGR", "ACD"))
str(data3)

# Удалим созданную переменную education2
data3$education2 <-NULL

# 4.2 Импутация пропущенных значений

# 4.2.1. Получение информации о количестве пропусков по каждой переменной

# Прежде всего смотрим на типы имеющихся переменных
str(data3) 

# Если все переменные имеют типы integer или numeric, можно вывести 
# информацию о количестве пропусков, если есть переменные типа factor,
# то могут быть пустые строковые значения, которые перед выводом информации
# о количестве пропусков нужно пометить как пропущенные (NA)
is.na(data3) <- data3==''

# Загружаем пакет Hmisc
library(Hmisc)

# С помощью функции describe пакета Hmisc выводим общую информацию 
# о переменных, в т.ч. и о количестве пропусков 
describe(data3)

# Отсоединяем пакет Hmisc
detach("package:Hmisc", unload=TRUE)

# Можно вывести сводку по пропускам с помощью функции sapply
sapply(data3, function(x) sum(is.na(x)))

# 4.2.2. Импутация средним, медианой и модой 

# Заменяем пропуски в переменных age и score_shk средними значениями
data3$age[is.na(data3$age)] <- mean(data3$age, na.rm=TRUE)
data3$score_shk[is.na(data3$score_shk)] <- mean(data3$score_shk, na.rm=TRUE)
 
# Заменяем пропуски в переменных monthly_income и credit_sum медианами
data3$monthly_income[is.na(data3$monthly_income)] <- median(data3$monthly_income,  
                                                            na.rm=TRUE)
data3$credit_sum[is.na(data3$credit_sum)] <- median(data3$credit_sum,  
                                                    na.rm=TRUE)
 
# Заменяем пропуски в переменных education и marital_status модами 
# (самыми часто встречающимися значениями), информацию о модах берем 
# из результатов, возвращенных функцией describe пакета Hmisc
data3$education[is.na(data3$education)] <- "SCH"
data3$marital_status[is.na(data3$marital_status)] <- "MAR"

# Информацию о модах и медианах можно также получить с помощью пакета 
# imputeMissings, функция compute автоматически вычисляет для количественных
# переменных – медианы, а для категориальных переменных – моды
library(imputeMissings)
values <- compute(data3)
values

# 4.2.3. Автоматическая импутация медианой и модой c помощью функции impute пакета imputeMissing

# С помощью функции impute пакета imputeMissing можно автоматически импутировать
# пропуски количественных переменных – медианами, пропуски категориальных
# переменных – модами
example <- read.csv2("C:/Trees/Example_comma.csv", sep = ',')
is.na(example) <- example==''
head(example, 20)
example_imp <- impute(example, method = "median/mode")
head(example_imp, 20)

# 4.2.4. Замена пропусков отдельной категорией «Пропуск»

# Заменяем пропуски в переменной living_region отдельным значением “Пропуск”,
# для этого переводим ее в символьный вектор с помощью функции as.character
data3$living_region <- as.character(data3$living_region)

# Заменяем пропуски в переменной living_region отдельным значением “Пропуск”
data3$living_region[is.na(data3$living_region)] <- "Пропуск"

# Преобразуем переменную living_region обратно в фактор
data3$living_region <- as.factor(data3$living_region)

# 4.2.5. Замена пропусков отдельным значением с помощью функции na.replace пакета imputeTS

# Загружаем пакет imputeTS
library(imputeTS)

# Заменяем пропуски в переменных credit_count и overdue_credit_count
# отдельным значением -1 с помощью функции na.replace
data3$credit_count <- na.replace(data3$credit_count, fill = -1)
data3$overdue_credit_count <- na.replace(data3$overdue_credit_count, fill = -1)

# Снова выводим сводку по пропускам с помощью функции sapply
# по итогам импутации переменных
sapply(data3, function(x) sum(is.na(x)))

# 4.3. Удаление и создание переменных

# 4.3.1. Удаляем переменную
data3$client_id <- NULL

# 4.3.2. Создаем переменную, у которой значения основаны на значениях другой переменной

# Создаем переменную avrzarplata, у которой значения основаны 
# на категориях переменной job_position
data3$avrzarplata[data3$job_position=="UMN"] <- 51000
data3$avrzarplata[data3$job_position=="SPC"] <- 63000
data3$avrzarplata[data3$job_position=="INP"] <- 55000
data3$avrzarplata[data3$job_position=="DIR"] <- 60000
data3$avrzarplata[data3$job_position=="ATP"] <- 46000
data3$avrzarplata[data3$job_position=="PNA"] <- 71000
data3$avrzarplata[data3$job_position=="BIS"] <- 86000
data3$avrzarplata[data3$job_position=="WOI"] <- 76000
data3$avrzarplata[data3$job_position=="NOR"] <- 54000
data3$avrzarplata[data3$job_position=="WRK"] <- 77000
data3$avrzarplata[data3$job_position=="WRP"] <- 75000
data3$avrzarplata[data3$job_position=="PNV"] <- 67000
data3$avrzarplata[data3$job_position=="BIU"] <- 43000
data3$avrzarplata[data3$job_position=="PNI"] <- 69000
data3$avrzarplata[data3$job_position=="HSK"] <- 74000
data3$avrzarplata[data3$job_position=="PNS"] <- 44000
data3$avrzarplata[data3$job_position=="INV"] <- 88000
data3$avrzarplata[data3$job_position=="ONB"] <- 62000

# 4.3.3. Создаем переменную, которая является отношением двух переменных

# Создаем переменную, которая является отношением 
# суммы кредита к ежемесячному заработку
data3$ratio <- data3$credit_sum/data3$monthly_income
head(data3, 10)

# 4.3.4. Создаем переменную, у которой каждое значение – частота наблюдений в категории переменной

# Загружаем пакет dplyr
library(dplyr)

# Создаем временный датафрейм, в который записываем новую переменную,
# это делается для того, чтобы не перегружать исходный датафрейм
# дополнительной информацией, генерируемой dplyr 
tmp <-data.frame(data3)

# Вычисляем новую переменную living_region_cnt
# у которой каждое значение – частота наблюдений 
# в категории переменной living_region
tmp <- tmp %>%
group_by(living_region) %>%
mutate(living_region_cnt = n())

# Добавляем новую переменную living_region_cnt в исходный датафрейм
data3$living_region_cnt <-tmp$living_region_cnt
head(data3, 10)

# 4.3.5. Создаем переменную, у которой каждое значение – среднее значение количественной 
# переменной, взятое по уровню категориальной переменной

# Создаем временный датафрейм, в который записываем новую переменную,
# это делается для того, чтобы не перегружать исходный датафрейм
# дополнительной информацией, генерируемой dplyr 
tmp <-data.frame(data3)

# Создаем переменную, у которой каждое значение – среднее значение 
# monthly_income в категории переменной living_region
tmp <- tmp %>%
group_by(living_region) %>%
mutate(mean_income_by_reg = mean(monthly_income))

# Добавляем новую переменную mean_income_by_reg в исходный датафрейм
data3$mean_income_by_reg <-tmp$mean_income_by_reg
head(data3, 10)

# Отсоединяем пакет dplyr
detach("package:dplyr", unload=TRUE)

# 4.3.6. Создаем категориальную переменную в результате конъюнкции двух переменных

# Создаем переменную conj, которая является результатов конъюнкции 
# двух переменных education и marital_status 
data3$conj <- paste(data3$education, data3$marital_status, sep="+")
head(data3, 10)

# 4.3.7. Создаем переменную, у которой каждое значение – логарифм значения количественной переменной

# Создаем переменную log_income, у которой каждое значение – логарифм значения
# переменной monthly_income
data3$log_income <- log(data3$monthly_income)
head(data3, 10)

# 4.3.8. Создаем количественную переменную, у которой каждое значение – 
# усредненное значение нескольких количественных переменных

# С помощью функции rowMeans создаем переменную mean_age_tenure, 
# у которой каждое значение – уcредненное значение переменных 
# age и credit_month 
data3$mean_age_tenure=rowMeans(data3[,c("age", "credit_month")], na.rm=TRUE)
head(data3, 10)

# 4.3.9. Выполняем категоризацию (биннинг) количественной переменной на основе интервалов, заданных вручную

# Вычисляем минимальное значение переменной age
min(data3$age, na.rm=T)

# Вычисляем максимальное значение переменной age
max(data3$age, na.rm=T)

# Задаем категории новой переменной agecat на основе интервалов
# значений количественной переменной age
data3$agecat[data3$age <= 30] <- "от 18 до 30 лет"
data3$agecat[data3$age > 30 & data3$age <= 45] <- "от 31 до 45 лет"
data3$agecat[data3$age > 45 & data3$age <= 60] <- "от 46 до 60 лет"
data3$agecat[data3$age > 60] <- "старше 60 лет"
head(data3, 10)

# Можно сделать проще, использовав функцию cut
data3$agecat2<-cut(data3$age, c(18,30,45,60,71), include.lowest = TRUE)
head(data3, 10)

# 4.3.10. Выполняем перегруппировку категориальной переменной

# Загружаем пакет memisc
library(memisc)

# С помощью функции recode пакета memisc cоздадим переменную jobcat 
# с укрупненными категориями переменной job_position
data3$jobcat <- recode(data3$job_position,
"cat1" <- c("UMN", "SPC", "INP", "DIR"),
"cat2" <- c("ATP", "PNA", "BIS"),
"cat3" <- c("WOI", "NOR", "WRK", "WRP"),
otherwise="cat4")

# 4.3.11. Выполняем категоризацию (биннинг) количественной переменной на основе квантилей

# Загружаем пакет rattle
library(rattle)

# Осуществляем биннинг переменной age на основе квантилей 
# и записываем результаты в новую переменную age_decile, 
# не создавая меток категорий. Квантили– значения признака, 
# занимающие в упорядоченном ряду единиц совокупности 
# определенное место. Квантили делят ряд на равные (по числу единиц) 
# части: квартили – на четыре, квинтили – на пять, децили – на десять.
data3$age_decile<- binning(data3$age, bins=10,
                                        method="quantile", labels=NULL,
                                        ordered=TRUE, weights=NULL)

# 4.3.12. Создаем бинарную переменную на основе значений количественной переменной

# Создаем новую переменную retired, которая принимает значение "Yes",
# если значение переменной age больше 60, и значение "No" в противном случае
data3$retired <- ifelse(data3$age >= 60, c("Yes"), c("No"))
head(data3, 10) 

# 4.3.13. Создаем переменную на основе совпадений значений в двух переменных

# Считываем данные
example <- read.csv2("C:/Trees/Strings.csv")

# Смотрим данные
example

# Теперь сравним переменные registration и fact_living на совпадение значений
# и результаты запишем в переменную matching
example$matching <- (example$registration %in% example$fact_living) & (example$registration %in% example$fact_living)

# Смотрим данные
example

# Можно сделать немного иным способом, предварительно преобразовав 
# переменные registration и fact_living в тип char
example$fact_living <- as.character(example$fact_living)
example$registration <- as.character(example$registration) 
example$matching2 <- example$registration==example$fact_living

# Смотрим данные
example

# 4.4. Получение статистической информации о переменных

# С помощью функции summary выводим статистическую
# информацию о переменных
summary(data3)

# Загружаем пакет Hmisc
library(Hmisc)

# С помощью функции describe пакета Hmisc выводим статистическую
# информацию о переменных
describe(data3)

# Отсоединяем пакет Hmisc
detach("package:Hmisc", unload=TRUE)

# 4.5. Переименование переменных

# 4.5.1. Переименовываем переменную с помощью функции names 

# Переименовываем переменную living_region в переменную region
names(data3)[names(data3)=="living_region"] <- "region"
str(data3)

# Переименуем переменную gender в sex, указав ее индекс 
names(data3)[1]<-"sex"
str(data3)

# 4.5.2. Переименовываем переменную с помощью функции rename пакета dplyr

# Загружаем пакет dplyr
library(dplyr)

# С помощью функции rename пакета dplyr
# переименовываем переменную region в переменную reg,
# а переменную tariff_id в переменную tariff
data3 <- rename(data3, reg=region, tariff=tariff_id)
str(data3)

# Отсоединяем пакет dplyr
detach("package:dplyr", unload=TRUE)

# 4.5.3. Переименовываем переменную с помощью функции setnames пакета data.table

# Загружаем пакет data.table
library(data.table)

# С помощью функции setnames пакета data.table переименуем переменные
# monthly_income и score_shk
setnames(data3, old=c("monthly_income","score_shk"), new=c("income", "score"))
str(data3)

# Отсоединяем пакет data.table
detach("package:data.table", unload=TRUE)

# 4.6. Переименование категорий переменных

# 4.6.1. Переименовываем категории переменных с помощью функции recode пакета dplyr

# Загружаем пакет dplyr
library(dplyr)

# С помощью функции recode пакета dplyr переименовываем 
# категории переменной marital_status
data3$marital_status <- recode(data3$marital_status, 
                               MAR="Married", DIV="Divorced", WID="Widowed",
                               UNM="Unmarried", CIV="Civil union")
head(data3, 10)

# Отсоединяем пакет dplyr
detach("package:dplyr", unload=TRUE)

# 4.6.2. Переименовываем категории переменных с помощью функции revalue пакета plyr

# Загружаем пакет plyr
library(plyr)

# С помощью функции revalue пакета plyr переименовываем 
# категории переменной sex
data3$sex <- revalue(data3$sex, c("M"="male", "F"="female"))
head(data3, 10)

# 4.6.3. Переименовываем категории переменных с помощью функции mapvalues пакета plyr

# С помощью функции mapvalues пакета plyr переименовываем 
# обратно категории переменной sex
data3$sex <- mapvalues(data3$sex, from = c("male", "female"), to = c("M", "F"))
head(data3, 10)

# Отсоединяем пакет plyr
detach("package:plyr", unload=TRUE)

# 4.7. Группировка данных

# Вычислим средний месячный заработок для каждого значения 
# переменной job_position
aggregate(data3$income, list(data3$job_position), mean)

# Вычислим средний месячный заработок для каждого значения 
# переменной job_position более удобным способом
aggregate(income ~ job_position, data3, mean)

# Вычислим средний месячный заработок для каждого значения 
# переменной job_position с помощью функции tapply
tapply(data3$income, data3$job_position, FUN=mean)

# Загрузим dplyr и вычислим с помощью него средний месячный заработок 
# для каждого значения переменной job_position, обратите внимание, мы
# воспользуемся временным датафреймом, в котором переменная income записана
# в исходном варианте как monthly_income
library(dplyr)
tmp %>% 
  group_by(job_position) %>%
  summarise(mean_income_by_job = mean(monthly_income))

# Теперь вычислим с помощью dplyr средний месячный заработок 
# для каждой комбинации значений переменных job_position и gender
# и запишем полученные результаты в result
result <- tmp %>% 
  group_by(job_position, gender) %>%
  summarise(mean_income_gender = mean(monthly_income))

# Для развернутого, а не усеченного вывода результатов 
# воспользуемся data.frame
data.frame(result)

# Отсоединяем пакет dplyr
detach("package:dplyr", unload=TRUE)

# Вычислим медианный месячный заработок для каждого значения 
# переменной job_position
tapply(data3$income, data3$job_position, FUN=median)

# 5. Работа с датами

# 5.1. Обработка дат в формате dd.mm.yyyy (например, 01.01.2017)

# Считываем CSV файл, содержащий даты, в датафрейм data4
data4 <- read.csv2("C:/Trees/Dates.csv")

# Смотрим, как выглядят даты
head(data4)

# А теперь переменные, соответствующие датам, переводим в объекты типа 
# POSIXct с помощью функции as.POSIXct
data4$date_start <- as.POSIXct(data4$date_start, format="%d.%m.%Y")
data4$date_end <- as.POSIXct(data4$date_end, format="%d.%m.%Y")

# Смотрим, как выглядят даты
head(data4)

# 5.2. Обработка дат в формате dd/mm/yyyy (например, 01/01/2017)

# Считываем CSV файл, содержащий даты, в датафрейм data5
data5 <- read.csv2("C:/Trees/Dates2.csv")

# Смотрим, как выглядят даты
head(data5)

# А теперь переменные, соответствующие датам, переводим в объекты типа 
# POSIXct с помощью функции as.POSIXct
data5$date_start <- as.POSIXct(data5$date_start, format="%d/%m/%Y")
data5$date_end <- as.POSIXct(data5$date_end, format="%d/%m/%Y")

# Смотрим, как выглядят даты
head(data5)

# 5.3. Обработка дат в формате ddMthyyyy (например, 01Jan2017)

# Считываем CSV файл, содержащий даты, в датафрейм data6
data6 <- read.csv2("C:/Trees/Dates3.csv")

# Смотрим, как выглядят даты
head(data6)

# Загружаем пакет anytime
library(anytime)

# А теперь переменные, соответствующие датам, переводим в объекты типа 
# POSIXct с помощью функции anytime одноименного пакета
data6$date_start <- anytime(data6$date_start)
data6$date_end <- anytime(data6$date_end)

# Смотрим, как выглядят даты
head(data6)

# 5.4. Обработка дат в формате dd-Mth-yyyy (например, 01-Jan-2017)

# # Считываем CSV файл, содержащий даты, в датафрейм data7
data7 <- read.csv2("C:/Trees/MFOcredit.csv")

# Смотрим, как выглядят даты в первых 10 наблюдениях
head(data7, 10)

# А теперь переменные, соответствующие датам, переводим в объекты типа 
# POSIXct с помощью функции anytime одноименного пакета
data7$date_start <- anytime(data7$date_start)
data7$date_end <- anytime(data7$date_end)

# Смотрим, как выглядят даты в первых 10 наблюдениях
head(data7, 10)

# 5.5. Вычисление разности между датами

# Вычисляем разность между датами в днях для датафрейма data7
data7$diff <- data7$date_end-data7$date_start

# Смотрим результат в первых 10 наблюдениях
head(data7, 10)

# 5.6. Извлечение из дат годов, кварталов, месяцев, дней, дней недели

# Смотрим, как выглядят даты
str(data4)

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# года и записываем в переменную year
data4$year <- format(data4$date_start, "%Y")

# С помощью функции quarters извлекаем из переменной дат date_start, 
# относящейся к типу Date, кварталы и записываем в переменную quarter
data4$quarter <- quarters(data4$date_start)

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# порядковые номера месяцев и записываем в переменную num_of_month
data4$num_of_month <- format(data4$date_start, "%m")

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# сокращенные названия месяцев и записываем в переменную shortname_of_month
data4$shortname_of_month <- format(data4$date_start, "%b")

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# полные названия месяцев и записываем в переменную fullname_of_month
data4$fullname_of_month <- format(data4$date_start, "%B")

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# порядковые номера дней и записываем в переменную day
data4$day <- format(data4$date_start, "%d")

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# сокращенные названия дней недели и записываем в переменную name_of_weekday
data4$name_of_weekday <- format(data4$date_start, "%a")

# Извлекаем из переменной дат date_start, относящейся к типу Date, 
# порядковые номера дней недели (0-6, 0 – воскресенье) 
# и записываем в переменную num_of_weekday
data4$num_of_weekday <- format(data4$date_start, "%w")

# Смотрим первые 10 наблюдений
head(data4)

# 6. Работа со строками

# 6.1. Изменение регистра строк

# Смотрим, как выглядят первые 10 наблюдений переменной 
# job_position (имеет индекс 4) в датафрейме data3
head(data3[4], 10)

# Переводим строки (значения переменной job_position) в нижний регистр 
data3$job_position <- tolower(data3$job_position)

# Смотрим, как выглядят первые 10 наблюдений переменной 
# job_position (имеет индекс 4) в датафрейме data3
head(data3[4], 10)

# Переводим строки (значения переменной job_position) обратно в верхний регистр 
data3$job_position <- toupper(data3$job_position)

# Смотрим, как выглядят первые 10 наблюдений переменной 
# job_position (имеет индекс 4) в датафрейме data3
head(data3[4], 10)

# 6.2. Определение пола клиента по отчеству

# Считываем CSV файл с ФИО клиентов, по которым нужно определить пол
data8 <- read.csv2("C:/Trees/Gender based on middle name.csv")

# Создаем переменную Пол, которая будет иметь значение True, если строковое 
# значение переменной Клиент содержит паттерн "вна" (Викторовна, Дмитриевна) 
# и False в противном случае
data8$Пол <- grepl("вна", data8$Клиент)

# Переименуем категории переменной Пол
data8$Пол[data8$Пол=="FALSE"] <-"Мужской"
data8$Пол[data8$Пол=="TRUE"] <-"Женский"

# Смотрим результат
head(data8, 10)

# А теперь напишем собственную функцию, которая будет извлекать n
# последних символов из строк  
substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

# Преобразуем переменную Клиент в тип char (значения – символьные метки) 
# с помощью функции as.character
data8$Клиент <- as.character(data8$Клиент)

# И теперь с помощью этой функции извлечем в каждом строковом значении
# переменной Клиент последние 3 символа и запишем в новую переменную Пол2
data8$Пол2 <- substrRight(data8$Клиент, 3)

# Переименуем категории переменной Пол
data8$Пол2[data8$Пол2=="вич"] <-"Мужской"
data8$Пол2[data8$Пол2=="вна"] <-"Женский"

# Смотрим результат
head(data8, 10)

# 6.3. Удаление лишних символов из строк

# С помощью функции gsub удалим ненужный символ подчеркивания, с которого 
# начинаются несколько значений переменной Клиент, первый аргумент функции – символ,
# который нужно удалить, второй аргумент – символ, на который нужно
# заменить, третий аргумент – строка или переменная, содержащая строковые значения
data8$Клиент <- gsub('_',  "", data8$Клиент)

# Смотрим результат
head(data8, 20)

# Теперь с помощью gsub удалим ненужные символы, которыми 
# заканчиваются некоторые значения переменной Возраст, удаляем
# символ &, а с помощью класса символов POSIX [:alpha:] все символы алфавита,
# результаты запишем в переменную Возраст2

data8$Возраст2 <- gsub("[&[:alpha:]]", "", data8$Возраст)

# Смотрим результат
head(data8, 20)

# А теперь выполним аналогичную операцию с помощью стандартной функции substr,
# она заменяет строку подстрокой, первый аргумент задает строку, 
# второй аргумент – позицию начального символа, третий аргумент – 
# позицию последнего символа, например, в данном случае строка «28лет» 
# будет замена на подстроку «28», «2» – начальный символ, занимающий позицию 1,
# «8» - последний символ, занимающий позицию 2 строки «28 лет», 
# результат запишем в переменную Возраст3 
data8$Возраст3 <- substr(data8$Возраст, 1, 2)

# Смотрим результат
head(data8, 20)

# Теперь выполним ту же самую замену строки подстрокой с помощью 
# стандартной функции substring, результат запишем в переменную Возраст4
data8$Возраст4 <- substring(data8$Возраст, 1, 2)

# Смотрим результат
head(data8, 20)

# Преобразуем переменную Регион в тип char (значения – символьные метки) 
# с помощью функции as.character
data8$Регион <- as.character(data8$Регион)

# Удаляем последние 3 символа в каждом значении
# переменной Регион
data8$Регион <- substr(data8$Регион,1,nchar(data8$Регион)-3)

# Смотрим результат
head(data8, 20)

# 6.4. Удаление повторяющихся строк

# Удаляем дублирующиеся строки
data9 <- data8[!duplicated(data8), ]
data9

# Еще можно удалить дублирующиеся строки с помощью функции unique
data10 <- unique(data8)

# 6.5. Извлечение нужных символов из строк

# Часто данные могут быть некорректно записаны и необходимо извлечь
# нужные нам подстроки
data11 <- read.csv2("C:/Trees/Raw_text.csv")

# Смотрим данные
data11

# Преобразуем данные в тип char (значения – символьные метки) 
# с помощью функции as.character
data11$raw <- as.character(data11$raw)

# Загружаем пакет stringr
library(stringr)

# Извлекаем даты из столбца raw с помощью функции str_extract 
# пакета stringr и создаем переменную date
datepattern="[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]"
data11$date <- str_extract(data11$raw, pattern=datepattern)

# Смотрим данные
data11

# Еще можно так
datepattern2 <- "\\d\\d\\d\\d\\-\\d\\d-\\d\\d"
data11$date2 <- str_extract(data11$raw, pattern=datepattern2)

# Смотрим данные
data11

# Извлекаем одиночные цифры из столбца raw с помощью функции str_extract 
# пакета stringr и создаем переменную gender 
genderpattern="[0-9]"
data11$gender <- str_extract(data11$raw, pattern=genderpattern)

# Смотрим данные
data11

# Извлекаем ####.# из столбца raw с помощью функции str_extract 
# пакета stringr и создаем переменную score 
scorepattern <- "\\d\\d\\d\\d\\.\\d"
data11$score <- str_extract(data11$raw, pattern=scorepattern)

# Смотрим данные
data11

# Извлекаем текст из столбца raw с помощью функции str_extract 
# пакета stringr и создаем переменную city
data11$city <- str_extract(data11$raw, pattern="[A-Z]+")

# Аналогичную операцию можно выполнить с помощью 
# стандартной функции sub
data11$city2 <- sub("[^[:alpha:]]+", "", data11$raw)

# Смотрим данные
data11


