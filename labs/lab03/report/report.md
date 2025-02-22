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

Jткроем терминал и переместимся в рабочий каталог.Обновим локальный репозиторий с помощью команды git pull. Так мы синхронизируем файлы на компьютере с файлами на Github (Рис. 2.1):

![Использование git pull](image/1.jpg)

Перейдём в каталог лабораторной работы номер 3. Проведём компиляцию шаблона отчёта с помощью команды make (Рис. 2.2):

![Использование команды make](image/2.jpg)

Проверим, создались ли файлы .docx и .pdf (Рис. 2.3):

![Проверка создания файлов](image/3.jpg)

Удалим файлы .docx и .pdf командой make clean (Рис. 2.4):

![Использование команды make clean](image/4.jpg)

Теперь откроем файл отчёта report.md с помощью редактора nano и заполним его (Рис. 2.5):

![Открытие файла отчёта с помощью gedit](image/5.jpg)

После заполнения отчёта прописываем команду make, чтобы скомпилировать готовый отчёт (Рис. 2.6):

![Сборка готового отчёта с помощью make](image/6.jpg)

Теперь перейдём в рабочий каталог и с помощью git отправим файлы лабораторной работы на Github. В качестве комментария укажем, что мы добавляем файлы для третьей лабораторной работы.

# Выполнение задания для самостоятельной работы

Теперь нам нужно переделать вторую лабораторную работу в формат Markdown. Для этого необходимо для начала перейти в каталог второй лабораторной работы. Откроем файл лабораторной работы с помощью nano, заполним отчет, соберем его командой make и отправим на github командами git add .; git commit; git push.

# Выводы

В результате выполнения лабораторной работы были получены навыки работы с языком разметки Markdown, а также были заполнены отчёты для двух лабораторных работ.

