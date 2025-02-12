-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 29 2025 г., 17:58
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `product_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_type_id` int DEFAULT NULL,
  `director_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_middle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kpp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogrn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `login`, `password`, `organization_name`, `inn`, `organization_type_id`, `director_first_name`, `director_last_name`, `director_middle_name`, `kpp`, `ogrn`, `email`, `address`) VALUES
(1, 'client1', 'password1', 'Швейная фабрика \"Текстиль\"', '1234567890', 1, 'Иван', 'Петров', 'Иванович', '123456789', '1234567890123', 'client1@mail.ru', 'г. Москва, ул. Текстильная, д. 5'),
(2, 'client2', 'password2', 'ООО \"Модный стиль\"', '2345678901', 2, 'Алексей', 'Сидоров', 'Алексеевич', '234567890', '2345678901234', 'client2@mail.ru', 'г. Санкт-Петербург, ул. Модная, д. 12'),
(3, 'client3', 'password3', 'ЗАО \"Северная ткань\"', '3456789012', 1, 'Ольга', 'Кузнецова', 'Петровна', '345678901', '3456789012345', 'client3@mail.ru', 'г. Казань, ул. Северная, д. 7'),
(4, 'client4', 'password4', 'ИП \"Тканевые решения\"', '4567890123', 3, 'Марина', 'Морозова', 'Анатольевна', '456789012', '4567890123456', 'client4@mail.ru', 'г. Екатеринбург, ул. Тканевая, д. 3'),
(5, 'client5', 'password5', 'Фабрика \"Ткань+\"', '5678901234', 2, 'Владимир', 'Смирнов', 'Евгеньевич', '567890123', '5678901234567', 'client5@mail.ru', 'г. Новосибирск, ул. Промышленная, д. 8');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `passport_series` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `login`, `password`, `first_name`, `last_name`, `middle_name`, `birth_date`, `passport_series`, `passport_number`, `address`, `phone_number`, `position_id`, `email`) VALUES
(1, 'employee1', 'password1', 'Мария', 'Николаева', 'Вячеславовна', '1985-05-15', 'AB123456', '123456', 'г. Москва, ул. Ленина, д. 10', '+7 123 456 78 90', 1, 'employee1@mail.ru'),
(2, 'employee2', 'password2', 'Евгения', 'Васильева', 'Александровна', '1990-03-20', 'CD234567', '234567', 'г. Санкт-Петербург, ул. Пушкина, д. 4', '+7 234 567 89 01', 2, 'employee2@mail.ru'),
(3, 'employee3', 'password3', 'Александр', 'Козлов', 'Петрович', '1987-08-10', 'EF345678', '345678', 'г. Казань, ул. Волгоградская, д. 12', '+7 345 678 90 12', 3, 'employee3@mail.ru'),
(4, 'employee4', 'password4', 'Ирина', 'Петрова', 'Сергеевна', '1980-11-25', 'GH456789', '456789', 'г. Екатеринбург, ул. Чкалова, д. 5', '+7 456 789 01 23', 4, 'employee4@mail.ru'),
(5, 'employee5', 'password5', 'Виктор', 'Соловьев', 'Владимирович', '1995-07-30', 'IJ567890', '567890', 'г. Новосибирск, ул. Гагарина, д. 15', '+7 567 890 12 34', 1, 'employee5@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `location`
--

CREATE TABLE `location` (
  `id` int NOT NULL,
  `row_id` int DEFAULT NULL,
  `shelf_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `location`
--

INSERT INTO `location` (`id`, `row_id`, `shelf_id`) VALUES
(1, 1, 1),
(2, 2, 7),
(3, 3, 8),
(4, 5, 2),
(5, 4, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `material`
--

CREATE TABLE `material` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_type_id` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `material`
--

INSERT INTO `material` (`id`, `name`, `color`, `material_type_id`, `description`) VALUES
(1, 'Ткань хлопок', 'Белый', 1, 'Ткань для пошива летней одежды'),
(2, 'Ткань лен', 'Синий', 2, 'Легкая ткань для летних костюмов'),
(3, 'Ткань шерсть', 'Черный', 3, 'Ткань для пошива костюмов и пальто'),
(4, 'Фурнитура обувная', 'Красный', 4, 'Фурнитура для пошива обуви'),
(5, 'Ткань джинсовая', 'Темно-синий', 5, 'Ткань для пошива джинсов и курток');

-- --------------------------------------------------------

--
-- Структура таблицы `material_type`
--

CREATE TABLE `material_type` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_of_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_of_measure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `material_type`
--

INSERT INTO `material_type` (`id`, `name`, `unit_of_account`, `unit_of_measure`) VALUES
(1, 'Хлопок', 'сантиметры', 'см'),
(2, 'Лен', 'метры', 'м'),
(3, 'Шерсть', 'метры', 'м'),
(4, 'Фурнитура', 'штук', 'шт'),
(5, 'Джинса', 'метры', 'м');

-- --------------------------------------------------------

--
-- Структура таблицы `order_composition`
--

CREATE TABLE `order_composition` (
  `id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `workshop_id` int DEFAULT NULL,
  `total_sale_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_composition`
--

INSERT INTO `order_composition` (`id`, `order_id`, `product_id`, `quantity`, `width`, `length`, `workshop_id`, `total_sale_price`, `status`, `location_id`) VALUES
(1, 1, 1, 50, '10.00', '20.00', 1, '50000.00', 'В процессе', 3),
(2, 2, 2, 30, '15.00', '25.00', 2, '35000.00', 'Завершен', 4),
(3, 3, 3, 70, '8.00', '18.00', 1, '70000.00', 'В процессе', 2),
(4, 4, 4, 45, '12.00', '22.00', 3, '45000.00', 'Отменен', 5),
(5, 5, 5, 60, '14.00', '24.00', 2, '60000.00', 'В процессе', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order_request`
--

CREATE TABLE `order_request` (
  `id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_request`
--

INSERT INTO `order_request` (`id`, `customer_id`, `employee_id`, `status`, `date`, `cost_price`, `total_price`) VALUES
(1, 1, 1, 'В процессе', '2025-01-15', '10000.00', '12000.00'),
(2, 2, 2, 'Завершено', '2025-01-10', '5000.00', '6000.00'),
(3, 3, 3, 'В процессе', '2025-01-12', '8000.00', '9600.00'),
(4, 4, 4, 'Завершено', '2025-01-18', '15000.00', '18000.00'),
(5, 5, 5, 'В процессе', '2025-01-20', '12000.00', '14400.00');

-- --------------------------------------------------------

--
-- Структура таблицы `organization_type`
--

CREATE TABLE `organization_type` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `organization_type`
--

INSERT INTO `organization_type` (`id`, `name`) VALUES
(1, 'ОАО'),
(2, 'ПАО'),
(3, 'ООО');

-- --------------------------------------------------------

--
-- Структура таблицы `position`
--

CREATE TABLE `position` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `position`
--

INSERT INTO `position` (`id`, `name`) VALUES
(1, 'Менеджер'),
(2, 'Кладовщик'),
(3, 'Производственный работник'),
(4, 'Директор');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type_id` int DEFAULT NULL,
  `unit_of_measure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `model`, `product_type_id`, `unit_of_measure`) VALUES
(1, 'Костюм спортивный', 'Одежда для спортивных занятий', 'Sport classic', 2, 'шт'),
(2, 'Брючный костюм', 'Костюм предназначенный для выхода на мероприятие', 'BE beautiful', 2, 'шт'),
(3, 'Кроссовки', 'Мужские спортивные кроссовки', 'Combo_feature', 4, 'шт'),
(4, 'Серьги', 'Женские серьги из серебра ', 'C++', 3, 'шт'),
(5, 'Джинсы', 'Джинсы унисекс', 'Unisex', 2, 'шт');

-- --------------------------------------------------------

--
-- Структура таблицы `product_materials`
--

CREATE TABLE `product_materials` (
  `id` int NOT NULL,
  `order_composition_id` int DEFAULT NULL,
  `supply_composition_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `cut_size` decimal(10,2) DEFAULT NULL,
  `cut_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_materials`
--

INSERT INTO `product_materials` (`id`, `order_composition_id`, `supply_composition_id`, `quantity`, `cost`, `cut_size`, `cut_cost`) VALUES
(1, 1, 1, 50, '5000.00', '1.50', '200.00'),
(2, 2, 2, 30, '3000.00', '1.80', '150.00'),
(3, 3, 3, 20, '4000.00', '2.00', '100.00'),
(4, 4, 4, 100, '8000.00', '1.60', '250.00'),
(5, 5, 5, 75, '6000.00', '1.50', '180.00');

-- --------------------------------------------------------

--
-- Структура таблицы `product_type`
--

CREATE TABLE `product_type` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_type`
--

INSERT INTO `product_type` (`id`, `name`) VALUES
(1, 'Ткань'),
(2, 'Одежда'),
(3, 'Аксессуары'),
(4, 'Обувь');

-- --------------------------------------------------------

--
-- Структура таблицы `row`
--

CREATE TABLE `row` (
  `id` int NOT NULL,
  `number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `row`
--

INSERT INTO `row` (`id`, `number`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7');

-- --------------------------------------------------------

--
-- Структура таблицы `shelf`
--

CREATE TABLE `shelf` (
  `id` int NOT NULL,
  `number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shelf`
--

INSERT INTO `shelf` (`id`, `number`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'B1'),
(5, 'B2'),
(6, 'B3'),
(7, 'C1'),
(8, 'C2'),
(9, 'C3');

-- --------------------------------------------------------

--
-- Структура таблицы `supplier`
--

CREATE TABLE `supplier` (
  `id` int NOT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_type_id` int DEFAULT NULL,
  `director_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_middle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kpp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogrn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `supplier`
--

INSERT INTO `supplier` (`id`, `organization_name`, `inn`, `organization_type_id`, `director_first_name`, `director_last_name`, `director_middle_name`, `kpp`, `ogrn`, `email`, `address`) VALUES
(1, 'ООО Поставки Мира', '781234567890', 1, 'Алексей', 'Сидоров', 'Владимирович', '781234567', '1234567890123', 'contact@supplier1.com', 'Москва, ул. Тверская, д. 12'),
(2, 'ЗАО СтройКомплект', '773456789012', 2, 'Марина', 'Иванова', 'Петровна', '773456789', '2345678901234', 'info@stroykomplekt.ru', 'Санкт-Петербург, ул. Невский, д. 5'),
(3, 'ИП Бизнес Поставка', '123456789123', 3, 'Петр', 'Петров', 'Сергеевич', '123456789', '3456789012345', 'business@supplier3.org', 'Казань, ул. Кремлевская, д. 3'),
(4, 'ООО Торговый Дом', '781234567891', 1, 'Ольга', 'Кузнецова', 'Анатольевна', '781234568', '4567890123456', 'sales@tradinghouse.com', 'Екатеринбург, ул. Мира, д. 8'),
(5, 'ЗАО ТехноГрупп', '782345678901', 2, 'Иван', 'Петров', 'Иванович', '782345679', '5678901234567', 'support@technogroup.ru', 'Ростов-на-Дону, ул. Пушкина, д. 10');

-- --------------------------------------------------------

--
-- Структура таблицы `supply`
--

CREATE TABLE `supply` (
  `id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `supply`
--

INSERT INTO `supply` (`id`, `employee_id`, `supplier_id`, `total_amount`, `date`) VALUES
(1, 1, 1, '150000.00', '2025-01-10'),
(2, 2, 2, '250000.00', '2025-01-12'),
(3, 3, 3, '80000.00', '2025-01-15'),
(4, 4, 4, '300000.00', '2025-01-17'),
(5, 5, 5, '120000.00', '2025-01-20');

-- --------------------------------------------------------

--
-- Структура таблицы `supply_composition`
--

CREATE TABLE `supply_composition` (
  `id` int NOT NULL,
  `supply_id` int DEFAULT NULL,
  `material_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `unit_quantity` int DEFAULT NULL,
  `unit_count` int DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `remainder` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `supply_composition`
--

INSERT INTO `supply_composition` (`id`, `supply_id`, `material_id`, `quantity`, `length`, `width`, `cost`, `unit_quantity`, `unit_count`, `status`, `location_id`, `remainder`) VALUES
(1, 1, 1, 100, '150.00', '50.00', '5000.00', 1, 100, 'Доставлено', 1, 50),
(2, 2, 2, 50, '200.00', '40.00', '3000.00', 1, 50, 'В процессе', 2, 25),
(3, 3, 3, 80, '180.00', '60.00', '4000.00', 1, 80, 'Доставлено', 3, 60),
(4, 4, 4, 120, '170.00', '55.00', '6000.00', 1, 120, 'В процессе', 4, 100),
(5, 5, 5, 150, '160.00', '50.00', '7000.00', 1, 150, 'Доставлено', 5, 125);

-- --------------------------------------------------------

--
-- Структура таблицы `workshop`
--

CREATE TABLE `workshop` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `workshop`
--

INSERT INTO `workshop` (`id`, `name`) VALUES
(1, 'Цех №1'),
(2, 'Цех №2'),
(3, 'Цех №3'),
(4, 'Цех №4'),
(5, 'Цех №5');

-- --------------------------------------------------------

--
-- Структура таблицы `workshop_employee`
--

CREATE TABLE `workshop_employee` (
  `id` int NOT NULL,
  `workshop_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `workshop_employee`
--

INSERT INTO `workshop_employee` (`id`, `workshop_id`, `employee_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_organization_type` (`organization_type_id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_id` (`position_id`);

--
-- Индексы таблицы `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_location_row` (`row_id`),
  ADD KEY `fk_location_shelf` (`shelf_id`);

--
-- Индексы таблицы `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_material_material_type` (`material_type_id`);

--
-- Индексы таблицы `material_type`
--
ALTER TABLE `material_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_composition`
--
ALTER TABLE `order_composition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_composition_order` (`order_id`),
  ADD KEY `fk_order_composition_product` (`product_id`),
  ADD KEY `fk_order_composition_workshop` (`workshop_id`),
  ADD KEY `fk_order_composition_location` (`location_id`);

--
-- Индексы таблицы `order_request`
--
ALTER TABLE `order_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_request_customer` (`customer_id`),
  ADD KEY `fk_order_request_employee` (`employee_id`);

--
-- Индексы таблицы `organization_type`
--
ALTER TABLE `organization_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_product_type` (`product_type_id`);

--
-- Индексы таблицы `product_materials`
--
ALTER TABLE `product_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_materials_order_composition` (`order_composition_id`),
  ADD KEY `fk_product_materials_supply_composition` (`supply_composition_id`);

--
-- Индексы таблицы `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `row`
--
ALTER TABLE `row`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shelf`
--
ALTER TABLE `shelf`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier_organization_type` (`organization_type_id`);

--
-- Индексы таблицы `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supply_employee` (`employee_id`),
  ADD KEY `fk_supply_supplier` (`supplier_id`);

--
-- Индексы таблицы `supply_composition`
--
ALTER TABLE `supply_composition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supply_composition_supply` (`supply_id`),
  ADD KEY `fk_supply_composition_material` (`material_id`),
  ADD KEY `fk_supply_composition_location` (`location_id`);

--
-- Индексы таблицы `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workshop_employee`
--
ALTER TABLE `workshop_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_workshop_employee_workshop` (`workshop_id`),
  ADD KEY `fk_workshop_employee_employee` (`employee_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `location`
--
ALTER TABLE `location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `material`
--
ALTER TABLE `material`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `material_type`
--
ALTER TABLE `material_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `order_composition`
--
ALTER TABLE `order_composition`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `order_request`
--
ALTER TABLE `order_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `organization_type`
--
ALTER TABLE `organization_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `position`
--
ALTER TABLE `position`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product_materials`
--
ALTER TABLE `product_materials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `row`
--
ALTER TABLE `row`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `shelf`
--
ALTER TABLE `shelf`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `supply`
--
ALTER TABLE `supply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `supply_composition`
--
ALTER TABLE `supply_composition`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `workshop_employee`
--
ALTER TABLE `workshop_employee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_organization_type` FOREIGN KEY (`organization_type_id`) REFERENCES `organization_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`);

--
-- Ограничения внешнего ключа таблицы `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `fk_location_row` FOREIGN KEY (`row_id`) REFERENCES `row` (`id`),
  ADD CONSTRAINT `fk_location_shelf` FOREIGN KEY (`shelf_id`) REFERENCES `shelf` (`id`);

--
-- Ограничения внешнего ключа таблицы `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `fk_material_material_type` FOREIGN KEY (`material_type_id`) REFERENCES `material_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `order_composition`
--
ALTER TABLE `order_composition`
  ADD CONSTRAINT `fk_order_composition_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `fk_order_composition_order` FOREIGN KEY (`order_id`) REFERENCES `order_request` (`id`),
  ADD CONSTRAINT `fk_order_composition_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_order_composition_workshop` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`id`);

--
-- Ограничения внешнего ключа таблицы `order_request`
--
ALTER TABLE `order_request`
  ADD CONSTRAINT `fk_order_request_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_order_request_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_product_type` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `product_materials`
--
ALTER TABLE `product_materials`
  ADD CONSTRAINT `fk_product_materials_order_composition` FOREIGN KEY (`order_composition_id`) REFERENCES `order_composition` (`id`),
  ADD CONSTRAINT `fk_product_materials_supply_composition` FOREIGN KEY (`supply_composition_id`) REFERENCES `supply_composition` (`id`);

--
-- Ограничения внешнего ключа таблицы `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `fk_supplier_organization_type` FOREIGN KEY (`organization_type_id`) REFERENCES `organization_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `supply`
--
ALTER TABLE `supply`
  ADD CONSTRAINT `fk_supply_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_supply_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Ограничения внешнего ключа таблицы `supply_composition`
--
ALTER TABLE `supply_composition`
  ADD CONSTRAINT `fk_supply_composition_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `fk_supply_composition_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`),
  ADD CONSTRAINT `fk_supply_composition_supply` FOREIGN KEY (`supply_id`) REFERENCES `supply` (`id`);

--
-- Ограничения внешнего ключа таблицы `workshop_employee`
--
ALTER TABLE `workshop_employee`
  ADD CONSTRAINT `fk_workshop_employee_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_workshop_employee_workshop` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
