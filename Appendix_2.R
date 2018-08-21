
R version 3.4.0 (2017-04-21) -- "You Stupid Darkness"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R -- это свободное ПО, и оно поставляется безо всяких гарантий.
Вы вольны распространять его при соблюдении некоторых условий.
Введите 'license()' для получения более подробной информации.

R -- это проект, в котором сотрудничает множество разработчиков.
Введите 'contributors()' для получения дополнительной информации и
'citation()' для ознакомления с правилами упоминания R и его пакетов
в публикациях.

Введите 'demo()' для запуска демонстрационных программ, 'help()' -- для
получения справки, 'help.start()' -- для доступа к справке через браузер.
Введите 'q()', чтобы выйти из R.

[Загружено ранее сохраненное рабочее пространство]

> # Предварительные действия
> 
> # Задаем постоянный CRAN репозиторий
> cat(".Rprofile: Setting US repositoryn")
.Rprofile: Setting US repositoryn> r = getOption("repos")
> r["CRAN"] = "http://cran.us.r-project.org"
> options(repos = r)
> rm(r)
> 
> # Устанавливаем пакет xlsx
> install.packages("xlsx")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/xlsx_0.5.7.zip'
Content type 'application/zip' length 401348 bytes (391 KB)
downloaded 391 KB

пакет ‘xlsx’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет openxlsx
> install.packages("openxlsx")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/openxlsx_4.0.17.zip'
Content type 'application/zip' length 2428940 bytes (2.3 MB)
downloaded 2.3 MB

пакет ‘openxlsx’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет Hmisc
> install.packages("Hmisc")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/Hmisc_4.0-3.zip'
Content type 'application/zip' length 1792639 bytes (1.7 MB)
downloaded 1.7 MB

пакет ‘Hmisc’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет imputeMissings
> install.packages("imputeMissings")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/imputeMissings_0.0.3.zip'
Content type 'application/zip' length 19394 bytes (18 KB)
downloaded 18 KB

пакет ‘imputeMissings’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет imputeTS
> install.packages("imputeTS")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/imputeTS_2.3.zip'
Content type 'application/zip' length 2424899 bytes (2.3 MB)
downloaded 2.3 MB

пакет ‘imputeTS’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет dplyr
> install.packages("dplyr")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/dplyr_0.5.0.zip'
Content type 'application/zip' length 2556287 bytes (2.4 MB)
downloaded 2.4 MB

пакет ‘dplyr’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет memisc
> install.packages("memisc")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/memisc_0.99.8.zip'
Content type 'application/zip' length 1717248 bytes (1.6 MB)
downloaded 1.6 MB

пакет ‘memisc’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет rattle
> install.packages("rattle")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/rattle_4.1.0.zip'
Content type 'application/zip' length 3853137 bytes (3.7 MB)
downloaded 3.7 MB

пакет ‘rattle’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет data.table
> install.packages("data.table")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/data.table_1.10.4.zip'
Content type 'application/zip' length 1573707 bytes (1.5 MB)
downloaded 1.5 MB

пакет ‘data.table’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет anytime
> install.packages("anytime")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/anytime_0.2.2.zip'
Content type 'application/zip' length 725812 bytes (708 KB)
downloaded 708 KB

пакет ‘anytime’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> 
> # Устанавливаем пакет stringr
> install.packages("stringr")
Устанавливаю пакет в ‘C:/Users/Gewissta/Documents/R/win-library/3.4’
(потому что ‘lib’ не определено)
пробую URL 'http://cran.us.r-project.org/bin/windows/contrib/3.4/stringr_1.2.0.zip'
Content type 'application/zip' length 149107 bytes (145 KB)
downloaded 145 KB

пакет ‘stringr’ успешно распакован, MD5-суммы проверены

Скачанные бинарные пакеты находятся в
        C:\Users\Gewissta\AppData\Local\Temp\Rtmpu4GFb4\downloaded_packages
> # 1. Создание датафрейма из файла Excel и CSV файла
> 
> # 1.1 Создаем датафрейм из файла Excel (первый способ)
> 
> # Во избежание ошибки java.lang.OutOfMemoryError: GC overhead limit exceeded
> # увеличиваем размер доступной оперативной памяти (8 Гб) перед загрузкой 
> # пакета rJava, который загружается как зависимость пакета xlsx
> options(java.parameters = "-Xmx8192m")
> 
> # Загружаем пакет xlsx
> library(xlsx)
Загрузка требуемого пакета: rJava
Загрузка требуемого пакета: xlsxjars
> 
> # Считываем данные, указав индекс нужного рабочего листа
> data <- read.xlsx2("C:/Trees/Credit.xlsx", sheetIndex=1)
> head(data)
  client_id gender age marital_status job_position credit_sum credit_month score_shk education tariff_id living_region okrug avregzarplata monthly_income credit_count overdue_credit_count open_account_flg
1         1      2  48              3           15      59998           10  0.770249         2        28            23     8         25850          30000            1                    1                0
2         2      1  28                          15      10889            6  0.248514         2         2            30     7         66880          43000            2                    0                0
3         3      2  32              3           14      10728           12  0.459589         4         2            64     2         23430          23000            5                    0                0
4         4      1  27              2           14   12009.09           12  0.362536         2         2             8     8         23650          17000            2                    0                0
5         5      2  45              3           14   16908.89           10  0.421385         4         2            77     6         26620                           1                    0                0
6         6      1  37              3           14      26788           10  0.484203         4         2            68     4         22000          30000            0                    0                0
> 
> # 1.2 Создаем датафрейм из файла Excel (второй способ)
> 
> # Загружаем пакет openxlsx
> library("openxlsx")

Присоединяю пакет: ‘openxlsx’

Следующие объекты скрыты от ‘package:xlsx’:

    createWorkbook, loadWorkbook, read.xlsx, saveWorkbook, write.xlsx

> 
> # Считываем данные, указав индекс нужного рабочего листа
> data_xls <- read.xlsx("C:/Trees/Credit.xlsx", sheet=1)
> head(data_xls)
  client_id gender age marital_status job_position credit_sum credit_month score_shk education tariff_id living_region okrug avregzarplata monthly_income credit_count overdue_credit_count open_account_flg
1         1      2  48              3           15   59998.00           10  0.770249         2        28            23     8         25850          30000            1                    1                0
2         2      1  28             NA           15   10889.00            6  0.248514         2         2            30     7         66880          43000            2                    0                0
3         3      2  32              3           14   10728.00           12  0.459589         4         2            64     2         23430          23000            5                    0                0
4         4      1  27              2           14   12009.09           12  0.362536         2         2             8     8         23650          17000            2                    0                0
5         5      2  45              3           14   16908.89           10  0.421385         4         2            77     6         26620             NA            1                    0                0
6         6      1  37              3           14   26788.00           10  0.484203         4         2            68     4         22000          30000            0                    0                0
> 
> # Отсоединяем пакет openxlsx
> detach("package:openxlsx", unload=TRUE)
> 
> # 1.3 Создаем датафрейм из CSV файла, в котором используется кириллица и значения разделены точками с запятой
> 
> data2 <- read.csv2("C:/Trees/Example_semicolon.csv", sep = ';')
> head(data2)
  client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg
1         1      M  48            MAR          UMN      59998           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2         2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0
3         3      M  32            MAR          SPC      10728           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4         4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5         5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6         6      F  37            MAR          SPC      26788           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
> 
> # 1.4 Создаем датафрейм из CSV файла, в котором используется кириллица и значения разделены запятыми
> 
> data3 <- read.csv2("C:/Trees/Example_comma.csv", sep = ',')
> head(data3)
  client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg
1         1      M  48            MAR          UMN      59998           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2         2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0
3         3      M  32            MAR          SPC      10728           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4         4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5         5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6         6      F  37            MAR          SPC      26788           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
> 
> # 2. Запись датафрейма в CSV файл и файл Excel
> 
> # 2.1 Записываем на основе датафрейма CSV файл, в котором значения разделены запятыми (первый способ)
> 
> # Записываем CSV файл, по умолчанию в новом файле 
> # создается дополнительный столбец ID
> write.csv(data3, "C:/Trees/Example_from_R_to_csv_comma.csv")
> 
> # 2.2 Записываем на основе датафрейма CSV файл, в котором значения разделены запятыми (второй способ)
> 
> # Записываем CSV файл, по умолчанию создается дополнительный столбец ID, 
> # у нас уже есть идентификационная переменная client_id, поэтому 
> # с помощью параметра row.names=FALSE запретим создание столбца ID
> write.table(data3, file="C:/Trees/Example_from_R_to_csv_comma2.csv", 
+                         row.names=FALSE, sep=",")
> 
> # 2.3 Записываем на основе датафрейма CSV файл, в котором значения разделены точками с запятыми
> 
> # Записываем CSV файл, по умолчанию создается дополнительный столбец ID, 
> # у нас уже есть идентификационная переменная client_id, поэтому 
> # с помощью параметра row.names=FALSE запретим создание столбца ID  
> write.table(data3, file="C:/Trees/Example_from_R_to_csv_semicolon.csv",       
+             row.names=FALSE, sep=";")
> 
> # 2.4 Записываем на основе датафрейма файл Excel
> 
> # Записываем файл Excel, по умолчанию создается дополнительный столбец ID, 
> # у нас уже есть идентификационная переменная client_id, поэтому 
> # с помощью параметра row.names=FALSE запретим создание столбца ID  
> write.xlsx2(data3, "C:/Trees/Example_from_R_to_xlsx.xlsx", row.names=FALSE)
> 
> # 3. Общие операции с датафреймом
> 
> # 3.1. Вывод общей информации о датафрейме
> 
> # Выводим общую информацию о датафрейме
> str(data3)
'data.frame':   170746 obs. of  15 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : Factor w/ 42770 levels "","10000","10000.1",..: 36010 900 731 2110 8154 19709 315 32002 27507 19205 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : int  28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : Factor w/ 16281 levels "","0","0.071819",..: 15463 808 4386 2347 3497 5021 1102 5814 10344 4522 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : int  0 0 0 0 0 0 0 0 0 0 ...
> 
> # Выводим первые 6 наблюдений
> head(data3)
  client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg
1         1      M  48            MAR          UMN      59998           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2         2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0
3         3      M  32            MAR          SPC      10728           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4         4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5         5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6         6      F  37            MAR          SPC      26788           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
> 
> # Выводим первые 10 наблюдений
> head(data3, 10)
   client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg
1          1      M  48            MAR          UMN      59998           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2          2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0
3          3      M  32            MAR          SPC      10728           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4          4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5          5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6          6      F  37            MAR          SPC      26788           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
7          7      M  NA            MAR          SPC      10317            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0
8          8      F  26            UNM          SPC      47878           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0
9          9      M  23                         SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0
10        10      F  32            UNM          SPC      26268           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0
> 
> # Выводим последние 6 наблюдений
> tail(data3)
       client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education        living_region monthly_income credit_count overdue_credit_count open_account_flg
170741    170741      F  24            UNM          SPC      19818           12        28  0.624391       SCH   КРАСНОДАРСКИЙ КРАЙ          22000            1                    0                0
170742    170742      F  27            UNM          SPC      64867           12         2  0.535257       GRD РЕСПУБЛИКА ТАТАРСТАН          40000            6                    0                0
170743    170743      F  24            MAR          SPC      17640            6        28  0.573287       SCH      САНКТ-ПЕТЕРБУРГ          30000            1                    0                0
170744    170744      F  31            UNM          SPC   27556.47           10        19  0.416098       GRD      ПРИМОРСКИЙ КРАЙ          40000            1                    0                0
170745    170745      F  53            DIV          PNA       6189           12         2  0.482595       SCH   ПЕНЗЕНСКАЯ ОБЛАСТЬ          31000            2                    0                0
170746    170746      M  49            MAR          SPC      12787           10         2  0.316087       GRD   МОСКОВСКАЯ ОБЛАСТЬ          40000            3                    0                0
> 
> # Выводим последние 10 наблюдений
> head(data3, 10)
   client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg
1          1      M  48            MAR          UMN      59998           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2          2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0
3          3      M  32            MAR          SPC      10728           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4          4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5          5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6          6      F  37            MAR          SPC      26788           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
7          7      M  NA            MAR          SPC      10317            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0
8          8      F  26            UNM          SPC      47878           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0
9          9      M  23                         SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0
10        10      F  32            UNM          SPC      26268           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0
> 
> # 3.2. Отбор определенных столбцов и строк
> 
> # Обратимся к 4-му наблюдению в переменной age, сначала указывается название столбца, 
> # затем указывается номер строки
> data3$age[4]
[1] 27
> 
> # Отбираем столбцы age и marital_status и записываем в датафрейм example
> example <- data3[,c("age","marital_status")]
> head(example, 10)
   age marital_status
1   48            MAR
2   28            MAR
3   32            MAR
4   27            DIV
5   45            MAR
6   37            MAR
7   NA            MAR
8   26            UNM
9   23               
10  32            UNM
> 
> # Или еще можно так
> example=data3[,c("age","marital_status")]
> 
> # Отбираем строку 5
> data3[c(5),]
  client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education       living_region monthly_income credit_count overdue_credit_count open_account_flg
5         5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
> 
> # Отбираем первые 10 строк в столбцах age и marital_status
> data3[1:10,c("age","marital_status")]
   age marital_status
1   48            MAR
2   28            MAR
3   32            MAR
4   27            DIV
5   45            MAR
6   37            MAR
7   NA            MAR
8   26            UNM
9   23               
10  32            UNM
> 
> # Отбираем переменные, в названии которых встречается паттерн credit
> # и записываем в датафрейм example
> example <- data3[grepl("credit", names(data3))]
> head(example, 10)
   credit_sum credit_month credit_count overdue_credit_count
1       59998           10            1                    1
2       10889            6            2                    0
3       10728           12            5                    0
4    12009.09           12            2                    0
5    16908.89           10            1                    0
6       26788           10            0                    0
7       10317            6            3                    0
8       47878           10            3                    0
9    37577.16           12            3                    0
10      26268           10            7                    0
> 
> # 3.3. Сортировка наблюдений
> 
> # Сортируем наблюдения по возрастанию значений переменной age 
> # и записываем в датафрейм example
> example <- data3[order(data3$age),]
> head(example, 10)
      client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education           living_region monthly_income credit_count overdue_credit_count open_account_flg
316         316      F  18            CIV          SPC       3990            5        25  0.553984       SCH      МОСКОВСКАЯ ОБЛАСТЬ          18000           NA                   NA                0
4976       4976      F  18            UNM          SPC       9891            3        20  0.421201       SCH     ВОРОНЕЖСКАЯ ОБЛАСТЬ          17000           NA                   NA                0
6282       6282      F  18            UNM          SPC      45990            6         2  0.390746       SCH                  МОСКВА          25000           NA                   NA                0
6587       6587      F  18            UNM          SPC      29589           10        28  0.689661       SCH      МОСКОВСКАЯ ОБЛАСТЬ          30000           NA                   NA                0
8807       8807      F  18            MAR          SPC   17743.18           12        28  0.654138       SCH      РЕСПУБЛИКА БУРЯТИЯ          27000           NA                   NA                1
13245     13245      F  18            UNM          SPC      34418           10        28  0.643072       SCH    ОРЕНБУРГСКАЯ ОБЛАСТЬ          22000           NA                   NA                0
13287     13287      F  18            UNM          SPC      30368           10        28  0.711623       UGR      КРАСНОДАРСКИЙ КРАЙ          25000           NA                   NA                1
15724     15724      F  18            UNM          SPC      30990           12        28  0.770546       SCH РЕСПУБЛИКА БАШКОРТОСТАН          37000           NA                   NA                1
15930     15930      F  18            UNM          SPC      27289           12        28  0.711979       SCH         КУРСКАЯ ОБЛАСТЬ          18000           NA                   NA                1
19951     19951      F  18            UNM          SPC      35178           10        28  0.764604       SCH      КРАСНОДАРСКИЙ КРАЙ          50000           NA                   NA                0
> 
> # Сортируем наблюдения по убыванию значений переменной age 
> # и записываем в датафрейм example
> example <- data3[order(-data3$age),]
> head(example, 10)
      client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education           living_region monthly_income credit_count overdue_credit_count open_account_flg
3391       3391      F  71            UNM          PNA      16118           10         2  0.450626       GRD        АМУРСКАЯ ОБЛАСТЬ          25000            0                    0                1
3746       3746      F  71            MAR          SPC      14000           10        28  0.516644       SCH       КРАСНОЯРСКИЙ КРАЙ          30000            0                    0                0
3853       3853      F  71            WID          PNA      13579           10         2  0.543567       SCH     УЛЬЯНОВСКАЯ ОБЛАСТЬ          32000            0                    0                0
20002     20002      M  71            UNM          PNA       4590            6         2  0.497002       GRD   НОВОСИБИРСКАЯ ОБЛАСТЬ          39000            4                    0                1
20992     20992      F  71            UNM          PNA       7680           13         2  0.386022       GRD         КУРСКАЯ ОБЛАСТЬ          16000            2                    0                1
32859     32859      M  71            MAR          SPC      28386           12        18   0.55705       SCH     ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          27000            0                    0                0
45819     45819      F  71            UNM          SPC      15918           10         2  0.439365       UGR      МОСКОВСКАЯ ОБЛАСТЬ          68000            2                    0                0
47815     47815      M  71            UNM          PNA      17649           10         2  0.541681       SCH РЕСПУБЛИКА БАШКОРТОСТАН          22800            0                    0                0
57120     57120      F  71            UNM          SPC      13229           10         2  0.337412       GRD       КАЛУЖСКАЯ ОБЛАСТЬ          28000            1                    0                1
75492     75492      F  71            WID          SPC      41303           10        19  0.445599       SCH         САНКТ-ПЕТЕРБУРГ          35000            0                    0                1
> 
> # 4. Операции с переменными
> 
> # 4.1. Изменение типов переменных
> 
> # Выводим общую информацию о датафрейме
> str(data3)
'data.frame':   170746 obs. of  15 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : Factor w/ 42770 levels "","10000","10000.1",..: 36010 900 731 2110 8154 19709 315 32002 27507 19205 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : int  28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : Factor w/ 16281 levels "","0","0.071819",..: 15463 808 4386 2347 3497 5021 1102 5814 10344 4522 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : int  0 0 0 0 0 0 0 0 0 0 ...
> 
> # Категориальные переменные tariff_id и open_account_flg, 
> # у которых фактические значения – категории, неправильно записаны как
> # тип int (значения – целые числа), поэтому преобразуем их в тип factor 
> # (значения – уровни номинальных переменных) с помощью функции as.factor
> data3$tariff_id <-as.factor(data3$tariff_id)
> data3$open_account_flg <-as.factor(data3$open_account_flg)
> str(data3)
'data.frame':   170746 obs. of  15 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : Factor w/ 42770 levels "","10000","10000.1",..: 36010 900 731 2110 8154 19709 315 32002 27507 19205 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : Factor w/ 16281 levels "","0","0.071819",..: 15463 808 4386 2347 3497 5021 1102 5814 10344 4522 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
> 
> # Количественные переменные credit_sum, score_shk, у которых фактические 
> # значения – числа с плавающей точкой, неправильно записаны как тип factor, 
> # поэтому преобразуем их в тип numeric (значения – числа с плавающей точкой)
> # с помощью функции as.numeric.factor, предварительно написав ее 
> as.numeric.factor <- function(x) {as.numeric(levels(x))[x]}
> data3$credit_sum <-as.numeric.factor(data3$credit_sum)
> data3$score_shk <-as.numeric.factor(data3$score_shk)
> str(data3)
'data.frame':   170746 obs. of  15 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
> 
> # Теперь категориальную переменную tariff_id будем рассматривать как 
> # количественную, преобразуем ее в тип integer (значения – целые числа)
> # с помощью функции as.integer 
> data3$tariff_id <-as.integer(data3$tariff_id)
> str(data3)
'data.frame':   170746 obs. of  15 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : int  28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
> 
> # Преобразуем переменную tariff_id обратно в тип factor
> data3$tariff_id <-as.factor(data3$tariff_id)
> 
> # Представим, что переменная education является порядковой, тогда мы должны
> # преобразовать ее в тип ordered factor (значения – уровни порядковых переменных)
> # с помощью функции ordered 
> data3$education2 <- ordered(data3$education, 
+                            levels = c("SCH", "UGR", "GRD", "PGR", "ACD"))
> str(data3)
'data.frame':   170746 obs. of  16 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ education2          : Ord.factor w/ 5 levels "SCH"<"UGR"<"GRD"<..: 3 3 1 3 1 1 1 3 1 3 ...
> 
> # Удалим созданную переменную education2
> data3$education2 <-NULL
> 
> # 4.2 Импутация пропущенных значений
> 
> # 4.2.1. Получение информации о количестве пропусков по каждой переменной
> 
> # Прежде всего смотрим на типы имеющихся переменных
> str(data3) 
'data.frame':   170746 obs. of  15 variables:
 $ client_id           : int  1 2 3 4 5 6 7 8 9 10 ...
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : int  48 28 32 27 45 37 NA 26 23 32 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 1 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ living_region       : Factor w/ 82 levels "","АЛТАЙСКИЙ КРАЙ",..: 24 31 64 9 77 68 34 32 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : int  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: int  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
> 
> # Если все переменные имеют типы integer или numeric, можно вывести 
> # информацию о количестве пропусков, если есть переменные типа factor,
> # то могут быть пустые строковые значения, которые перед выводом информации
> # о количестве пропусков нужно пометить как пропущенные (NA)
> is.na(data3) <- data3==''
> 
> # Загружаем пакет Hmisc
> library(Hmisc)
Загрузка требуемого пакета: lattice
Загрузка требуемого пакета: survival
Загрузка требуемого пакета: Formula
Загрузка требуемого пакета: ggplot2

Присоединяю пакет: ‘Hmisc’

Следующие объекты скрыты от ‘package:base’:

    format.pval, round.POSIXt, trunc.POSIXt, units

> 
> # С помощью функции describe пакета Hmisc выводим общую информацию 
> # о переменных, в т.ч. и о количестве пропусков 
> describe(data3)
data3 

 15  Variables      170746  Observations
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
client_id 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0   170746        1    85374    56916     8538    17076    42687    85374   128060   153672   162209 

lowest :      1      2      3      4      5, highest: 170742 170743 170744 170745 170746
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gender 
       n  missing distinct 
  170746        0        2 
                      
Value          F     M
Frequency  88697 82049
Proportion 0.519 0.481
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
age 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170744        2       54    0.999     36.5    11.78       23       24       28       34       43       52       57 

lowest : 18 19 20 21 22, highest: 67 68 69 70 71
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
marital_status 
       n  missing distinct 
  170744        2        5 
                                        
Value        CIV   DIV   MAR   UNM   WID
Frequency   4196 16970 93955 52148  3475
Proportion 0.025 0.099 0.550 0.305 0.020
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
job_position 
       n  missing distinct 
  170746        0       18 
                                                                                                                                        
Value         ATP    BIS    BIU    DIR    HSK    INP    INV    NOR    ONB    PNA    PNI    PNS    PNV    SPC    UMN    WOI    WRK    WRP
Frequency    2791   5591    126   3750      8    241      5    537      1   4107     65     12     40 134680  17674    352    656    110
Proportion  0.016  0.033  0.001  0.022  0.000  0.001  0.000  0.003  0.000  0.024  0.000  0.000  0.000  0.789  0.104  0.002  0.004  0.001
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
credit_sum 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170745        1    42769        1    26095    17031     8059    10668    14908    21229    32068    50616    59846 

lowest :   2736.0   3000.0   3000.4   3011.0   3029.0, highest: 184732.0 187768.0 189734.0 194570.0 200000.0
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
credit_month 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       31    0.805    10.98    2.859        6       10       10       10       12       12       18 

lowest :  3  4  5  6  7, highest: 29 30 31 32 36
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tariff_id 
       n  missing distinct 
  170746        0       33 

lowest : 1  2  3  4  5 , highest: 29 30 31 32 33
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
score_shk 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170743        3    16280        1   0.4695   0.1409   0.2785   0.3150   0.3795   0.4616   0.5524   0.6423   0.6916 

lowest : 0.000000 0.071819 0.072468 0.074979 0.076782, highest: 0.976126 0.978480 1.041122 1.054699 1.128291
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
education 
       n  missing distinct 
  170743        3        5 
                                        
Value        ACD   GRD   PGR   SCH   UGR
Frequency    107 72594   565 87536  9941
Proportion 0.001 0.425 0.003 0.513 0.058
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
living_region 
       n  missing distinct 
  170554      192       81 

lowest : АЛТАЙСКИЙ КРАЙ             АМУРСКАЯ ОБЛАСТЬ           АРХАНГЕЛЬСКАЯ ОБЛАСТЬ      АСТРАХАНСКАЯ ОБЛАСТЬ       БЕЛГОРОДСКАЯ ОБЛАСТЬ      
highest: ЧЕЧЕНСКАЯ РЕСПУБЛИКА       ЧИТИНСКАЯ ОБЛАСТЬ          ЧУВАШСКАЯ РЕСПУБЛИКА       ЧУКОТСКИЙ АВТОНОМНЫЙ ОКРУГ ЯРОСЛАВСКАЯ ОБЛАСТЬ       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
monthly_income 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170745        1     1591    0.997    40138    22903    15000    20000    25000    35000    50000    68000    80000 

lowest :   5000   5600   6000   6300   6434, highest: 700000 750000 800000 900000 950000
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
credit_count 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  161516     9230       21    0.958    2.107    1.866        0        0        1        2        3        4        5 

lowest :  0  1  2  3  4, highest: 16 17 18 19 21
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
overdue_credit_count 
       n  missing distinct     Info     Mean      Gmd 
  161516     9230        4    0.131  0.04607  0.08796 
                                      
Value           0      1      2      3
Frequency  154135   7326     50      5
Proportion  0.954  0.045  0.000  0.000
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
open_account_flg 
       n  missing distinct 
  170746        0        2 
                        
Value           0      1
Frequency  140690  30056
Proportion  0.824  0.176
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> 
> # Отсоединяем пакет Hmisc
> detach("package:Hmisc", unload=TRUE)
> 
> # Можно вывести сводку по пропускам с помощью функции sapply
> sapply(data3, function(x) sum(is.na(x)))
           client_id               gender                  age       marital_status         job_position           credit_sum         credit_month            tariff_id            score_shk            education        living_region 
                   0                    0                    2                    2                    0                    1                    0                    0                    3                    3                  192 
      monthly_income         credit_count overdue_credit_count     open_account_flg 
                   1                 9230                 9230                    0 
> 
> # 4.2.2. Импутация средним, медианой и модой 
> 
> # Заменяем пропуски в переменных age и score_shk средними значениями
> data3$age[is.na(data3$age)] <- mean(data3$age, na.rm=TRUE)
> data3$score_shk[is.na(data3$score_shk)] <- mean(data3$score_shk, na.rm=TRUE)
>  
> # Заменяем пропуски в переменных monthly_income и credit_sum медианами
> data3$monthly_income[is.na(data3$monthly_income)] <- median(data3$monthly_income,  
+                                                             na.rm=TRUE)
> data3$credit_sum[is.na(data3$credit_sum)] <- median(data3$credit_sum,  
+                                                     na.rm=TRUE)
>  
> # Заменяем пропуски в переменных education и marital_status модами 
> # (самыми часто встречающимися значениями), информацию о модах берем 
> # из результатов, возвращенных функцией describe пакета Hmisc
> data3$education[is.na(data3$education)] <- "SCH"
> data3$marital_status[is.na(data3$marital_status)] <- "MAR"
> 
> # Информацию о модах и медианах можно также получить с помощью пакета 
> # imputeMissings, функция compute автоматически вычисляет для количественных
> # переменных – медианы, а для категориальных переменных – моды
> library(imputeMissings)
> values <- compute(data3)
> values
$client_id
[1] 85373.5

$gender
[1] "F"

$age
[1] 34

$marital_status
[1] "MAR"

$job_position
[1] "SPC"

$credit_sum
[1] 21229

$credit_month
[1] 10

$tariff_id
[1] "2"

$score_shk
[1] 0.461599

$education
[1] "SCH"

$living_region
[1] "МОСКОВСКАЯ ОБЛАСТЬ"

$monthly_income
[1] 35000

$credit_count
[1] 2

$overdue_credit_count
[1] 0

$open_account_flg
[1] "0"

> 
> # 4.2.3. Автоматическая импутация медианой и модой c помощью функции impute пакета imputeMissing
> 
> # С помощью функции impute пакета imputeMissing можно автоматически импутировать
> # пропуски количественных переменных – медианами, пропуски категориальных
> # переменных – модами
> example <- read.csv2("C:/Trees/Example_comma.csv", sep = ',')
> is.na(example) <- example==''
> head(example, 20)
   client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education                   living_region monthly_income credit_count overdue_credit_count open_account_flg
1          1      M  48            MAR          UMN      59998           10        28  0.770249       GRD              КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2          2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                          МОСКВА          43000            2                    0                0
3          3      M  32            MAR          SPC      10728           12         2  0.459589       SCH             САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4          4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD           ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5          5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH             ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6          6      F  37            MAR          SPC      26788           10         2  0.484203       SCH             СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
7          7      M  NA            MAR          SPC      10317            6        25  0.276012       SCH           НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0
8          8      F  26            UNM          SPC      47878           10         2  0.512525       GRD              МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0
9          9      M  23           <NA>          SPC   37577.16           12        28  0.642267       SCH               ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0
10        10      F  32            UNM          SPC      26268           10         2  0.465026       GRD             СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0
11        11      M  26           <NA>          SPC       <NA>           14         1   0.44543       SCH                 САНКТ-ПЕТЕРБУРГ          36000            2                    0                0
12        12      F  26            UNM          SPC      18936           10        19  0.455774       GRD         РЕСПУБЛИКА БАШКОРТОСТАН          30000            0                    0                0
13        13      M  37            MAR          SPC      42289           10        28      <NA>       SCH           АРХАНГЕЛЬСКАЯ ОБЛАСТЬ          70000            1                    0                0
14        14      M  43            MAR          INP      57567           10         2  0.341164       GRD               ТЮМЕНСКАЯ ОБЛАСТЬ          60000            7                    0                0
15        15      F  32            MAR          SPC      12711           12        25  0.411186      <NA>         РЕСПУБЛИКА БАШКОРТОСТАН          30000            3                    0                0
16        16      M  NA            MAR          SPC      13209           10         2  0.498255       SCH                   ПЕРМСКИЙ КРАЙ          34000            2                    0                0
17        17      M  36            DIV          SPC      22612           10        20      <NA>       SCH              КРАСНОДАРСКИЙ КРАЙ          50000            4                    0                0
18        18      F  54            UNM          UMN      24990           12         2  0.413558       GRD               ТЮМЕНСКАЯ ОБЛАСТЬ          40000            6                    0                1
19        19      M  43            UNM          SPC      54668           10        28  0.489676       SCH               ТЮМЕНСКАЯ ОБЛАСТЬ          85000            2                    0                0
20        20      M  33            UNM          SPC      19539           10        28  0.531547      <NA> КАРАЧАЕВО-ЧЕРКЕССКАЯ РЕСПУБЛИКА          30000            0                    0                0
> example_imp <- impute(example, method = "median/mode")
> head(example_imp, 20)
   client_id gender age marital_status job_position credit_sum credit_month tariff_id score_shk education                   living_region monthly_income credit_count overdue_credit_count open_account_flg
1          1      M  48            MAR          UMN      59998           10        28  0.770249       GRD              КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0
2          2      F  28            MAR          UMN      10889            6         2  0.248514       GRD                          МОСКВА          43000            2                    0                0
3          3      M  32            MAR          SPC      10728           12         2  0.459589       SCH             САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0
4          4      F  27            DIV          SPC   12009.09           12         2  0.362536       GRD           ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0
5          5      M  45            MAR          SPC   16908.89           10         2  0.421385       SCH             ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0
6          6      F  37            MAR          SPC      26788           10         2  0.484203       SCH             СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0
7          7      M  34            MAR          SPC      10317            6        25  0.276012       SCH           НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0
8          8      F  26            UNM          SPC      47878           10         2  0.512525       GRD              МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0
9          9      M  23            MAR          SPC   37577.16           12        28  0.642267       SCH               ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0
10        10      F  32            UNM          SPC      26268           10         2  0.465026       GRD             СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0
11        11      M  26            MAR          SPC      22990           14         1   0.44543       SCH                 САНКТ-ПЕТЕРБУРГ          36000            2                    0                0
12        12      F  26            UNM          SPC      18936           10        19  0.455774       GRD         РЕСПУБЛИКА БАШКОРТОСТАН          30000            0                    0                0
13        13      M  37            MAR          SPC      42289           10        28  0.207858       SCH           АРХАНГЕЛЬСКАЯ ОБЛАСТЬ          70000            1                    0                0
14        14      M  43            MAR          INP      57567           10         2  0.341164       GRD               ТЮМЕНСКАЯ ОБЛАСТЬ          60000            7                    0                0
15        15      F  32            MAR          SPC      12711           12        25  0.411186       SCH         РЕСПУБЛИКА БАШКОРТОСТАН          30000            3                    0                0
16        16      M  34            MAR          SPC      13209           10         2  0.498255       SCH                   ПЕРМСКИЙ КРАЙ          34000            2                    0                0
17        17      M  36            DIV          SPC      22612           10        20  0.207858       SCH              КРАСНОДАРСКИЙ КРАЙ          50000            4                    0                0
18        18      F  54            UNM          UMN      24990           12         2  0.413558       GRD               ТЮМЕНСКАЯ ОБЛАСТЬ          40000            6                    0                1
19        19      M  43            UNM          SPC      54668           10        28  0.489676       SCH               ТЮМЕНСКАЯ ОБЛАСТЬ          85000            2                    0                0
20        20      M  33            UNM          SPC      19539           10        28  0.531547       SCH КАРАЧАЕВО-ЧЕРКЕССКАЯ РЕСПУБЛИКА          30000            0                    0                0
> 
> # 4.2.4. Замена пропусков отдельной категорией «Пропуск»
> 
> # Заменяем пропуски в переменной living_region отдельным значением “Пропуск”,
> # для этого переводим ее в символьный вектор с помощью функции as.character
> data3$living_region <- as.character(data3$living_region)
> 
> # Заменяем пропуски в переменной living_region отдельным значением “Пропуск”
> data3$living_region[is.na(data3$living_region)] <- "Пропуск"
> 
> # Преобразуем переменную living_region обратно в фактор
> data3$living_region <- as.factor(data3$living_region)
> 
> # 4.2.5. Замена пропусков отдельным значением с помощью функции na.replace пакета imputeTS
> 
> # Загружаем пакет imputeTS
> library(imputeTS)
> 
> # Заменяем пропуски в переменных credit_count и overdue_credit_count
> # отдельным значением -1 с помощью функции na.replace
> data3$credit_count <- na.replace(data3$credit_count, fill = -1)
> data3$overdue_credit_count <- na.replace(data3$overdue_credit_count, fill = -1)
> 
> # Снова выводим сводку по пропускам с помощью функции sapply
> # по итогам импутации переменных
> sapply(data3, function(x) sum(is.na(x)))
           client_id               gender                  age       marital_status         job_position           credit_sum         credit_month            tariff_id            score_shk            education        living_region 
                   0                    0                    0                    0                    0                    0                    0                    0                    0                    0                    0 
      monthly_income         credit_count overdue_credit_count     open_account_flg 
                   0                    0                    0                    0 
> 
> # 4.3. Удаление и создание переменных
> 
> # 4.3.1. Удаляем переменную
> data3$client_id <- NULL
> 
> # 4.3.2. Создаем переменную, у которой значения основаны на значениях другой переменной
> 
> # Создаем переменную avrzarplata, у которой значения основаны 
> # на категориях переменной job_position
> data3$avrzarplata[data3$job_position=="UMN"] <- 51000
> data3$avrzarplata[data3$job_position=="SPC"] <- 63000
> data3$avrzarplata[data3$job_position=="INP"] <- 55000
> data3$avrzarplata[data3$job_position=="DIR"] <- 60000
> data3$avrzarplata[data3$job_position=="ATP"] <- 46000
> data3$avrzarplata[data3$job_position=="PNA"] <- 71000
> data3$avrzarplata[data3$job_position=="BIS"] <- 86000
> data3$avrzarplata[data3$job_position=="WOI"] <- 76000
> data3$avrzarplata[data3$job_position=="NOR"] <- 54000
> data3$avrzarplata[data3$job_position=="WRK"] <- 77000
> data3$avrzarplata[data3$job_position=="WRP"] <- 75000
> data3$avrzarplata[data3$job_position=="PNV"] <- 67000
> data3$avrzarplata[data3$job_position=="BIU"] <- 43000
> data3$avrzarplata[data3$job_position=="PNI"] <- 69000
> data3$avrzarplata[data3$job_position=="HSK"] <- 74000
> data3$avrzarplata[data3$job_position=="PNS"] <- 44000
> data3$avrzarplata[data3$job_position=="INV"] <- 88000
> data3$avrzarplata[data3$job_position=="ONB"] <- 62000
> 
> # 4.3.3. Создаем переменную, которая является отношением двух переменных
> 
> # Создаем переменную, которая является отношением 
> # суммы кредита к ежемесячному заработку
> data3$ratio <- data3$credit_sum/data3$monthly_income
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127
> 
> # 4.3.4. Создаем переменную, у которой каждое значение – частота наблюдений в категории переменной
> 
> # Загружаем пакет dplyr
> library(dplyr)

Присоединяю пакет: ‘dplyr’

Следующий объект скрыт от ‘package:imputeMissings’:

    compute

Следующие объекты скрыты от ‘package:stats’:

    filter, lag

Следующие объекты скрыты от ‘package:base’:

    intersect, setdiff, setequal, union

> 
> # Создаем временный датафрейм, в который записываем новую переменную,
> # это делается для того, чтобы не перегружать исходный датафрейм
> # дополнительной информацией, генерируемой dplyr 
> tmp <-data.frame(data3)
> 
> # Вычисляем новую переменную living_region_cnt
> # у которой каждое значение – частота наблюдений 
> # в категории переменной living_region
> tmp <- tmp %>%
+ group_by(living_region) %>%
+ mutate(living_region_cnt = n())
> 
> # Добавляем новую переменную living_region_cnt в исходный датафрейм
> data3$living_region_cnt <-tmp$living_region_cnt
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
> 
> # 4.3.5. Создаем переменную, у которой каждое значение – среднее значение количественной 
> # переменной, взятое по уровню категориальной переменной
> 
> # Создаем временный датафрейм, в который записываем новую переменную,
> # это делается для того, чтобы не перегружать исходный датафрейм
> # дополнительной информацией, генерируемой dplyr 
> tmp <-data.frame(data3)
> 
> # Создаем переменную, у которой каждое значение – среднее значение 
> # monthly_income в категории переменной living_region
> tmp <- tmp %>%
+ group_by(living_region) %>%
+ mutate(mean_income_by_reg = mean(monthly_income))
> 
> # Добавляем новую переменную mean_income_by_reg в исходный датафрейм
> data3$mean_income_by_reg <-tmp$mean_income_by_reg
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg
1            37260.77
2            62696.12
3            31110.90
4            31301.44
5            33759.67
6            32335.76
7            34254.01
8            53064.73
9            48550.90
10           32335.76
> 
> # Отсоединяем пакет dplyr
> detach("package:dplyr", unload=TRUE)
> 
> # 4.3.6. Создаем категориальную переменную в результате конъюнкции двух переменных
> 
> # Создаем переменную conj, которая является результатов конъюнкции 
> # двух переменных education и marital_status 
> data3$conj <- paste(data3$education, data3$marital_status, sep="+")
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj
1            37260.77 GRD+MAR
2            62696.12 GRD+MAR
3            31110.90 SCH+MAR
4            31301.44 GRD+DIV
5            33759.67 SCH+MAR
6            32335.76 SCH+MAR
7            34254.01 SCH+MAR
8            53064.73 GRD+UNM
9            48550.90 SCH+MAR
10           32335.76 GRD+UNM
> 
> # 4.3.7. Создаем переменную, у которой каждое значение – логарифм значения количественной переменной
> 
> # Создаем переменную log_income, у которой каждое значение – логарифм значения
> # переменной monthly_income
> data3$log_income <- log(data3$monthly_income)
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj log_income
1            37260.77 GRD+MAR  10.308953
2            62696.12 GRD+MAR  10.668955
3            31110.90 SCH+MAR  10.043249
4            31301.44 GRD+DIV   9.740969
5            33759.67 SCH+MAR  10.126631
6            32335.76 SCH+MAR  10.308953
7            34254.01 SCH+MAR  10.239960
8            53064.73 GRD+UNM  11.002100
9            48550.90 SCH+MAR  10.819778
10           32335.76 GRD+UNM  10.584056
> 
> # 4.3.8. Создаем количественную переменную, у которой каждое значение – 
> # усредненное значение нескольких количественных переменных
> 
> # С помощью функции rowMeans создаем переменную mean_age_tenure, 
> # у которой каждое значение – уcредненное значение переменных 
> # age и credit_month 
> data3$mean_age_tenure=rowMeans(data3[,c("age", "credit_month")], na.rm=TRUE)
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj log_income mean_age_tenure
1            37260.77 GRD+MAR  10.308953        29.00000
2            62696.12 GRD+MAR  10.668955        17.00000
3            31110.90 SCH+MAR  10.043249        22.00000
4            31301.44 GRD+DIV   9.740969        19.50000
5            33759.67 SCH+MAR  10.126631        27.50000
6            32335.76 SCH+MAR  10.308953        23.50000
7            34254.01 SCH+MAR  10.239960        21.24866
8            53064.73 GRD+UNM  11.002100        18.00000
9            48550.90 SCH+MAR  10.819778        17.50000
10           32335.76 GRD+UNM  10.584056        21.00000
> 
> # 4.3.9. Выполняем категоризацию (биннинг) количественной переменной на основе интервалов, заданных вручную
> 
> # Вычисляем минимальное значение переменной age
> min(data3$age, na.rm=T)
[1] 18
> 
> # Вычисляем максимальное значение переменной age
> max(data3$age, na.rm=T)
[1] 71
> 
> # Задаем категории новой переменной agecat на основе интервалов
> # значений количественной переменной age
> data3$agecat[data3$age <= 30] <- "от 18 до 30 лет"
> data3$agecat[data3$age > 30 & data3$age <= 45] <- "от 31 до 45 лет"
> data3$agecat[data3$age > 45 & data3$age <= 60] <- "от 46 до 60 лет"
> data3$agecat[data3$age > 60] <- "старше 60 лет"
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj log_income mean_age_tenure          agecat
1            37260.77 GRD+MAR  10.308953        29.00000 от 46 до 60 лет
2            62696.12 GRD+MAR  10.668955        17.00000 от 18 до 30 лет
3            31110.90 SCH+MAR  10.043249        22.00000 от 31 до 45 лет
4            31301.44 GRD+DIV   9.740969        19.50000 от 18 до 30 лет
5            33759.67 SCH+MAR  10.126631        27.50000 от 31 до 45 лет
6            32335.76 SCH+MAR  10.308953        23.50000 от 31 до 45 лет
7            34254.01 SCH+MAR  10.239960        21.24866 от 31 до 45 лет
8            53064.73 GRD+UNM  11.002100        18.00000 от 18 до 30 лет
9            48550.90 SCH+MAR  10.819778        17.50000 от 18 до 30 лет
10           32335.76 GRD+UNM  10.584056        21.00000 от 31 до 45 лет
> 
> # Можно сделать проще, использовав функцию cut
> data3$agecat2<-cut(data3$age, c(18,30,45,60,71), include.lowest = TRUE)
> head(data3, 10)
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj log_income mean_age_tenure          agecat agecat2
1            37260.77 GRD+MAR  10.308953        29.00000 от 46 до 60 лет (45,60]
2            62696.12 GRD+MAR  10.668955        17.00000 от 18 до 30 лет [18,30]
3            31110.90 SCH+MAR  10.043249        22.00000 от 31 до 45 лет (30,45]
4            31301.44 GRD+DIV   9.740969        19.50000 от 18 до 30 лет [18,30]
5            33759.67 SCH+MAR  10.126631        27.50000 от 31 до 45 лет (30,45]
6            32335.76 SCH+MAR  10.308953        23.50000 от 31 до 45 лет (30,45]
7            34254.01 SCH+MAR  10.239960        21.24866 от 31 до 45 лет (30,45]
8            53064.73 GRD+UNM  11.002100        18.00000 от 18 до 30 лет [18,30]
9            48550.90 SCH+MAR  10.819778        17.50000 от 18 до 30 лет [18,30]
10           32335.76 GRD+UNM  10.584056        21.00000 от 31 до 45 лет (30,45]
> 
> # 4.3.10. Выполняем перегруппировку категориальной переменной
> 
> # Загружаем пакет memisc
> library(memisc)
Загрузка требуемого пакета: MASS

Присоединяю пакет: ‘memisc’

Следующие объекты скрыты от ‘package:stats’:

    contr.sum, contr.treatment, contrasts

Следующий объект скрыт от ‘package:base’:

    as.array

> 
> # С помощью функции recode пакета memisc cоздадим переменную jobcat 
> # с укрупненными категориями переменной job_position
> data3$jobcat <- recode(data3$job_position,
+ "cat1" <- c("UMN", "SPC", "INP", "DIR"),
+ "cat2" <- c("ATP", "PNA", "BIS"),
+ "cat3" <- c("WOI", "NOR", "WRK", "WRP"),
+ otherwise="cat4")
> 
> # 4.3.11. Выполняем категоризацию (биннинг) количественной переменной на основе квантилей
> 
> # Загружаем пакет rattle
> library(rattle)
Rattle: A free graphical interface for data mining with R.
Version 4.1.0 Copyright (c) 2006-2015 Togaware Pty Ltd.
Type 'rattle()' to shake, rattle, and roll your data.
> 
> # Осуществляем биннинг переменной age на основе квантилей 
> # и записываем результаты в новую переменную age_decile, 
> # не создавая меток категорий. Квантили– значения признака, 
> # занимающие в упорядоченном ряду единиц совокупности 
> # определенное место. Квантили делят ряд на равные (по числу единиц) 
> # части: квартили – на четыре, квинтили – на пять, децили – на десять.
> data3$age_decile<- binning(data3$age, bins=10,
+                                         method="quantile", labels=NULL,
+                                         ordered=TRUE, weights=NULL)
> 
> # 4.3.12. Создаем бинарную переменную на основе значений количественной переменной
> 
> # Создаем новую переменную retired, которая принимает значение "Yes",
> # если значение переменной age больше 60, и значение "No" в противном случае
> data3$retired <- ifelse(data3$age >= 60, c("Yes"), c("No"))
> head(data3, 10) 
   gender      age marital_status job_position credit_sum credit_month tariff_id score_shk education         living_region monthly_income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1       M 48.00000            MAR          UMN   59998.00           10        28  0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ          30000            1                    1                0       51000 1.9999333              8355
2       F 28.00000            MAR          UMN   10889.00            6         2  0.248514       GRD                МОСКВА          43000            2                    0                0       51000 0.2532326              9261
3       M 32.00000            MAR          SPC   10728.00           12         2  0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ          23000            5                    0                0       63000 0.4664348              2282
4       F 27.00000            DIV          SPC   12009.09           12         2  0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ          17000            2                    0                0       63000 0.7064171              2293
5       M 45.00000            MAR          SPC   16908.89           10         2  0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ          25000            1                    0                0       63000 0.6763556              5155
6       F 37.00000            MAR          SPC   26788.00           10         2  0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ          30000            0                    0                0       63000 0.8929333              4617
7       M 36.49731            MAR          SPC   10317.00            6        25  0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ          28000            3                    0                0       63000 0.3684643              3695
8       F 26.00000            UNM          SPC   47878.00           10         2  0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ          60000            3                    0                0       63000 0.7979667             12844
9       M 23.00000            MAR          SPC   37577.16           12        28  0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ          50000            3                    0                0       63000 0.7515432              8735
10      F 32.00000            UNM          SPC   26268.00           10         2  0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ          39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj log_income mean_age_tenure          agecat agecat2 jobcat age_decile retired
1            37260.77 GRD+MAR  10.308953        29.00000 от 46 до 60 лет (45,60]   cat1    (45,52]      No
2            62696.12 GRD+MAR  10.668955        17.00000 от 18 до 30 лет [18,30]   cat1    (27,29]      No
3            31110.90 SCH+MAR  10.043249        22.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
4            31301.44 GRD+DIV   9.740969        19.50000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
5            33759.67 SCH+MAR  10.126631        27.50000 от 31 до 45 лет (30,45]   cat1    (41,45]      No
6            32335.76 SCH+MAR  10.308953        23.50000 от 31 до 45 лет (30,45]   cat1    (34,38]      No
7            34254.01 SCH+MAR  10.239960        21.24866 от 31 до 45 лет (30,45]   cat1    (34,38]      No
8            53064.73 GRD+UNM  11.002100        18.00000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
9            48550.90 SCH+MAR  10.819778        17.50000 от 18 до 30 лет [18,30]   cat1    [18,24]      No
10           32335.76 GRD+UNM  10.584056        21.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
> 
> # 4.3.13. Создаем переменную на основе совпадений значений в двух переменных
> 
> # Считываем данные
> example <- read.csv2("C:/Trees/Strings.csv")
> 
> # Смотрим данные
> example
   age    registration     fact_living
1   20      Красноярск          Москва
2   21          Москва          Москва
3   22          Москва          Москва
4   45    Екатеринбург       Челябинск
5   60     Новосибирск          Москва
6   18          Москва          Москва
7   21 Санкт-Петербург Санкт-Петербург
8   45     Владивосток          Москва
9   22     Калининград     Калининград
10  48         Саратов         Саратов
> 
> # Теперь сравним переменные registration и fact_living на совпадение значений
> # и результаты запишем в переменную matching
> example$matching <- (example$registration %in% example$fact_living) & (example$registration %in% example$fact_living)
> 
> # Смотрим данные
> example
   age    registration     fact_living matching
1   20      Красноярск          Москва    FALSE
2   21          Москва          Москва     TRUE
3   22          Москва          Москва     TRUE
4   45    Екатеринбург       Челябинск    FALSE
5   60     Новосибирск          Москва    FALSE
6   18          Москва          Москва     TRUE
7   21 Санкт-Петербург Санкт-Петербург     TRUE
8   45     Владивосток          Москва    FALSE
9   22     Калининград     Калининград     TRUE
10  48         Саратов         Саратов     TRUE
> 
> # Можно сделать немного иным способом, предварительно преобразовав 
> # переменные registration и fact_living в тип char
> example$fact_living <- as.character(example$fact_living)
> example$registration <- as.character(example$registration) 
> example$matching2 <- example$registration==example$fact_living
> 
> # Смотрим данные
> example
   age    registration     fact_living matching matching2
1   20      Красноярск          Москва    FALSE     FALSE
2   21          Москва          Москва     TRUE      TRUE
3   22          Москва          Москва     TRUE      TRUE
4   45    Екатеринбург       Челябинск    FALSE     FALSE
5   60     Новосибирск          Москва    FALSE     FALSE
6   18          Москва          Москва     TRUE      TRUE
7   21 Санкт-Петербург Санкт-Петербург     TRUE      TRUE
8   45     Владивосток          Москва    FALSE     FALSE
9   22     Калининград     Калининград     TRUE      TRUE
10  48         Саратов         Саратов     TRUE      TRUE
> 
> # 4.4. Получение статистической информации о переменных
> 
> # С помощью функции summary выводим статистическую
> # информацию о переменных
> summary(data3)
 gender         age       marital_status  job_position      credit_sum      credit_month     tariff_id       score_shk      education                living_region    monthly_income    credit_count    overdue_credit_count
 F:88697   Min.   :18.0      :    0      SPC    :134680   Min.   :  2736   Min.   : 3.00   2      :69355   Min.   :0.0000      :    0   МОСКОВСКАЯ ОБЛАСТЬ  : 12844   Min.   :  5000   Min.   :-1.000   Min.   :-1.00000    
 M:82049   1st Qu.:28.0   CIV: 4196      UMN    : 17674   1st Qu.: 14908   1st Qu.:10.00   28     :39117   1st Qu.:0.3795   ACD:  107   МОСКВА              :  9261   1st Qu.: 25000   1st Qu.: 1.000   1st Qu.: 0.00000    
           Median :34.0   DIV:16970      BIS    :  5591   Median : 21229   Median :10.00   19     :15537   Median :0.4616   GRD:72594   ТЮМЕНСКАЯ ОБЛАСТЬ   :  8735   Median : 35000   Median : 2.000   Median : 0.00000    
           Mean   :36.5   MAR:93957      PNA    :  4107   Mean   : 26095   Mean   :10.98   20     :10970   Mean   :0.4695   PGR:  565   КРАСНОДАРСКИЙ КРАЙ  :  8355   Mean   : 40138   Mean   : 1.939   Mean   :-0.01048    
           3rd Qu.:43.0   UNM:52148      DIR    :  3750   3rd Qu.: 32068   3rd Qu.:12.00   25     : 7497   3rd Qu.:0.5524   SCH:87539   САНКТ-ПЕТЕРБУРГ     :  8303   3rd Qu.: 50000   3rd Qu.: 3.000   3rd Qu.: 0.00000    
           Max.   :71.0   WID: 3475      ATP    :  2791   Max.   :200000   Max.   :36.00   30     : 5538   Max.   :1.1283   UGR: 9941   РЕСПУБЛИКА ТАТАРСТАН:  7667   Max.   :950000   Max.   :21.000   Max.   : 3.00000    
                                         (Other):  2153                                    (Other):22732                                (Other)             :115581                                                         
 open_account_flg  avrzarplata        ratio          living_region_cnt mean_income_by_reg     conj             log_income     mean_age_tenure    agecat             agecat2       jobcat         age_decile      retired         
 0:140690         Min.   :43000   Min.   : 0.01173   Min.   :   17     Min.   :28170      Length:170746      Min.   : 8.517   Min.   :10.50   Length:170746      [18,30]:59714   cat1:156345   (34,38]:21442   Length:170746     
 1: 30056         1st Qu.:63000   1st Qu.: 0.41903   1st Qu.: 1723     1st Qu.:33760      Class :character   1st Qu.:10.127   1st Qu.:19.50   Class :character   (30,45]:77284   cat2: 12489   (29,32]:20729   Class :character  
                  Median :63000   Median : 0.63992   Median : 4328     Median :36570      Mode  :character   Median :10.463   Median :23.00   Mode  :character   (45,60]:29155   cat3:  1655   (24,27]:20060   Mode  :character  
                  Mean   :62397   Mean   : 0.74720   Mean   : 5118     Mean   :40138                         Mean   :10.466   Mean   :23.74                      (60,71]: 4593   cat4:   257   (45,52]:17426                     
                  3rd Qu.:63000   3rd Qu.: 0.95960   3rd Qu.: 8303     3rd Qu.:48551                         3rd Qu.:10.820   3rd Qu.:27.00                                                    [18,24]:17206                     
                  Max.   :88000   Max.   :16.90000   Max.   :12844     Max.   :72813                         Max.   :13.764   Max.   :53.50                                                    (52,71]:16322                     
                                                                                                                                                                                               (Other):57561                     
> 
> # Загружаем пакет Hmisc
> library(Hmisc)

Присоединяю пакет: ‘Hmisc’

Следующие объекты скрыты от ‘package:memisc’:

    %nin%, html

Следующий объект скрыт от ‘package:imputeMissings’:

    impute

Следующие объекты скрыты от ‘package:base’:

    format.pval, round.POSIXt, trunc.POSIXt, units

> 
> # С помощью функции describe пакета Hmisc выводим статистическую
> # информацию о переменных
> describe(data3)
data3 

 26  Variables      170746  Observations
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gender 
       n  missing distinct 
  170746        0        2 
                      
Value          F     M
Frequency  88697 82049
Proportion 0.519 0.481
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
age 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       55    0.999     36.5    11.78       23       24       28       34       43       52       57 

lowest : 18 19 20 21 22, highest: 67 68 69 70 71
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
marital_status 
       n  missing distinct 
  170746        0        5 
                                        
Value        CIV   DIV   MAR   UNM   WID
Frequency   4196 16970 93957 52148  3475
Proportion 0.025 0.099 0.550 0.305 0.020
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
job_position 
       n  missing distinct 
  170746        0       18 
                                                                                                                                        
Value         ATP    BIS    BIU    DIR    HSK    INP    INV    NOR    ONB    PNA    PNI    PNS    PNV    SPC    UMN    WOI    WRK    WRP
Frequency    2791   5591    126   3750      8    241      5    537      1   4107     65     12     40 134680  17674    352    656    110
Proportion  0.016  0.033  0.001  0.022  0.000  0.001  0.000  0.003  0.000  0.024  0.000  0.000  0.000  0.789  0.104  0.002  0.004  0.001
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
credit_sum 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0    42769        1    26095    17031     8059    10668    14908    21229    32068    50616    59846 

lowest :   2736.0   3000.0   3000.4   3011.0   3029.0, highest: 184732.0 187768.0 189734.0 194570.0 200000.0
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
credit_month 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       31    0.805    10.98    2.859        6       10       10       10       12       12       18 

lowest :  3  4  5  6  7, highest: 29 30 31 32 36
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tariff_id 
       n  missing distinct 
  170746        0       33 

lowest : 1  2  3  4  5 , highest: 29 30 31 32 33
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
score_shk 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0    16281        1   0.4695   0.1409   0.2785   0.3150   0.3795   0.4616   0.5524   0.6423   0.6916 

lowest : 0.000000 0.071819 0.072468 0.074979 0.076782, highest: 0.976126 0.978480 1.041122 1.054699 1.128291
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
education 
       n  missing distinct 
  170746        0        5 
                                        
Value        ACD   GRD   PGR   SCH   UGR
Frequency    107 72594   565 87539  9941
Proportion 0.001 0.425 0.003 0.513 0.058
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
living_region 
       n  missing distinct 
  170746        0       82 

lowest : АЛТАЙСКИЙ КРАЙ             АМУРСКАЯ ОБЛАСТЬ           АРХАНГЕЛЬСКАЯ ОБЛАСТЬ      АСТРАХАНСКАЯ ОБЛАСТЬ       БЕЛГОРОДСКАЯ ОБЛАСТЬ      
highest: ЧЕЧЕНСКАЯ РЕСПУБЛИКА       ЧИТИНСКАЯ ОБЛАСТЬ          ЧУВАШСКАЯ РЕСПУБЛИКА       ЧУКОТСКИЙ АВТОНОМНЫЙ ОКРУГ ЯРОСЛАВСКАЯ ОБЛАСТЬ       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
monthly_income 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0     1591    0.997    40138    22903    15000    20000    25000    35000    50000    68000    80000 

lowest :   5000   5600   6000   6300   6434, highest: 700000 750000 800000 900000 950000
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
credit_count 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       22    0.964    1.939    1.987       -1        0        1        2        3        4        5 

lowest : -1  0  1  2  3, highest: 16 17 18 19 21
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
overdue_credit_count 
       n  missing distinct     Info     Mean      Gmd 
  170746        0        5    0.264 -0.01048   0.1857 
                                             
Value          -1      0      1      2      3
Frequency    9230 154135   7326     50      5
Proportion  0.054  0.903  0.043  0.000  0.000
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
open_account_flg 
       n  missing distinct 
  170746        0        2 
                        
Value           0      1
Frequency  140690  30056
Proportion  0.824  0.176
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
avrzarplata 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       18    0.508    62397     4850    51000    51000    63000    63000    63000    63000    71000 
                                                                                                                                        
Value       43000  44000  46000  51000  54000  55000  60000  62000  63000  67000  69000  71000  74000  75000  76000  77000  86000  88000
Frequency     126     12   2791  17674    537    241   3750      1 134680     40     65   4107      8    110    352    656   5591      5
Proportion  0.001  0.000  0.016  0.104  0.003  0.001  0.022  0.000  0.789  0.000  0.000  0.024  0.000  0.001  0.002  0.004  0.033  0.000
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ratio 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0   112337        1   0.7472   0.4854   0.2138   0.2777   0.4190   0.6399   0.9596   1.3596   1.6499 

lowest :  0.01173333  0.01460250  0.01676176  0.01784000  0.01852381, highest:  9.04000000  9.33260000 10.00000000 16.00200000 16.90000000
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
living_region_cnt 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       80    0.999     5118     4082      700      915     1723     4328     8303     9261    12844 

lowest :    17    19    31    32    54, highest:  8303  8355  8735  9261 12844
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mean_income_by_reg 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       82    0.999    40138     9750    30202    31262    33760    36570    48551    53065    62696 

lowest : 28170.07 28316.98 28745.93 29267.81 29465.12, highest: 56408.87 61619.22 62696.12 64996.12 72812.50
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
conj 
       n  missing distinct 
  170746        0       25 

lowest : ACD+CIV ACD+DIV ACD+MAR ACD+UNM ACD+WID, highest: UGR+CIV UGR+DIV UGR+MAR UGR+UNM UGR+WID
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
log_income 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0     1591    0.997    10.47    0.561    9.616    9.903   10.127   10.463   10.820   11.127   11.290 

lowest :  8.517193  8.630522  8.699515  8.748305  8.769352, highest: 13.458836 13.527828 13.592367 13.710150 13.764217
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mean_age_tenure 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75      .90      .95 
  170746        0       87    0.999    23.74    6.214     16.5     17.5     19.5     23.0     27.0     32.0     34.5 

lowest : 10.5 11.0 11.5 12.0 12.5, highest: 51.0 51.5 52.0 52.5 53.5
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
agecat 
       n  missing distinct 
  170746        0        4 
                                                                          
Value      от 18 до 30 лет от 31 до 45 лет от 46 до 60 лет   старше 60 лет
Frequency            59714           77284           29155            4593
Proportion           0.350           0.453           0.171           0.027
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
agecat2 
       n  missing distinct 
  170746        0        4 
                                          
Value      [18,30] (30,45] (45,60] (60,71]
Frequency    59714   77284   29155    4593
Proportion   0.350   0.453   0.171   0.027
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
jobcat 
       n  missing distinct 
  170746        0        4 
                                      
Value        cat1   cat2   cat3   cat4
Frequency  156345  12489   1655    257
Proportion  0.916  0.073  0.010  0.002
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
age_decile 
       n  missing distinct 
  170746        0       10 
                                                                                          
Value      [18,24] (24,27] (27,29] (29,32] (32,34] (34,38] (38,41] (41,45] (45,52] (52,71]
Frequency    17206   20060   15120   20729   12451   21442   14551   15439   17426   16322
Proportion   0.101   0.117   0.089   0.121   0.073   0.126   0.085   0.090   0.102   0.096
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
retired 
       n  missing distinct 
  170746        0        2 
                        
Value          No    Yes
Frequency  165195   5551
Proportion  0.967  0.033
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> 
> # Отсоединяем пакет Hmisc
> detach("package:Hmisc", unload=TRUE)
> 
> # 4.5. Переименование переменных
> 
> # 4.5.1. Переименовываем переменную с помощью функции names 
> 
> # Переименовываем переменную living_region в переменную region
> names(data3)[names(data3)=="living_region"] <- "region"
> str(data3)
'data.frame':   170746 obs. of  26 variables:
 $ gender              : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : num  48 28 32 27 45 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 4 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ region              : Factor w/ 82 levels "АЛТАЙСКИЙ КРАЙ",..: 23 30 64 8 77 68 33 31 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : num  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: num  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ avrzarplata         : num  51000 51000 63000 63000 63000 63000 63000 63000 63000 63000 ...
 $ ratio               : num  2 0.253 0.466 0.706 0.676 ...
 $ living_region_cnt   : int  8355 9261 2282 2293 5155 4617 3695 12844 8735 4617 ...
 $ mean_income_by_reg  : num  37261 62696 31111 31301 33760 ...
 $ conj                : chr  "GRD+MAR" "GRD+MAR" "SCH+MAR" "GRD+DIV" ...
 $ log_income          : num  10.31 10.67 10.04 9.74 10.13 ...
 $ mean_age_tenure     : num  29 17 22 19.5 27.5 ...
 $ agecat              : chr  "от 46 до 60 лет" "от 18 до 30 лет" "от 31 до 45 лет" "от 18 до 30 лет" ...
 $ agecat2             : Factor w/ 4 levels "[18,30]","(30,45]",..: 3 1 2 1 2 2 2 1 1 2 ...
 $ jobcat              : Factor w/ 4 levels "cat1","cat2",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ age_decile          : Ord.factor w/ 10 levels "[18,24]"<"(24,27]"<..: 9 3 4 2 8 6 6 2 1 4 ...
  ..- attr(*, "breaks")= num  18 24 27 29 32 34 38 41 45 52 ...
 $ retired             : chr  "No" "No" "No" "No" ...
> 
> # Переименуем переменную gender в sex, указав ее индекс 
> names(data3)[1]<-"sex"
> str(data3)
'data.frame':   170746 obs. of  26 variables:
 $ sex                 : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : num  48 28 32 27 45 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 4 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff_id           : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ region              : Factor w/ 82 levels "АЛТАЙСКИЙ КРАЙ",..: 23 30 64 8 77 68 33 31 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : num  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: num  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ avrzarplata         : num  51000 51000 63000 63000 63000 63000 63000 63000 63000 63000 ...
 $ ratio               : num  2 0.253 0.466 0.706 0.676 ...
 $ living_region_cnt   : int  8355 9261 2282 2293 5155 4617 3695 12844 8735 4617 ...
 $ mean_income_by_reg  : num  37261 62696 31111 31301 33760 ...
 $ conj                : chr  "GRD+MAR" "GRD+MAR" "SCH+MAR" "GRD+DIV" ...
 $ log_income          : num  10.31 10.67 10.04 9.74 10.13 ...
 $ mean_age_tenure     : num  29 17 22 19.5 27.5 ...
 $ agecat              : chr  "от 46 до 60 лет" "от 18 до 30 лет" "от 31 до 45 лет" "от 18 до 30 лет" ...
 $ agecat2             : Factor w/ 4 levels "[18,30]","(30,45]",..: 3 1 2 1 2 2 2 1 1 2 ...
 $ jobcat              : Factor w/ 4 levels "cat1","cat2",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ age_decile          : Ord.factor w/ 10 levels "[18,24]"<"(24,27]"<..: 9 3 4 2 8 6 6 2 1 4 ...
  ..- attr(*, "breaks")= num  18 24 27 29 32 34 38 41 45 52 ...
 $ retired             : chr  "No" "No" "No" "No" ...
> 
> # 4.5.2. Переименовываем переменную с помощью функции rename пакета dplyr
> 
> # Загружаем пакет dplyr
> library(dplyr)

Присоединяю пакет: ‘dplyr’

Следующие объекты скрыты от ‘package:memisc’:

    collect, query, recode, rename

Следующий объект скрыт от ‘package:MASS’:

    select

Следующий объект скрыт от ‘package:imputeMissings’:

    compute

Следующие объекты скрыты от ‘package:stats’:

    filter, lag

Следующие объекты скрыты от ‘package:base’:

    intersect, setdiff, setequal, union

> 
> # С помощью функции rename пакета dplyr
> # переименовываем переменную region в переменную reg,
> # а переменную tariff_id в переменную tariff
> data3 <- rename(data3, reg=region, tariff=tariff_id)
> str(data3)
'data.frame':   170746 obs. of  26 variables:
 $ sex                 : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : num  48 28 32 27 45 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 4 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff              : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score_shk           : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ reg                 : Factor w/ 82 levels "АЛТАЙСКИЙ КРАЙ",..: 23 30 64 8 77 68 33 31 73 68 ...
 $ monthly_income      : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : num  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: num  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ avrzarplata         : num  51000 51000 63000 63000 63000 63000 63000 63000 63000 63000 ...
 $ ratio               : num  2 0.253 0.466 0.706 0.676 ...
 $ living_region_cnt   : int  8355 9261 2282 2293 5155 4617 3695 12844 8735 4617 ...
 $ mean_income_by_reg  : num  37261 62696 31111 31301 33760 ...
 $ conj                : chr  "GRD+MAR" "GRD+MAR" "SCH+MAR" "GRD+DIV" ...
 $ log_income          : num  10.31 10.67 10.04 9.74 10.13 ...
 $ mean_age_tenure     : num  29 17 22 19.5 27.5 ...
 $ agecat              : chr  "от 46 до 60 лет" "от 18 до 30 лет" "от 31 до 45 лет" "от 18 до 30 лет" ...
 $ agecat2             : Factor w/ 4 levels "[18,30]","(30,45]",..: 3 1 2 1 2 2 2 1 1 2 ...
 $ jobcat              : Factor w/ 4 levels "cat1","cat2",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ age_decile          : Ord.factor w/ 10 levels "[18,24]"<"(24,27]"<..: 9 3 4 2 8 6 6 2 1 4 ...
  ..- attr(*, "breaks")= num  18 24 27 29 32 34 38 41 45 52 ...
 $ retired             : chr  "No" "No" "No" "No" ...
> 
> # Отсоединяем пакет dplyr
> detach("package:dplyr", unload=TRUE)
> 
> # 4.5.3. Переименовываем переменную с помощью функции setnames пакета data.table
> 
> # Загружаем пакет data.table
> library(data.table)
data.table 1.10.4
  The fastest way to learn (by data.table authors): https://www.datacamp.com/courses/data-analysis-the-data-table-way
  Documentation: ?data.table, example(data.table) and browseVignettes("data.table")
  Release notes, videos and slides: http://r-datatable.com
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
data.table + dplyr code now lives in dtplyr.
Please library(dtplyr)!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
data.table + dplyr code now lives in dtplyr.
Please library(dtplyr)!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> 
> # С помощью функции setnames пакета data.table переименуем переменные
> # monthly_income и score_shk
> setnames(data3, old=c("monthly_income","score_shk"), new=c("income", "score"))
> str(data3)
'data.frame':   170746 obs. of  26 variables:
 $ sex                 : Factor w/ 2 levels "F","M": 2 1 2 1 2 1 2 1 2 1 ...
 $ age                 : num  48 28 32 27 45 ...
 $ marital_status      : Factor w/ 6 levels "","CIV","DIV",..: 4 4 4 3 4 4 4 5 4 5 ...
 $ job_position        : Factor w/ 18 levels "ATP","BIS","BIU",..: 15 15 14 14 14 14 14 14 14 14 ...
 $ credit_sum          : num  59998 10889 10728 12009 16909 ...
 $ credit_month        : int  10 6 12 12 10 10 6 10 12 10 ...
 $ tariff              : Factor w/ 33 levels "1","2","3","4",..: 28 2 2 2 2 2 25 2 28 2 ...
 $ score               : num  0.77 0.249 0.46 0.363 0.421 ...
 $ education           : Factor w/ 6 levels "","ACD","GRD",..: 3 3 5 3 5 5 5 3 5 3 ...
 $ reg                 : Factor w/ 82 levels "АЛТАЙСКИЙ КРАЙ",..: 23 30 64 8 77 68 33 31 73 68 ...
 $ income              : int  30000 43000 23000 17000 25000 30000 28000 60000 50000 39500 ...
 $ credit_count        : num  1 2 5 2 1 0 3 3 3 7 ...
 $ overdue_credit_count: num  1 0 0 0 0 0 0 0 0 0 ...
 $ open_account_flg    : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ avrzarplata         : num  51000 51000 63000 63000 63000 63000 63000 63000 63000 63000 ...
 $ ratio               : num  2 0.253 0.466 0.706 0.676 ...
 $ living_region_cnt   : int  8355 9261 2282 2293 5155 4617 3695 12844 8735 4617 ...
 $ mean_income_by_reg  : num  37261 62696 31111 31301 33760 ...
 $ conj                : chr  "GRD+MAR" "GRD+MAR" "SCH+MAR" "GRD+DIV" ...
 $ log_income          : num  10.31 10.67 10.04 9.74 10.13 ...
 $ mean_age_tenure     : num  29 17 22 19.5 27.5 ...
 $ agecat              : chr  "от 46 до 60 лет" "от 18 до 30 лет" "от 31 до 45 лет" "от 18 до 30 лет" ...
 $ agecat2             : Factor w/ 4 levels "[18,30]","(30,45]",..: 3 1 2 1 2 2 2 1 1 2 ...
 $ jobcat              : Factor w/ 4 levels "cat1","cat2",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ age_decile          : Ord.factor w/ 10 levels "[18,24]"<"(24,27]"<..: 9 3 4 2 8 6 6 2 1 4 ...
  ..- attr(*, "breaks")= num  18 24 27 29 32 34 38 41 45 52 ...
 $ retired             : chr  "No" "No" "No" "No" ...
> 
> # Отсоединяем пакет data.table
> detach("package:data.table", unload=TRUE)
> 
> # 4.6. Переименование категорий переменных
> 
> # 4.6.1. Переименовываем категории переменных с помощью функции recode пакета dplyr
> 
> # Загружаем пакет dplyr
> library(dplyr)

Присоединяю пакет: ‘dplyr’

Следующие объекты скрыты от ‘package:memisc’:

    collect, query, recode, rename

Следующий объект скрыт от ‘package:MASS’:

    select

Следующий объект скрыт от ‘package:imputeMissings’:

    compute

Следующие объекты скрыты от ‘package:stats’:

    filter, lag

Следующие объекты скрыты от ‘package:base’:

    intersect, setdiff, setequal, union

> 
> # С помощью функции recode пакета dplyr переименовываем 
> # категории переменной marital_status
> data3$marital_status <- recode(data3$marital_status, 
+                                MAR="Married", DIV="Divorced", WID="Widowed",
+                                UNM="Unmarried", CIV="Civil union")
> head(data3, 10)
   sex      age marital_status job_position credit_sum credit_month tariff    score education                   reg income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt mean_income_by_reg
1    M 48.00000        Married          UMN   59998.00           10     28 0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ  30000            1                    1                0       51000 1.9999333              8355           37260.77
2    F 28.00000        Married          UMN   10889.00            6      2 0.248514       GRD                МОСКВА  43000            2                    0                0       51000 0.2532326              9261           62696.12
3    M 32.00000        Married          SPC   10728.00           12      2 0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ  23000            5                    0                0       63000 0.4664348              2282           31110.90
4    F 27.00000       Divorced          SPC   12009.09           12      2 0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ  17000            2                    0                0       63000 0.7064171              2293           31301.44
5    M 45.00000        Married          SPC   16908.89           10      2 0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ  25000            1                    0                0       63000 0.6763556              5155           33759.67
6    F 37.00000        Married          SPC   26788.00           10      2 0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ  30000            0                    0                0       63000 0.8929333              4617           32335.76
7    M 36.49731        Married          SPC   10317.00            6     25 0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ  28000            3                    0                0       63000 0.3684643              3695           34254.01
8    F 26.00000      Unmarried          SPC   47878.00           10      2 0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ  60000            3                    0                0       63000 0.7979667             12844           53064.73
9    M 23.00000        Married          SPC   37577.16           12     28 0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ  50000            3                    0                0       63000 0.7515432              8735           48550.90
10   F 32.00000      Unmarried          SPC   26268.00           10      2 0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ  39500            7                    0                0       63000 0.6650127              4617           32335.76
      conj log_income mean_age_tenure          agecat agecat2 jobcat age_decile retired
1  GRD+MAR  10.308953        29.00000 от 46 до 60 лет (45,60]   cat1    (45,52]      No
2  GRD+MAR  10.668955        17.00000 от 18 до 30 лет [18,30]   cat1    (27,29]      No
3  SCH+MAR  10.043249        22.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
4  GRD+DIV   9.740969        19.50000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
5  SCH+MAR  10.126631        27.50000 от 31 до 45 лет (30,45]   cat1    (41,45]      No
6  SCH+MAR  10.308953        23.50000 от 31 до 45 лет (30,45]   cat1    (34,38]      No
7  SCH+MAR  10.239960        21.24866 от 31 до 45 лет (30,45]   cat1    (34,38]      No
8  GRD+UNM  11.002100        18.00000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
9  SCH+MAR  10.819778        17.50000 от 18 до 30 лет [18,30]   cat1    [18,24]      No
10 GRD+UNM  10.584056        21.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
> 
> # Отсоединяем пакет dplyr
> detach("package:dplyr", unload=TRUE)
> 
> # 4.6.2. Переименовываем категории переменных с помощью функции revalue пакета plyr
> 
> # Загружаем пакет plyr
> library(plyr)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
You have loaded plyr after dplyr - this is likely to cause problems.
If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
library(plyr); library(dplyr)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
You have loaded plyr after dplyr - this is likely to cause problems.
If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
library(plyr); library(dplyr)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
You have loaded plyr after dplyr - this is likely to cause problems.
If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
library(plyr); library(dplyr)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Присоединяю пакет: ‘plyr’

Следующий объект скрыт от ‘package:memisc’:

    rename

> 
> # С помощью функции revalue пакета plyr переименовываем 
> # категории переменной sex
> data3$sex <- revalue(data3$sex, c("M"="male", "F"="female"))
> head(data3, 10)
      sex      age marital_status job_position credit_sum credit_month tariff    score education                   reg income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt
1    male 48.00000        Married          UMN   59998.00           10     28 0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ  30000            1                    1                0       51000 1.9999333              8355
2  female 28.00000        Married          UMN   10889.00            6      2 0.248514       GRD                МОСКВА  43000            2                    0                0       51000 0.2532326              9261
3    male 32.00000        Married          SPC   10728.00           12      2 0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ  23000            5                    0                0       63000 0.4664348              2282
4  female 27.00000       Divorced          SPC   12009.09           12      2 0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ  17000            2                    0                0       63000 0.7064171              2293
5    male 45.00000        Married          SPC   16908.89           10      2 0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ  25000            1                    0                0       63000 0.6763556              5155
6  female 37.00000        Married          SPC   26788.00           10      2 0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ  30000            0                    0                0       63000 0.8929333              4617
7    male 36.49731        Married          SPC   10317.00            6     25 0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ  28000            3                    0                0       63000 0.3684643              3695
8  female 26.00000      Unmarried          SPC   47878.00           10      2 0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ  60000            3                    0                0       63000 0.7979667             12844
9    male 23.00000        Married          SPC   37577.16           12     28 0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ  50000            3                    0                0       63000 0.7515432              8735
10 female 32.00000      Unmarried          SPC   26268.00           10      2 0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ  39500            7                    0                0       63000 0.6650127              4617
   mean_income_by_reg    conj log_income mean_age_tenure          agecat agecat2 jobcat age_decile retired
1            37260.77 GRD+MAR  10.308953        29.00000 от 46 до 60 лет (45,60]   cat1    (45,52]      No
2            62696.12 GRD+MAR  10.668955        17.00000 от 18 до 30 лет [18,30]   cat1    (27,29]      No
3            31110.90 SCH+MAR  10.043249        22.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
4            31301.44 GRD+DIV   9.740969        19.50000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
5            33759.67 SCH+MAR  10.126631        27.50000 от 31 до 45 лет (30,45]   cat1    (41,45]      No
6            32335.76 SCH+MAR  10.308953        23.50000 от 31 до 45 лет (30,45]   cat1    (34,38]      No
7            34254.01 SCH+MAR  10.239960        21.24866 от 31 до 45 лет (30,45]   cat1    (34,38]      No
8            53064.73 GRD+UNM  11.002100        18.00000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
9            48550.90 SCH+MAR  10.819778        17.50000 от 18 до 30 лет [18,30]   cat1    [18,24]      No
10           32335.76 GRD+UNM  10.584056        21.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
> 
> # 4.6.3. Переименовываем категории переменных с помощью функции mapvalues пакета plyr
> 
> # С помощью функции mapvalues пакета plyr переименовываем 
> # обратно категории переменной sex
> data3$sex <- mapvalues(data3$sex, from = c("male", "female"), to = c("M", "F"))
> head(data3, 10)
   sex      age marital_status job_position credit_sum credit_month tariff    score education                   reg income credit_count overdue_credit_count open_account_flg avrzarplata     ratio living_region_cnt mean_income_by_reg
1    M 48.00000        Married          UMN   59998.00           10     28 0.770249       GRD    КРАСНОДАРСКИЙ КРАЙ  30000            1                    1                0       51000 1.9999333              8355           37260.77
2    F 28.00000        Married          UMN   10889.00            6      2 0.248514       GRD                МОСКВА  43000            2                    0                0       51000 0.2532326              9261           62696.12
3    M 32.00000        Married          SPC   10728.00           12      2 0.459589       SCH   САРАТОВСКАЯ ОБЛАСТЬ  23000            5                    0                0       63000 0.4664348              2282           31110.90
4    F 27.00000       Divorced          SPC   12009.09           12      2 0.362536       GRD ВОЛГОГРАДСКАЯ ОБЛАСТЬ  17000            2                    0                0       63000 0.7064171              2293           31301.44
5    M 45.00000        Married          SPC   16908.89           10      2 0.421385       SCH   ЧЕЛЯБИНСКАЯ ОБЛАСТЬ  25000            1                    0                0       63000 0.6763556              5155           33759.67
6    F 37.00000        Married          SPC   26788.00           10      2 0.484203       SCH   СТАВРОПОЛЬСКИЙ КРАЙ  30000            0                    0                0       63000 0.8929333              4617           32335.76
7    M 36.49731        Married          SPC   10317.00            6     25 0.276012       SCH НИЖЕГОРОДСКАЯ ОБЛАСТЬ  28000            3                    0                0       63000 0.3684643              3695           34254.01
8    F 26.00000      Unmarried          SPC   47878.00           10      2 0.512525       GRD    МОСКОВСКАЯ ОБЛАСТЬ  60000            3                    0                0       63000 0.7979667             12844           53064.73
9    M 23.00000        Married          SPC   37577.16           12     28 0.642267       SCH     ТЮМЕНСКАЯ ОБЛАСТЬ  50000            3                    0                0       63000 0.7515432              8735           48550.90
10   F 32.00000      Unmarried          SPC   26268.00           10      2 0.465026       GRD   СТАВРОПОЛЬСКИЙ КРАЙ  39500            7                    0                0       63000 0.6650127              4617           32335.76
      conj log_income mean_age_tenure          agecat agecat2 jobcat age_decile retired
1  GRD+MAR  10.308953        29.00000 от 46 до 60 лет (45,60]   cat1    (45,52]      No
2  GRD+MAR  10.668955        17.00000 от 18 до 30 лет [18,30]   cat1    (27,29]      No
3  SCH+MAR  10.043249        22.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
4  GRD+DIV   9.740969        19.50000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
5  SCH+MAR  10.126631        27.50000 от 31 до 45 лет (30,45]   cat1    (41,45]      No
6  SCH+MAR  10.308953        23.50000 от 31 до 45 лет (30,45]   cat1    (34,38]      No
7  SCH+MAR  10.239960        21.24866 от 31 до 45 лет (30,45]   cat1    (34,38]      No
8  GRD+UNM  11.002100        18.00000 от 18 до 30 лет [18,30]   cat1    (24,27]      No
9  SCH+MAR  10.819778        17.50000 от 18 до 30 лет [18,30]   cat1    [18,24]      No
10 GRD+UNM  10.584056        21.00000 от 31 до 45 лет (30,45]   cat1    (29,32]      No
> 
> # Отсоединяем пакет plyr
> detach("package:plyr", unload=TRUE)
Предупреждение:
‘plyr’ пространство имен нельзя выгрузить:
  пространство имен ‘plyr’ импортировано из ‘ggplot2’, ‘scales’ и потому его нельзя выгрузить 
> 
> # 4.7. Группировка данных
> 
> # Вычислим средний месячный заработок для каждого значения 
> # переменной job_position
> aggregate(data3$income, list(data3$job_position), mean)
   Group.1        x
1      ATP 29717.37
2      BIS 59556.53
3      BIU 41508.73
4      DIR 67521.52
5      HSK 31250.00
6      INP 65553.94
7      INV 25680.00
8      NOR 36650.98
9      ONB 17000.00
10     PNA 22575.58
11     PNI 20367.69
12     PNS 39591.67
13     PNV 23335.30
14     SPC 38111.61
15     UMN 49431.94
16     WOI 35983.68
17     WRK 37029.19
18     WRP 38859.83
> 
> # Вычислим средний месячный заработок для каждого значения 
> # переменной job_position более удобным способом
> aggregate(income ~ job_position, data3, mean)
   job_position   income
1           ATP 29717.37
2           BIS 59556.53
3           BIU 41508.73
4           DIR 67521.52
5           HSK 31250.00
6           INP 65553.94
7           INV 25680.00
8           NOR 36650.98
9           ONB 17000.00
10          PNA 22575.58
11          PNI 20367.69
12          PNS 39591.67
13          PNV 23335.30
14          SPC 38111.61
15          UMN 49431.94
16          WOI 35983.68
17          WRK 37029.19
18          WRP 38859.83
> 
> # Вычислим средний месячный заработок для каждого значения 
> # переменной job_position с помощью функции tapply
> tapply(data3$income, data3$job_position, FUN=mean)
     ATP      BIS      BIU      DIR      HSK      INP      INV      NOR      ONB      PNA      PNI      PNS      PNV      SPC      UMN      WOI      WRK      WRP 
29717.37 59556.53 41508.73 67521.52 31250.00 65553.94 25680.00 36650.98 17000.00 22575.58 20367.69 39591.67 23335.30 38111.61 49431.94 35983.68 37029.19 38859.83 
> 
> # Загрузим dplyr и вычислим с помощью него средний месячный заработок 
> # для каждого значения переменной job_position, обратите внимание, мы
> # воспользуемся временным датафреймом, в котором переменная income записана
> # в исходном варианте как monthly_income
> library(dplyr)

Присоединяю пакет: ‘dplyr’

Следующие объекты скрыты от ‘package:memisc’:

    collect, query, recode, rename

Следующий объект скрыт от ‘package:MASS’:

    select

Следующий объект скрыт от ‘package:imputeMissings’:

    compute

Следующие объекты скрыты от ‘package:stats’:

    filter, lag

Следующие объекты скрыты от ‘package:base’:

    intersect, setdiff, setequal, union

> tmp %>% 
+   group_by(job_position) %>%
+   summarise(mean_income_by_job = mean(monthly_income))
# A tibble: 18 x 2
   job_position mean_income_by_job
         <fctr>              <dbl>
1           ATP           29717.37
2           BIS           59556.53
3           BIU           41508.73
4           DIR           67521.52
5           HSK           31250.00
6           INP           65553.94
7           INV           25680.00
8           NOR           36650.98
9           ONB           17000.00
10          PNA           22575.58
11          PNI           20367.69
12          PNS           39591.67
13          PNV           23335.30
14          SPC           38111.61
15          UMN           49431.94
16          WOI           35983.68
17          WRK           37029.19
18          WRP           38859.83
> 
> # Теперь вычислим с помощью dplyr средний месячный заработок 
> # для каждой комбинации значений переменных job_position и gender
> # и запишем полученные результаты в result
> result <- tmp %>% 
+   group_by(job_position, gender) %>%
+   summarise(mean_income_gender = mean(monthly_income))
> 
> # Для развернутого, а не усеченного вывода результатов 
> # воспользуемся data.frame
> data.frame(result)
   job_position gender mean_income_gender
1           ATP      F           25992.18
2           ATP      M           34256.88
3           BIS      F           54021.89
4           BIS      M           63688.92
5           BIU      F           35885.71
6           BIU      M           43671.43
7           DIR      F           59619.90
8           DIR      M           72598.90
9           HSK      F           31250.00
10          INP      F           52646.88
11          INP      M           74099.31
12          INV      F           31133.33
13          INV      M           17500.00
14          NOR      F           33433.30
15          NOR      M           39582.38
16          ONB      M           17000.00
17          PNA      F           21260.68
18          PNA      M           26125.79
19          PNI      F           21016.00
20          PNI      M           19962.50
21          PNS      F           34490.00
22          PNS      M           65100.00
23          PNV      F           28437.50
24          PNV      M           22059.75
25          SPC      F           33926.79
26          SPC      M           42746.45
27          UMN      F           43537.71
28          UMN      M           55011.95
29          WOI      F           32839.48
30          WOI      M           39713.76
31          WRK      F           31168.83
32          WRK      M           40454.81
33          WRP      F           35566.94
34          WRP      M           43616.22
> 
> # Отсоединяем пакет dplyr
> detach("package:dplyr", unload=TRUE)
> 
> # Вычислим медианный месячный заработок для каждого значения 
> # переменной job_position
> tapply(data3$income, data3$job_position, FUN=median)
  ATP   BIS   BIU   DIR   HSK   INP   INV   NOR   ONB   PNA   PNI   PNS   PNV   SPC   UMN   WOI   WRK   WRP 
25000 50000 35000 55000 27500 50000 25000 32000 17000 20000 17000 32000 21000 35000 43000 30000 32000 35000 
> 
> # 5. Работа с датами
> 
> # 5.1. Обработка дат в формате dd.mm.yyyy (например, 01.01.2017)
> 
> # Считываем CSV файл, содержащий даты, в датафрейм data4
> data4 <- read.csv2("C:/Trees/Dates.csv")
> 
> # Смотрим, как выглядят даты
> head(data4)
  date_start   date_end gender
1 03.04.2016 19.04.2016   male
2 17.04.2016 19.05.2016   male
3 12.01.2016 22.01.2016   male
4 23.08.2016 03.09.2016 female
5 13.10.2016 25.10.2016 female
6 17.01.2016 22.01.2016   male
> 
> # А теперь переменные, соответствующие датам, переводим в объекты типа 
> # POSIXct с помощью функции as.POSIXct
> data4$date_start <- as.POSIXct(data4$date_start, format="%d.%m.%Y")
> data4$date_end <- as.POSIXct(data4$date_end, format="%d.%m.%Y")
> 
> # Смотрим, как выглядят даты
> head(data4)
  date_start   date_end gender
1 2016-04-03 2016-04-19   male
2 2016-04-17 2016-05-19   male
3 2016-01-12 2016-01-22   male
4 2016-08-23 2016-09-03 female
5 2016-10-13 2016-10-25 female
6 2016-01-17 2016-01-22   male
> 
> # 5.2. Обработка дат в формате dd/mm/yyyy (например, 01/01/2017)
> 
> # Считываем CSV файл, содержащий даты, в датафрейм data5
> data5 <- read.csv2("C:/Trees/Dates2.csv")
> 
> # Смотрим, как выглядят даты
> head(data5)
  date_start   date_end gender
1 03/04/2016 19/04/2016   male
2 17/04/2016 19/05/2016   male
3 12/01/2016 22/01/2016   male
4 23/08/2016 03/09/2016 female
5 13/10/2016 25/10/2016 female
6 17/01/2016 22/01/2016   male
> 
> # А теперь переменные, соответствующие датам, переводим в объекты типа 
> # POSIXct с помощью функции as.POSIXct
> data5$date_start <- as.POSIXct(data5$date_start, format="%d/%m/%Y")
> data5$date_end <- as.POSIXct(data5$date_end, format="%d/%m/%Y")
> 
> # Смотрим, как выглядят даты
> head(data5)
  date_start   date_end gender
1 2016-04-03 2016-04-19   male
2 2016-04-17 2016-05-19   male
3 2016-01-12 2016-01-22   male
4 2016-08-23 2016-09-03 female
5 2016-10-13 2016-10-25 female
6 2016-01-17 2016-01-22   male
> 
> # 5.3. Обработка дат в формате ddMthyyyy (например, 01Jan2017)
> 
> # Считываем CSV файл, содержащий даты, в датафрейм data6
> data6 <- read.csv2("C:/Trees/Dates3.csv")
> 
> # Смотрим, как выглядят даты
> head(data6)
  date_start  date_end gender
1  03Apr2016 19Apr2016   male
2  17Apr2016 19May2016   male
3  12Jan2016 22Jan2016   male
4  23Aug2016 03Sep2016 female
5  13Oct2016 25Oct2016 female
6  17Jan2016 22Jan2016   male
> 
> # Загружаем пакет anytime
> library(anytime)
> 
> # А теперь переменные, соответствующие датам, переводим в объекты типа 
> # POSIXct с помощью функции anytime одноименного пакета
> data6$date_start <- anytime(data6$date_start)
> data6$date_end <- anytime(data6$date_end)
> 
> # Смотрим, как выглядят даты
> head(data6)
  date_start   date_end gender
1 2016-04-03 2016-04-19   male
2 2016-04-17 2016-05-19   male
3 2016-01-12 2016-01-22   male
4 2016-08-23 2016-09-03 female
5 2016-10-13 2016-10-25 female
6 2016-01-17 2016-01-22   male
> 
> # 5.4. Обработка дат в формате dd-Mth-yyyy (например, 01-Jan-2017)
> 
> # Считываем CSV файл, содержащий даты, в датафрейм data7
> data7 <- read.csv2("C:/Trees/MFOcredit.csv")
> 
> # Смотрим, как выглядят даты в первых 10 наблюдениях
> head(data7, 10)
   id  date_start    date_end  gender age         auto            housing                      marstatus regclient       jobtype                    region      credits     children delinq60plus
1   1 03-Jan-2013 12-Jan-2013 Мужской  44          Нет        Собственное Гражданский брак/женат/замужем       Нет   Официальное     Новосибирская область          Нет           Да          Нет
2   2 03-Jan-2013 17-Jan-2013 Мужской  21 Пропуск поля Живут с родителями                         Холост       Нет   Официальное    Кемеровская область юг           Да          Нет          Нет
3   3 03-Jan-2013 17-Jan-2013 Мужской  25 Пропуск поля        Собственное                         Холост        Да   Официальное Кемеровская область север Пропуск поля          Нет          Нет
4   4 03-Jan-2013 17-Jan-2013 Женский  47 Пропуск поля        Собственное Гражданский брак/женат/замужем        Да   Официальное Кемеровская область север          Нет          Нет          Нет
5   5 03-Jan-2013 17-Jan-2013 Мужской  22          Нет         Арендуемое Гражданский брак/женат/замужем       Нет   Официальное Кемеровская область север           Да           Да          Нет
6   6 03-Jan-2013 17-Jan-2013 Мужской  40          Нет        Собственное                       Разведен       Нет Неофициальное Кемеровская область север          Нет          Нет          Нет
7   7 03-Jan-2013 17-Jan-2013 Женский  63 Пропуск поля        Собственное                   Пропуск поля        Да  Пропуск поля Кемеровская область север           Да Пропуск поля          Нет
8   8 03-Jan-2013 17-Jan-2013 Женский  29          Нет        Собственное                       Разведен        Да  Пропуск поля Кемеровская область север          Нет           Да          Нет
9   9 03-Jan-2013 17-Jan-2013 Женский  27 Пропуск поля       Пропуск поля                   Пропуск поля        Да  Пропуск поля    Кемеровская область юг           Да          Нет          Нет
10 10 03-Jan-2013 17-Jan-2013 Мужской  20 Пропуск поля      Муниципальное                         Холост       Нет  Пропуск поля    Кемеровская область юг          Нет          Нет          Нет
> 
> # А теперь переменные, соответствующие датам, переводим в объекты типа 
> # POSIXct с помощью функции anytime одноименного пакета
> data7$date_start <- anytime(data7$date_start)
> data7$date_end <- anytime(data7$date_end)
> 
> # Смотрим, как выглядят даты в первых 10 наблюдениях
> head(data7, 10)
   id          date_start            date_end  gender age         auto            housing                      marstatus regclient       jobtype                    region      credits     children delinq60plus
1   1 2013-01-03 01:00:00 2013-01-12 01:00:00 Мужской  44          Нет        Собственное Гражданский брак/женат/замужем       Нет   Официальное     Новосибирская область          Нет           Да          Нет
2   2 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  21 Пропуск поля Живут с родителями                         Холост       Нет   Официальное    Кемеровская область юг           Да          Нет          Нет
3   3 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  25 Пропуск поля        Собственное                         Холост        Да   Официальное Кемеровская область север Пропуск поля          Нет          Нет
4   4 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  47 Пропуск поля        Собственное Гражданский брак/женат/замужем        Да   Официальное Кемеровская область север          Нет          Нет          Нет
5   5 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  22          Нет         Арендуемое Гражданский брак/женат/замужем       Нет   Официальное Кемеровская область север           Да           Да          Нет
6   6 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  40          Нет        Собственное                       Разведен       Нет Неофициальное Кемеровская область север          Нет          Нет          Нет
7   7 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  63 Пропуск поля        Собственное                   Пропуск поля        Да  Пропуск поля Кемеровская область север           Да Пропуск поля          Нет
8   8 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  29          Нет        Собственное                       Разведен        Да  Пропуск поля Кемеровская область север          Нет           Да          Нет
9   9 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  27 Пропуск поля       Пропуск поля                   Пропуск поля        Да  Пропуск поля    Кемеровская область юг           Да          Нет          Нет
10 10 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  20 Пропуск поля      Муниципальное                         Холост       Нет  Пропуск поля    Кемеровская область юг          Нет          Нет          Нет
> 
> # 5.5. Вычисление разности между датами
> 
> # Вычисляем разность между датами в днях для датафрейма data7
> data7$diff <- data7$date_end-data7$date_start
> 
> # Смотрим результат в первых 10 наблюдениях
> head(data7, 10)
   id          date_start            date_end  gender age         auto            housing                      marstatus regclient       jobtype                    region      credits     children delinq60plus    diff
1   1 2013-01-03 01:00:00 2013-01-12 01:00:00 Мужской  44          Нет        Собственное Гражданский брак/женат/замужем       Нет   Официальное     Новосибирская область          Нет           Да          Нет  9 days
2   2 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  21 Пропуск поля Живут с родителями                         Холост       Нет   Официальное    Кемеровская область юг           Да          Нет          Нет 14 days
3   3 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  25 Пропуск поля        Собственное                         Холост        Да   Официальное Кемеровская область север Пропуск поля          Нет          Нет 14 days
4   4 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  47 Пропуск поля        Собственное Гражданский брак/женат/замужем        Да   Официальное Кемеровская область север          Нет          Нет          Нет 14 days
5   5 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  22          Нет         Арендуемое Гражданский брак/женат/замужем       Нет   Официальное Кемеровская область север           Да           Да          Нет 14 days
6   6 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  40          Нет        Собственное                       Разведен       Нет Неофициальное Кемеровская область север          Нет          Нет          Нет 14 days
7   7 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  63 Пропуск поля        Собственное                   Пропуск поля        Да  Пропуск поля Кемеровская область север           Да Пропуск поля          Нет 14 days
8   8 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  29          Нет        Собственное                       Разведен        Да  Пропуск поля Кемеровская область север          Нет           Да          Нет 14 days
9   9 2013-01-03 01:00:00 2013-01-17 01:00:00 Женский  27 Пропуск поля       Пропуск поля                   Пропуск поля        Да  Пропуск поля    Кемеровская область юг           Да          Нет          Нет 14 days
10 10 2013-01-03 01:00:00 2013-01-17 01:00:00 Мужской  20 Пропуск поля      Муниципальное                         Холост       Нет  Пропуск поля    Кемеровская область юг          Нет          Нет          Нет 14 days
> 
> # 5.6. Извлечение из дат годов, кварталов, месяцев, дней, дней недели
> 
> # Смотрим, как выглядят даты
> str(data4)
'data.frame':   10 obs. of  3 variables:
 $ date_start: POSIXct, format: "2016-04-03" "2016-04-17" "2016-01-12" "2016-08-23" ...
 $ date_end  : POSIXct, format: "2016-04-19" "2016-05-19" "2016-01-22" "2016-09-03" ...
 $ gender    : Factor w/ 2 levels "female","male": 2 2 2 1 1 2 2 1 2 1
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # года и записываем в переменную year
> data4$year <- format(data4$date_start, "%Y")
> 
> # С помощью функции quarters извлекаем из переменной дат date_start, 
> # относящейся к типу POSIXct, кварталы и записываем в переменную quarter
> data4$quarter <- quarters(data4$date_start)
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # порядковые номера месяцев и записываем в переменную num_of_month
> data4$num_of_month <- format(data4$date_start, "%m")
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # сокращенные названия месяцев и записываем в переменную shortname_of_month
> data4$shortname_of_month <- format(data4$date_start, "%b")
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # полные названия месяцев и записываем в переменную fullname_of_month
> data4$fullname_of_month <- format(data4$date_start, "%B")
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # порядковые номера дней и записываем в переменную day
> data4$day <- format(data4$date_start, "%d")
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # сокращенные названия дней недели и записываем в переменную name_of_weekday
> data4$name_of_weekday <- format(data4$date_start, "%a")
> 
> # Извлекаем из переменной дат date_start, относящейся к типу POSIXct, 
> # порядковые номера дней недели (0-6, 0 – воскресенье) 
> # и записываем в переменную num_of_weekday
> data4$num_of_weekday <- format(data4$date_start, "%w")
> 
> # Смотрим первые 10 наблюдений
> head(data4)
  date_start   date_end gender year quarter num_of_month shortname_of_month fullname_of_month day name_of_weekday num_of_weekday
1 2016-04-03 2016-04-19   male 2016      Q2           04                апр            Апрель  03              Вс              0
2 2016-04-17 2016-05-19   male 2016      Q2           04                апр            Апрель  17              Вс              0
3 2016-01-12 2016-01-22   male 2016      Q1           01                янв            Январь  12              Вт              2
4 2016-08-23 2016-09-03 female 2016      Q3           08                авг            Август  23              Вт              2
5 2016-10-13 2016-10-25 female 2016      Q4           10                окт           Октябрь  13              Чт              4
6 2016-01-17 2016-01-22   male 2016      Q1           01                янв            Январь  17              Вс              0
> 
> # 6. Работа со строками
> 
> # 6.1. Изменение регистра строк
> 
> # Смотрим, как выглядят первые 10 наблюдений переменной 
> # job_position (имеет индекс 4) в датафрейме data3
> head(data3[4], 10)
   job_position
1           UMN
2           UMN
3           SPC
4           SPC
5           SPC
6           SPC
7           SPC
8           SPC
9           SPC
10          SPC
> 
> # Переводим строки (значения переменной job_position) в нижний регистр 
> data3$job_position <- tolower(data3$job_position)
> 
> # Смотрим, как выглядят первые 10 наблюдений переменной 
> # job_position (имеет индекс 4) в датафрейме data3
> head(data3[4], 10)
   job_position
1           umn
2           umn
3           spc
4           spc
5           spc
6           spc
7           spc
8           spc
9           spc
10          spc
> 
> # Переводим строки (значения переменной job_position) обратно в верхний регистр 
> data3$job_position <- toupper(data3$job_position)
> 
> # Смотрим, как выглядят первые 10 наблюдений переменной 
> # job_position (имеет индекс 4) в датафрейме data3
> head(data3[4], 10)
   job_position
1           UMN
2           UMN
3           SPC
4           SPC
5           SPC
6           SPC
7           SPC
8           SPC
9           SPC
10          SPC
> 
> # 6.2. Определение пола клиента по отчеству
> 
> # Считываем CSV файл с ФИО клиентов, по которым нужно определить пол
> data8 <- read.csv2("C:/Trees/Gender based on middle name.csv")
> 
> # Создаем переменную Пол, которая будет иметь значение True, если строковое 
> # значение переменной Клиент содержит паттерн "вна" (Викторовна, Дмитриевна) 
> # и False в противном случае
> data8$Пол <- grepl("вна", data8$Клиент)
> 
> # Переименуем категории переменной Пол
> data8$Пол[data8$Пол=="FALSE"] <-"Мужской"
> data8$Пол[data8$Пол=="TRUE"] <-"Женский"
> 
> # Смотрим результат
> head(data8, 10)
                             Клиент Возраст             Регион       Статус     Пол
1  _Колесников Вячеслав Анатольевич      33      Красноярск- 2    Вернул(а) Мужской
2     _Саймурзанов Михаил Борисович      22      Красноярск- 2    Вернул(а) Мужской
3         Абаимов Максим Дмитриевич      43          Москва- 4    Вернул(а) Мужской
4           Абакумова Юлия Ивановна      22          Москва- 4    Вернул(а) Женский
5        Абанова Елена Владимировна      54 Санкт-Петербург- 6    Вернул(а) Женский
6        Абдрахимова Юлия Рафиковна      23 Санкт-Петербург- 6    Вернул(а) Женский
7     Абдугалиева Айгуль Максутовна      27          Москва- 4 Не вернул(а) Женский
8       Абдуллаев Ильгар Эльдарович      44    Екатеринбург- 8 Не вернул(а) Мужской
9       Абдуллин Евгений Эдуардович      22    Екатеринбург- 8 Не вернул(а) Мужской
10  Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский
> 
> # А теперь напишем собственную функцию, которая будет извлекать n
> # последних символов из строк  
> substrRight <- function(x, n){
+   substr(x, nchar(x)-n+1, nchar(x))
+ }
> 
> # Преобразуем переменную Клиент в тип char (значения – символьные метки) 
> # с помощью функции as.character
> data8$Клиент <- as.character(data8$Клиент)
> 
> # И теперь с помощью этой функции извлечем в каждом строковом значении
> # переменной Клиент последние 3 символа и запишем в новую переменную Пол2
> data8$Пол2 <- substrRight(data8$Клиент, 3)
> 
> # Переименуем категории переменной Пол
> data8$Пол2[data8$Пол2=="вич"] <-"Мужской"
> data8$Пол2[data8$Пол2=="вна"] <-"Женский"
> 
> # Смотрим результат
> head(data8, 10)
                             Клиент Возраст             Регион       Статус     Пол    Пол2
1  _Колесников Вячеслав Анатольевич      33      Красноярск- 2    Вернул(а) Мужской Мужской
2     _Саймурзанов Михаил Борисович      22      Красноярск- 2    Вернул(а) Мужской Мужской
3         Абаимов Максим Дмитриевич      43          Москва- 4    Вернул(а) Мужской Мужской
4           Абакумова Юлия Ивановна      22          Москва- 4    Вернул(а) Женский Женский
5        Абанова Елена Владимировна      54 Санкт-Петербург- 6    Вернул(а) Женский Женский
6        Абдрахимова Юлия Рафиковна      23 Санкт-Петербург- 6    Вернул(а) Женский Женский
7     Абдугалиева Айгуль Максутовна      27          Москва- 4 Не вернул(а) Женский Женский
8       Абдуллаев Ильгар Эльдарович      44    Екатеринбург- 8 Не вернул(а) Мужской Мужской
9       Абдуллин Евгений Эдуардович      22    Екатеринбург- 8 Не вернул(а) Мужской Мужской
10  Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский
> 
> # 6.3. Удаление лишних символов из строк
> 
> # С помощью функции gsub удалим ненужный символ подчеркивания, с которого 
> # начинаются несколько значений переменной Клиент, первый аргумент функции – символ,
> # который нужно удалить, второй аргумент – символ, на который нужно
> # заменить, третий аргумент – строка или переменная, содержащая строковые значения
> data8$Клиент <- gsub('_',  "", data8$Клиент)
> 
> # Смотрим результат
> head(data8, 20)
                              Клиент Возраст             Регион       Статус     Пол    Пол2
1    Колесников Вячеслав Анатольевич      33      Красноярск- 2    Вернул(а) Мужской Мужской
2       Саймурзанов Михаил Борисович      22      Красноярск- 2    Вернул(а) Мужской Мужской
3          Абаимов Максим Дмитриевич      43          Москва- 4    Вернул(а) Мужской Мужской
4            Абакумова Юлия Ивановна      22          Москва- 4    Вернул(а) Женский Женский
5         Абанова Елена Владимировна      54 Санкт-Петербург- 6    Вернул(а) Женский Женский
6         Абдрахимова Юлия Рафиковна      23 Санкт-Петербург- 6    Вернул(а) Женский Женский
7      Абдугалиева Айгуль Максутовна      27          Москва- 4 Не вернул(а) Женский Женский
8        Абдуллаев Ильгар Эльдарович      44    Екатеринбург- 8 Не вернул(а) Мужской Мужской
9        Абдуллин Евгений Эдуардович      22    Екатеринбург- 8 Не вернул(а) Мужской Мужской
10   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский
11   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский
12   Абдурасулова Наталья Таджиловна     55&    Екатеринбург- 8    Вернул(а) Женский Женский
13       Абдурахимова Алена Алимовна      57    Екатеринбург- 8    Вернул(а) Женский Женский
14 Абельдина Гульпархия Галимжановна      41    Екатеринбург- 8    Вернул(а) Женский Женский
15              Аблец Юлия Сергеевна      33    Екатеринбург- 8    Вернул(а) Женский Женский
16         Аболмасова Ирина Олеговна      38    Екатеринбург- 8    Вернул(а) Женский Женский
17        Абраев Нурлан Мусайбекович      49    Екатеринбург- 8    Вернул(а) Мужской Мужской
18  Абраменко Екатерина Владимировна      56          Москва- 4    Вернул(а) Женский Женский
19      Абрамов Дмитрий Владимирович      51          Москва- 4    Вернул(а) Мужской Мужской
20         Абрамов Никита Валерьевич   45лет    Екатеринбург- 8    Вернул(а) Мужской Мужской
> 
> # Теперь с помощью gsub удалим ненужные символы, которыми 
> # заканчиваются некоторые значения переменной Возраст, удаляем
> # символ &, а с помощью класса символов POSIX [:alpha:] все символы алфавита,
> # результаты запишем в переменную Возраст2
> 
> data8$Возраст2 <- gsub("[&[:alpha:]]", "", data8$Возраст)
> 
> # Смотрим результат
> head(data8, 20)
                              Клиент Возраст             Регион       Статус     Пол    Пол2 Возраст2
1    Колесников Вячеслав Анатольевич      33      Красноярск- 2    Вернул(а) Мужской Мужской       33
2       Саймурзанов Михаил Борисович      22      Красноярск- 2    Вернул(а) Мужской Мужской       22
3          Абаимов Максим Дмитриевич      43          Москва- 4    Вернул(а) Мужской Мужской       43
4            Абакумова Юлия Ивановна      22          Москва- 4    Вернул(а) Женский Женский       22
5         Абанова Елена Владимировна      54 Санкт-Петербург- 6    Вернул(а) Женский Женский       54
6         Абдрахимова Юлия Рафиковна      23 Санкт-Петербург- 6    Вернул(а) Женский Женский       23
7      Абдугалиева Айгуль Максутовна      27          Москва- 4 Не вернул(а) Женский Женский       27
8        Абдуллаев Ильгар Эльдарович      44    Екатеринбург- 8 Не вернул(а) Мужской Мужской       44
9        Абдуллин Евгений Эдуардович      22    Екатеринбург- 8 Не вернул(а) Мужской Мужской       22
10   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский       63
11   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский       63
12   Абдурасулова Наталья Таджиловна     55&    Екатеринбург- 8    Вернул(а) Женский Женский       55
13       Абдурахимова Алена Алимовна      57    Екатеринбург- 8    Вернул(а) Женский Женский       57
14 Абельдина Гульпархия Галимжановна      41    Екатеринбург- 8    Вернул(а) Женский Женский       41
15              Аблец Юлия Сергеевна      33    Екатеринбург- 8    Вернул(а) Женский Женский       33
16         Аболмасова Ирина Олеговна      38    Екатеринбург- 8    Вернул(а) Женский Женский       38
17        Абраев Нурлан Мусайбекович      49    Екатеринбург- 8    Вернул(а) Мужской Мужской       49
18  Абраменко Екатерина Владимировна      56          Москва- 4    Вернул(а) Женский Женский       56
19      Абрамов Дмитрий Владимирович      51          Москва- 4    Вернул(а) Мужской Мужской       51
20         Абрамов Никита Валерьевич   45лет    Екатеринбург- 8    Вернул(а) Мужской Мужской       45
> 
> # А теперь выполним аналогичную операцию с помощью стандартной функции substr,
> # она заменяет строку подстрокой, первый аргумент задает строку, 
> # второй аргумент – позицию начального символа, третий аргумент – 
> # позицию последнего символа, например, в данном случае строка «28лет» 
> # будет замена на подстроку «28», «2» – начальный символ, занимающий позицию 1,
> # «8» - последний символ, занимающий позицию 2 строки «28 лет», 
> # результат запишем в переменную Возраст3 
> data8$Возраст3 <- substr(data8$Возраст, 1, 2)
> 
> # Смотрим результат
> head(data8, 20)
                              Клиент Возраст             Регион       Статус     Пол    Пол2 Возраст2 Возраст3
1    Колесников Вячеслав Анатольевич      33      Красноярск- 2    Вернул(а) Мужской Мужской       33       33
2       Саймурзанов Михаил Борисович      22      Красноярск- 2    Вернул(а) Мужской Мужской       22       22
3          Абаимов Максим Дмитриевич      43          Москва- 4    Вернул(а) Мужской Мужской       43       43
4            Абакумова Юлия Ивановна      22          Москва- 4    Вернул(а) Женский Женский       22       22
5         Абанова Елена Владимировна      54 Санкт-Петербург- 6    Вернул(а) Женский Женский       54       54
6         Абдрахимова Юлия Рафиковна      23 Санкт-Петербург- 6    Вернул(а) Женский Женский       23       23
7      Абдугалиева Айгуль Максутовна      27          Москва- 4 Не вернул(а) Женский Женский       27       27
8        Абдуллаев Ильгар Эльдарович      44    Екатеринбург- 8 Не вернул(а) Мужской Мужской       44       44
9        Абдуллин Евгений Эдуардович      22    Екатеринбург- 8 Не вернул(а) Мужской Мужской       22       22
10   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский       63       63
11   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский       63       63
12   Абдурасулова Наталья Таджиловна     55&    Екатеринбург- 8    Вернул(а) Женский Женский       55       55
13       Абдурахимова Алена Алимовна      57    Екатеринбург- 8    Вернул(а) Женский Женский       57       57
14 Абельдина Гульпархия Галимжановна      41    Екатеринбург- 8    Вернул(а) Женский Женский       41       41
15              Аблец Юлия Сергеевна      33    Екатеринбург- 8    Вернул(а) Женский Женский       33       33
16         Аболмасова Ирина Олеговна      38    Екатеринбург- 8    Вернул(а) Женский Женский       38       38
17        Абраев Нурлан Мусайбекович      49    Екатеринбург- 8    Вернул(а) Мужской Мужской       49       49
18  Абраменко Екатерина Владимировна      56          Москва- 4    Вернул(а) Женский Женский       56       56
19      Абрамов Дмитрий Владимирович      51          Москва- 4    Вернул(а) Мужской Мужской       51       51
20         Абрамов Никита Валерьевич   45лет    Екатеринбург- 8    Вернул(а) Мужской Мужской       45       45
> 
> # Теперь выполним ту же самую замену строки подстрокой с помощью 
> # стандартной функции substring, результат запишем в переменную Возраст4
> data8$Возраст4 <- substring(data8$Возраст, 1, 2)
> 
> # Смотрим результат
> head(data8, 20)
                              Клиент Возраст             Регион       Статус     Пол    Пол2 Возраст2 Возраст3 Возраст4
1    Колесников Вячеслав Анатольевич      33      Красноярск- 2    Вернул(а) Мужской Мужской       33       33       33
2       Саймурзанов Михаил Борисович      22      Красноярск- 2    Вернул(а) Мужской Мужской       22       22       22
3          Абаимов Максим Дмитриевич      43          Москва- 4    Вернул(а) Мужской Мужской       43       43       43
4            Абакумова Юлия Ивановна      22          Москва- 4    Вернул(а) Женский Женский       22       22       22
5         Абанова Елена Владимировна      54 Санкт-Петербург- 6    Вернул(а) Женский Женский       54       54       54
6         Абдрахимова Юлия Рафиковна      23 Санкт-Петербург- 6    Вернул(а) Женский Женский       23       23       23
7      Абдугалиева Айгуль Максутовна      27          Москва- 4 Не вернул(а) Женский Женский       27       27       27
8        Абдуллаев Ильгар Эльдарович      44    Екатеринбург- 8 Не вернул(а) Мужской Мужской       44       44       44
9        Абдуллин Евгений Эдуардович      22    Екатеринбург- 8 Не вернул(а) Мужской Мужской       22       22       22
10   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский       63       63       63
11   Абдуллина Екатерина Анатольевна      63    Екатеринбург- 8    Вернул(а) Женский Женский       63       63       63
12   Абдурасулова Наталья Таджиловна     55&    Екатеринбург- 8    Вернул(а) Женский Женский       55       55       55
13       Абдурахимова Алена Алимовна      57    Екатеринбург- 8    Вернул(а) Женский Женский       57       57       57
14 Абельдина Гульпархия Галимжановна      41    Екатеринбург- 8    Вернул(а) Женский Женский       41       41       41
15              Аблец Юлия Сергеевна      33    Екатеринбург- 8    Вернул(а) Женский Женский       33       33       33
16         Аболмасова Ирина Олеговна      38    Екатеринбург- 8    Вернул(а) Женский Женский       38       38       38
17        Абраев Нурлан Мусайбекович      49    Екатеринбург- 8    Вернул(а) Мужской Мужской       49       49       49
18  Абраменко Екатерина Владимировна      56          Москва- 4    Вернул(а) Женский Женский       56       56       56
19      Абрамов Дмитрий Владимирович      51          Москва- 4    Вернул(а) Мужской Мужской       51       51       51
20         Абрамов Никита Валерьевич   45лет    Екатеринбург- 8    Вернул(а) Мужской Мужской       45       45       45
> 
> # Преобразуем переменную Регион в тип char (значения – символьные метки) 
> # с помощью функции as.character
> data8$Регион <- as.character(data8$Регион)
> 
> # Удаляем последние 3 символа в каждом значении
> # переменной Регион
> data8$Регион <- substr(data8$Регион,1,nchar(data8$Регион)-3)
> 
> # Смотрим результат
> head(data8, 20)
                              Клиент Возраст          Регион       Статус     Пол    Пол2 Возраст2 Возраст3 Возраст4
1    Колесников Вячеслав Анатольевич      33      Красноярск    Вернул(а) Мужской Мужской       33       33       33
2       Саймурзанов Михаил Борисович      22      Красноярск    Вернул(а) Мужской Мужской       22       22       22
3          Абаимов Максим Дмитриевич      43          Москва    Вернул(а) Мужской Мужской       43       43       43
4            Абакумова Юлия Ивановна      22          Москва    Вернул(а) Женский Женский       22       22       22
5         Абанова Елена Владимировна      54 Санкт-Петербург    Вернул(а) Женский Женский       54       54       54
6         Абдрахимова Юлия Рафиковна      23 Санкт-Петербург    Вернул(а) Женский Женский       23       23       23
7      Абдугалиева Айгуль Максутовна      27          Москва Не вернул(а) Женский Женский       27       27       27
8        Абдуллаев Ильгар Эльдарович      44    Екатеринбург Не вернул(а) Мужской Мужской       44       44       44
9        Абдуллин Евгений Эдуардович      22    Екатеринбург Не вернул(а) Мужской Мужской       22       22       22
10   Абдуллина Екатерина Анатольевна      63    Екатеринбург    Вернул(а) Женский Женский       63       63       63
11   Абдуллина Екатерина Анатольевна      63    Екатеринбург    Вернул(а) Женский Женский       63       63       63
12   Абдурасулова Наталья Таджиловна     55&    Екатеринбург    Вернул(а) Женский Женский       55       55       55
13       Абдурахимова Алена Алимовна      57    Екатеринбург    Вернул(а) Женский Женский       57       57       57
14 Абельдина Гульпархия Галимжановна      41    Екатеринбург    Вернул(а) Женский Женский       41       41       41
15              Аблец Юлия Сергеевна      33    Екатеринбург    Вернул(а) Женский Женский       33       33       33
16         Аболмасова Ирина Олеговна      38    Екатеринбург    Вернул(а) Женский Женский       38       38       38
17        Абраев Нурлан Мусайбекович      49    Екатеринбург    Вернул(а) Мужской Мужской       49       49       49
18  Абраменко Екатерина Владимировна      56          Москва    Вернул(а) Женский Женский       56       56       56
19      Абрамов Дмитрий Владимирович      51          Москва    Вернул(а) Мужской Мужской       51       51       51
20         Абрамов Никита Валерьевич   45лет    Екатеринбург    Вернул(а) Мужской Мужской       45       45       45
> 
> # 6.4. Удаление повторяющихся строк
> 
> # Удаляем дублирующиеся строки
> data9 <- data8[!duplicated(data8), ]
> data9
                              Клиент Возраст          Регион       Статус     Пол    Пол2 Возраст2 Возраст3 Возраст4
1    Колесников Вячеслав Анатольевич      33      Красноярск    Вернул(а) Мужской Мужской       33       33       33
2       Саймурзанов Михаил Борисович      22      Красноярск    Вернул(а) Мужской Мужской       22       22       22
3          Абаимов Максим Дмитриевич      43          Москва    Вернул(а) Мужской Мужской       43       43       43
4            Абакумова Юлия Ивановна      22          Москва    Вернул(а) Женский Женский       22       22       22
5         Абанова Елена Владимировна      54 Санкт-Петербург    Вернул(а) Женский Женский       54       54       54
6         Абдрахимова Юлия Рафиковна      23 Санкт-Петербург    Вернул(а) Женский Женский       23       23       23
7      Абдугалиева Айгуль Максутовна      27          Москва Не вернул(а) Женский Женский       27       27       27
8        Абдуллаев Ильгар Эльдарович      44    Екатеринбург Не вернул(а) Мужской Мужской       44       44       44
9        Абдуллин Евгений Эдуардович      22    Екатеринбург Не вернул(а) Мужской Мужской       22       22       22
10   Абдуллина Екатерина Анатольевна      63    Екатеринбург    Вернул(а) Женский Женский       63       63       63
12   Абдурасулова Наталья Таджиловна     55&    Екатеринбург    Вернул(а) Женский Женский       55       55       55
13       Абдурахимова Алена Алимовна      57    Екатеринбург    Вернул(а) Женский Женский       57       57       57
14 Абельдина Гульпархия Галимжановна      41    Екатеринбург    Вернул(а) Женский Женский       41       41       41
15              Аблец Юлия Сергеевна      33    Екатеринбург    Вернул(а) Женский Женский       33       33       33
16         Аболмасова Ирина Олеговна      38    Екатеринбург    Вернул(а) Женский Женский       38       38       38
17        Абраев Нурлан Мусайбекович      49    Екатеринбург    Вернул(а) Мужской Мужской       49       49       49
18  Абраменко Екатерина Владимировна      56          Москва    Вернул(а) Женский Женский       56       56       56
19      Абрамов Дмитрий Владимирович      51          Москва    Вернул(а) Мужской Мужской       51       51       51
20         Абрамов Никита Валерьевич   45лет    Екатеринбург    Вернул(а) Мужской Мужской       45       45       45
21          Абрамов Сергей Сергеевич      32          Москва    Вернул(а) Мужской Мужской       32       32       32
22          Абрамов Петр Анатольевич      76          Москва    Вернул(а) Мужской Мужской       76       76       76
23           Абрамова Вера Сергеевна      23          Москва    Вернул(а) Женский Женский       23       23       23
25           Абрамова Яна Валерьевна      46          Москва    Вернул(а) Женский Женский       46       46       46
26       Абрамюк Павел Александрович      73          Москва    Вернул(а) Мужской Мужской       73       73       73
27          Аброскина Анна Сергеевна      23          Москва    Вернул(а) Женский Женский       23       23       23
28         Аванесян Диана Бержиковна      45          Москва    Вернул(а) Женский Женский       45       45       45
29         Аванский Юрий Геннадьевич     65&          Москва    Вернул(а) Мужской Мужской       65       65       65
30              Авдеева Анна Юрьевна      65 Санкт-Петербург    Вернул(а) Женский Женский       65       65       65
31      Авдонина Ирина Александровна      55 Санкт-Петербург Не вернул(а) Женский Женский       55       55       55
32       Аверина Дарья Александровна      45    Екатеринбург    Вернул(а) Женский Женский       45       45       45
35  Аверкиева Светлана Александровна      31      Красноярск    Вернул(а) Женский Женский       31       31       31
36       Аверьянов Рустам Михайлович      37      Красноярск    Вернул(а) Мужской Мужской       37       37       37
37            Аветян Артур Левонович      49      Красноярск    Вернул(а) Мужской Мужской       49       49       49
38             Аветян Сильва Айковна      54    Екатеринбург    Вернул(а) Женский Женский       54       54       54
39        Авотина Татьяна Васильевна      36    Екатеринбург    Вернул(а) Женский Женский       36       36       36
> 
> # Еще можно удалить дублирующиеся строки с помощью функции unique
> data10 <- unique(data8)
> 
> # 6.5. Извлечение нужных символов из строк
> 
> # Часто данные могут быть некорректно записаны и необходимо извлечь
> # нужные нам подстроки
> data11 <- read.csv2("C:/Trees/Raw_text.csv")
> 
> # Смотрим данные
> data11
                       raw
1  KDR 1 2014-12-23 3242.0
2  MSK 1 2010-02-23 3453.7
3 KRSK 0 2014-06-20 2123.0
4  SPB 0 2014-03-14 1123.6
5  EKB 1 2013-01-15 2134.0
> 
> # Преобразуем данные в тип char (значения – символьные метки) 
> # с помощью функции as.character
> data11$raw <- as.character(data11$raw)
> 
> # Загружаем пакет stringr
> library(stringr)
> 
> # Извлекаем даты из столбца raw с помощью функции str_extract 
> # пакета stringr и создаем переменную date
> datepattern="[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]"
> data11$date <- str_extract(data11$raw, pattern=datepattern)
> 
> # Смотрим данные
> data11
                       raw       date
1  KDR 1 2014-12-23 3242.0 2014-12-23
2  MSK 1 2010-02-23 3453.7 2010-02-23
3 KRSK 0 2014-06-20 2123.0 2014-06-20
4  SPB 0 2014-03-14 1123.6 2014-03-14
5  EKB 1 2013-01-15 2134.0 2013-01-15
> 
> # Еще можно так
> datepattern2 <- "\\d\\d\\d\\d\\-\\d\\d-\\d\\d"
> data11$date2 <- str_extract(data11$raw, pattern=datepattern2)
> 
> # Смотрим данные
> data11
                       raw       date      date2
1  KDR 1 2014-12-23 3242.0 2014-12-23 2014-12-23
2  MSK 1 2010-02-23 3453.7 2010-02-23 2010-02-23
3 KRSK 0 2014-06-20 2123.0 2014-06-20 2014-06-20
4  SPB 0 2014-03-14 1123.6 2014-03-14 2014-03-14
5  EKB 1 2013-01-15 2134.0 2013-01-15 2013-01-15
> 
> # Извлекаем одиночные цифры из столбца raw с помощью функции str_extract 
> # пакета stringr и создаем переменную gender 
> genderpattern="[0-9]"
> data11$gender <- str_extract(data11$raw, pattern=genderpattern)
> 
> # Смотрим данные
> data11
                       raw       date      date2 gender
1  KDR 1 2014-12-23 3242.0 2014-12-23 2014-12-23      1
2  MSK 1 2010-02-23 3453.7 2010-02-23 2010-02-23      1
3 KRSK 0 2014-06-20 2123.0 2014-06-20 2014-06-20      0
4  SPB 0 2014-03-14 1123.6 2014-03-14 2014-03-14      0
5  EKB 1 2013-01-15 2134.0 2013-01-15 2013-01-15      1
> 
> # Извлекаем ####.# из столбца raw с помощью функции str_extract 
> # пакета stringr и создаем переменную score 
> scorepattern <- "\\d\\d\\d\\d\\.\\d"
> data11$score <- str_extract(data11$raw, pattern=scorepattern)
> 
> # Смотрим данные
> data11
                       raw       date      date2 gender  score
1  KDR 1 2014-12-23 3242.0 2014-12-23 2014-12-23      1 3242.0
2  MSK 1 2010-02-23 3453.7 2010-02-23 2010-02-23      1 3453.7
3 KRSK 0 2014-06-20 2123.0 2014-06-20 2014-06-20      0 2123.0
4  SPB 0 2014-03-14 1123.6 2014-03-14 2014-03-14      0 1123.6
5  EKB 1 2013-01-15 2134.0 2013-01-15 2013-01-15      1 2134.0
> 
> # Извлекаем текст из столбца raw с помощью функции str_extract 
> # пакета stringr и создаем переменную city
> data11$city <- str_extract(data11$raw, pattern="[A-Z]+")
> 
> # Аналогичную операцию можно выполнить с помощью 
> # стандартной функции sub
> data11$city2 <- sub("[^[:alpha:]]+", "", data11$raw)
> 
> # Смотрим данные
> data11
                       raw       date      date2 gender  score city city2
1  KDR 1 2014-12-23 3242.0 2014-12-23 2014-12-23      1 3242.0  KDR   KDR
2  MSK 1 2010-02-23 3453.7 2010-02-23 2010-02-23      1 3453.7  MSK   MSK
3 KRSK 0 2014-06-20 2123.0 2014-06-20 2014-06-20      0 2123.0 KRSK  KRSK
4  SPB 0 2014-03-14 1123.6 2014-03-14 2014-03-14      0 1123.6  SPB   SPB
5  EKB 1 2013-01-15 2134.0 2013-01-15 2013-01-15      1 2134.0  EKB   EKB
> 
