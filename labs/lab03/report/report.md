---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Выполнение лабораторной работы

откроем терминал и переместимся в рабочий каталог (Рис. 2.1):

![Перемещение в рабочий каталог](image/1.jpg)

Обновим локальный репозиторий с помощью команды git pull. Так мы синхронизируем файлы на компьютере с файлами на Github (Рис. 2.2):

![Использование git pull](image/2.jpg)

Перейдём в каталог лабораторной работы номер 3 (Рис. 2.3):

![Перемещение в каталог 3 лабораторной работы](image/3.jpg)

Проведём компиляцию шаблона отчёта с помощью команды make (Рис. 2.4):

![Использование команды make](image/4.jpg)

Проверим, создались ли файлы .docx и .pdf (Рис. 2.5 - 2.7):

![Проверка создания файлов](image/5.jpg)

![Проверка docx файла](image/6.jpg)

![Проверка pdf файла](image/7.jpg)

Удалим файлы .docx и .pdf командой make clean (Рис. 2.8):

![Использование команды make clean](image/8.jpg)

А теперь проверим, удалились ли файлы отчёта (Рис. 2.9):

![Проверка удалённых файлов](image/9.jpg)

Теперь откроем файл отчёта report.md с помощью редактора gedit (Рис. 2.10):

![Открытие файла отчёта с помощью gedit](image/10.jpg)

Начнём заполнять файл report.md (Рис. 2.11):

![Структура файла отчёта](image/11.jpg)

После заполнения отчёта прописываем команду make, чтобы скомпилировать готовый отчёт (Рис. 2.12):

![Сборка готового отчёта с помощью make](image/12.jpg)

Теперь перейдём в рабочий каталог (Рис. 2.13):

![Перемещение в рабочий каталог](image/13.jpg)

Теперь с помощью git отправим файлы лабораторной работы на Github. В качестве комментария укажем, что мы добавляем файлы для третьей лабораторной работы (Рис. 2.14):

![Отправка файлов на Github с помощью git](image/14.jpg)

# Выполнение задания для самостоятельной работы

Теперь нам нужно переделать вторую лабораторную работу в формат Markdown. Для этого необходимо для начала перейти в каталог второй лабораторной работы (Рис. 3.1):

![Перемещение в каталог второй лабораторной работы](image/15.jpg)

Откроем файл лабораторной работы с помощью gedit (Рис. 3.2):

![Открытие файла с помощью gedit](image/16.jpg)

Заполним титульную страницу (Рис. 3.3):

![Титульная страница](image/17.jpg)

Заполним цель работы и пункт выполнения лабораторной работы (Рис. 3.4):

![Заполнение цели работы и выполнения лабораторной работы](image/18.jpg)

Напишем в отчёте задание для самостоятельной работы (Рис. 3.5):

![Заполнение задания для самостоятельной работы](image/19.jpg)

И заполним выводы (Рис. 3.6):

![Заполнение выводов](image/20.jpg)

Поместим скриншоты в отдельную папку image (Рис. 3.7):

![Папка image](image/21.jpg)

Теперь соберём отчёт с помощью команды make (Рис. 3.8):

![Использование команды make](image/22.jpg)

Теперь осталось отправить файлы на Github. Для этого сначала перейдём в рабочий каталог (Рис. 3.9):

![Перемещение в рабочий каталог](image/23.jpg)

И после этого используем Git Для отправки. В комментарии укажем, что добавляем файлы для лабораторной работы номер 2 (Рис. 3.10 - 3.11):

![Использование git add и git](image/24.jpg)

![Использовани git push](image/25.jpg)

# Выводы

В результате выполнения лабораторной работы были получены навыки работы с языком разметки Markdown, а также были заполнены отчёты для двух лабораторных работ.

