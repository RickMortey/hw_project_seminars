# Function-library analizer for C

По названию функции языка C выдает название сишной библиотеки, в которой лежит функция.

### Входные данные
Название функции языка C (например, scanf, printf, malloc, etc...)

### Выходные данные
Название библиотеки языка C, где лежит данная функция. Проще говоря, отвечает на вопрос какую либу include-ить. Если функция не была найдена, возвращает "---"

### Как запустить скрипт
Пишем один раз в терминале chmod +x func_what_include.sh (далее можно не делать)

Потом используем как обычный скрипт: ./func_what_include.sh

После чего начнётся чтение из STDIN (консольный ввод). Вводим названия функций, которые нас интересуют и в ответ получаем название библиотек. Для прерывания работы скрипта достаточно нажать Ctrl+C

### Описание алгоритма
1. Ищем местоположения всех man-ов, т.к. в man-ах лежат спецификации всевозможных скриптов, в т.ч. реализация сишных функций
2. Проходим по ним, при этом пытаемся выловить название файлика с помощью регулярок вида *function_name*.tar.gz или *function_name*.(что-то другое)
3. Открываем с помощью zgrep, вылавливаем строку с #include, вырезаем название либы.
4. ???
5. Profit!

### Здесь могла быть ваша реклама
