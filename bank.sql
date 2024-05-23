-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2024 г., 13:41
-- Версия сервера: 8.3.0
-- Версия PHP: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bank`
--

-- --------------------------------------------------------

--
-- Структура таблицы `deposits`
--

CREATE TABLE `deposits` (
  `id` int NOT NULL,
  `code_deposit` int NOT NULL,
  `name_deposit` varchar(500) NOT NULL,
  `min_deposit_period` date NOT NULL,
  `min_sum_deposit` int NOT NULL,
  `code_currency` varchar(500) NOT NULL,
  `procent` int NOT NULL,
  `conditions` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `deposits`
--

INSERT INTO `deposits` (`id`, `code_deposit`, `name_deposit`, `min_deposit_period`, `min_sum_deposit`, `code_currency`, `procent`, `conditions`) VALUES
(1, 1, 'Отдых', '2024-05-23', 10000, 'RUB', 6, 'Без условий'),
(2, 2, 'Накопительный', '2024-06-02', 15000, 'USD', 3, 'С ежемесячной капитализацией'),
(3, 3, 'Семейный', '2024-06-12', 20000, 'EUR', 4, 'Без снятий'),
(4, 4, 'Пенсионный', '2024-06-22', 5000, 'RUB', 6, 'Без условий'),
(5, 5, 'Детский', '2024-07-02', 12000, 'USD', 3, 'Без условий'),
(6, 6, 'Срочный', '2024-07-12', 25000, 'EUR', 4, 'С капитализацией'),
(7, 7, 'Инвестиционный', '2024-07-22', 30000, 'RUB', 5, 'С ежеквартальной выплатой процентов'),
(8, 8, 'Коммерческий', '2024-08-01', 50000, 'USD', 3, 'Без условий'),
(9, 9, 'Социальный', '2024-08-11', 8000, 'EUR', 4, 'Без условий'),
(10, 10, 'Образовательный', '2024-08-21', 10000, 'RUB', 5, 'С ежемесячной выплатой процентов');

-- --------------------------------------------------------

--
-- Структура таблицы `offices`
--

CREATE TABLE `offices` (
  `id` int NOT NULL,
  `code_offices` varchar(500) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `age` int NOT NULL,
  `sex` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `passport` varchar(500) NOT NULL,
  `code_position` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `offices`
--

INSERT INTO `offices` (`id`, `code_offices`, `fullname`, `age`, `sex`, `address`, `phone`, `passport`, `code_position`) VALUES
(1, 'OFF001', 'Иванов Иван Иванович', 34, 'M', 'ул. Ленина, д. 1, кв. 10', '89001234567', '1234 567890', 'POS001'),
(2, 'OFF002', 'Петров Петр Петрович', 45, 'M', 'ул. Советская, д. 5, кв. 12', '89007654321', '1234 567891', 'POS002'),
(3, 'OFF003', 'Сидорова Анна Викторовна', 29, 'F', 'ул. Мира, д. 10, кв. 5', '89009876543', '1234 567892', 'POS003'),
(4, 'OFF004', 'Кузнецова Мария Александровна', 37, 'F', 'ул. Пушкина, д. 15, кв. 8', '89005432123', '1234 567893', 'POS004'),
(5, 'OFF005', 'Васильев Дмитрий Сергеевич', 50, 'M', 'ул. Гоголя, д. 20, кв. 3', '89001239876', '1234 567894', 'POS005');

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` int NOT NULL,
  `code_position` int NOT NULL,
  `name_position` varchar(500) NOT NULL,
  `salary` int NOT NULL,
  `duties` varchar(500) NOT NULL,
  `requirements` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `code_position`, `name_position`, `salary`, `duties`, `requirements`) VALUES
(1, 101, 'Менеджер по продажам', 50000, 'Продажа продукции, работа с клиентами, выполнение плана продаж', 'Опыт работы от 2 лет, высшее образование, коммуникабельность'),
(2, 102, 'Главный бухгалтер', 80000, 'Ведение бухгалтерского учета, составление отчетности, налоговое планирование', 'Опыт работы от 5 лет, высшее образование, знание 1С'),
(3, 103, 'Разработчик ПО', 70000, 'Разработка и поддержка программного обеспечения, участие в проектах', 'Опыт работы от 3 лет, высшее образование, знание языков программирования'),
(4, 104, 'Аналитик данных', 60000, 'Анализ данных, подготовка отчетов, работа с большими объемами информации', 'Опыт работы от 2 лет, высшее образование, знание SQL'),
(5, 105, 'HR менеджер', 55000, 'Подбор персонала, проведение интервью, адаптация сотрудников', 'Опыт работы от 1 года, высшее образование, коммуникабельность');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_offices` (`code_offices`),
  ADD UNIQUE KEY `passport` (`passport`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
