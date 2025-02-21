---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
author: "Борисенкова София Павловна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Ознакомиться с программой Midnight commander и освоить написание программ на языке ассемблера с помощью инструкций mov и int

# Выполнение лабораторной работы

Для начала выполнения лабораторной работы нам необходимо открыть Midnight commander с помощью команды mc (Рис. 2.1):

![Запуск Midnight commander](image/1.jpg)

После ввода команды мы увидим такой интерфейс (Рис. 2.2):

![Интерфейс midnight commander](image/2.jpg)

С помощью стрелок и клавиши Enter перейдём в каталог ~/work/arch-pc (Рис. 2.3):

![Переход в нужный каталог (~/work/arch-pc)](image/3.jpg)

Создадим папку lab05 с помощью клавиши F7 (Рис. 2.4):

![Создание папки](image/4.jpg)

Теперь с помощью команды touch создадим файл lab5-1.asm (Рис. 2.5):

![Создание файла lab5-1.asm с помощью команды touch прямо в mc](image/5.jpg)

Теперь откроем только что созданный файл с помощью редактор nano (Рис. 2.6):

![Выбор текстового редактора](image/6.jpg)

Теперь отредактируем файл и поместим в него следующий код (Рис. 2.7):

![Редактирование файла lab5-1.asm](image/7.jpg)

Теперь сохраним его (сочетанием клавиш ctrl+x и согласившись с сохранением) и с помощью F3 откроем для просмотра, чтобы убедиться, что он сохранился корректно (Рис. 2.8):

![Проверка успешного редактирования](image/8.jpg)

Теперь скомпилируем его (Рис. 2.9):

![Компиляция файла с помощью nasm](image/9.jpg)

И соберём (Рис. 2.10):

![Сборка исполняемого файла с помощью ld](image/10.jpg)

После этого запустим получившийся исполняемый файл и введём ФИО (Рис. 2.11):

![Взаимодействие с программой](image/11.jpg)

После нажатия Enter программа завершится и ничего не произойдёт. Теперь скачаем файл in_out.asm и откроем папку с ним в правой панели (Рис. 2.12):

![Открытие папки с файлом in_out.asm в правой панели](image/12.jpg)

Скопируем его в нашу рабочую папку с помощью F6 (Рис. 2.13):

![Копирование файла c помощью F6](image/13.jpg)

Теперь сделаем копию файла lab5-1.asm с помощью команды F5. Назовём копию lab5-2.asm (Рис. 2.14):

![Копирование файла c помощью F5](image/14.jpg)

Теперь наша папка выглядит следующим образом (Рис. 2.15):

![Текущий вид рабочей папки](image/15.jpg)

Откроем в текстовом редакторе файл lab5-2.asm и напишем туда следующий код (Рис. 2.16):

![Редактирование файла lab5-2.asm](image/16.jpg)

После чего создадим исполняемый файл с помощью nasm и ld (Рис. 2.17):

![Создание исполняемого файла](image/17.jpg)

Запустим созданный файл (Рис. 2.18):

![Запуск исполняемого файла](image/18.jpg)

Он работает также, как и файл lab5-1, но использует для работы сторонний файл. Попробуем теперь вместо команды sprintLF использовать просто команду sprint (Рис. 2.19):

![Изменение файла lab5-2.asm](image/19.jpg)

Точно также соберём исполняемый файл и запустим его (Рис. 2.20):

![Запуск изменённого файла](image/20.jpg)

Как мы видим, теперь нет переноса на следующую строку. Этим и отличаются команды sprintLF от sprint. Первая добавляет перенос после текста, а вторая нет

# Выполнение задания для самостоятельной работы

Теперь создадим с помощью F5 копию файла lab5-1.asm (Рис. 3.1):

![Создание копии файла lab5-1.asm](image/21.jpg)

Изменим копию так, чтобы она выводила тот текст, который получила на ввод. Для этого перед системным вызовом exit вставим текст с системным вызовом write. Он очень похож на системный вызов write, который уже был в коде, но есть несколько отличий. Так, мы перемещаем адрес строки buf1 в ecx и размер строки buf1 (80) в edx (Рис. 3.2):

![Изменение файла lab5-1-1.asm](image/22.jpg)

Сохраним изменения и создадим исполняемый файл (Рис. 3.3):

![Создание исполняемого файла](image/23.jpg)

Запустим его и проверим, что всё работает (Рис. 3.4):

![Проверка работы программы](image/24.jpg)

Теперь создадим с помощью F5 копию файла lab5-2.asm (Рис. 3.5):

![Создание копии файла lab5-2.asm](image/25.jpg)

теперь сделаем так, чтобы этот код также выводил тот текст, что получит на ввод. Для этого перед последней строкой добавим строчку, которая записывает в eax адрес buf1, а также строчку, которая вызывает подпрограмму sprintLF (Рис. 3.6):

![Изменение файла lab5-2-1.asm](image/26.jpg)

Теперь создадим исполняемый файл (Рис. 3.7):

![Создание исполняемого файла](image/27.jpg)

Теперь запустим программу и убедимся, что она работает (Рис. 3.8):

![Проверка работы программы](image/28.jpg)


# Выводы

В результате выполнения работы были получены навыки работы с Midnight commander, а также навыки написания простых программ ввода-вывода на языке ассемблера

