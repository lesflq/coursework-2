cmake_minimum_required(VERSION 3.10)
project(Calculator)

# Налаштування шляху до заголовків
include_directories(include)

# Створення бібліотеки
add_library(calc STATIC src/calculator.cpp)

# Створення виконуваного файлу
add_executable(calculator src/main.cpp)

# Лінкування бібліотеки до виконуваного файлу
target_link_libraries(calculator calc)