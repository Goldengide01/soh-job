-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2017 at 08:42 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `vital_id` int(11) NOT NULL,
  `appointment_date_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `patient_id`, `doctor_id`, `vital_id`, `appointment_date_time`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 1, '21/02/2017 11:00 am', 'Urgent!', 'This patient needs to see you, Its very urgent', 'completed', '2017-02-17 19:15:50', '2017-02-17 19:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `cashbooks`
--

CREATE TABLE `cashbooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `policy_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deposit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_balance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_bill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_bill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode_of_payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_amount_collected` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashbook_analysises`
--

CREATE TABLE `cashbook_analysises` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `dressing` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `consulting_fee` int(11) NOT NULL,
  `treatment` int(11) NOT NULL,
  `lab_test` int(11) NOT NULL,
  `registrar` int(11) NOT NULL,
  `debtors` int(11) NOT NULL,
  `scan` int(11) NOT NULL,
  `accomodation` int(11) NOT NULL,
  `surgery` int(11) NOT NULL,
  `delivery` int(11) NOT NULL,
  `episiotomy` int(11) NOT NULL,
  `nikara` int(11) NOT NULL,
  `blood` int(11) NOT NULL,
  `nebuliz` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `continuations`
--

CREATE TABLE `continuations` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `findings` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drug_prescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lab_req` int(11) DEFAULT '0',
  `lab_test_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_to_doctor` int(11) DEFAULT '0',
  `name_doctor_referred` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surgery_app` int(11) DEFAULT '0',
  `surgery_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_to_specialist` int(11) DEFAULT '0',
  `name_of_specialist_doctor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_to_hospital` int(11) DEFAULT '0',
  `hospital_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admit_patient` int(11) DEFAULT '0',
  `evacuation` int(11) DEFAULT '0',
  `circumcision_labour` int(11) DEFAULT '0',
  `treatment_taken` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `continuations`
--

INSERT INTO `continuations` (`id`, `patient_id`, `doctor_id`, `appointment_id`, `findings`, `drug_prescription`, `lab_req`, `lab_test_name`, `refer_to_doctor`, `name_doctor_referred`, `surgery_app`, `surgery_info`, `refer_to_specialist`, `name_of_specialist_doctor`, `refer_to_hospital`, `hospital_info`, `admit_patient`, `evacuation`, `circumcision_labour`, `treatment_taken`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 1, 'Patient is stooling and vommiting', '2 tablets of tetracyclin', 1, 'Urine Test', NULL, '0', NULL, '', NULL, '0', NULL, '', NULL, NULL, NULL, 0, '2017-02-17 20:30:55', '2017-02-17 20:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `expenditures`
--

CREATE TABLE `expenditures` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receipt_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_sign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cashier_sign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenditure_analysises`
--

CREATE TABLE `expenditure_analysises` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `purpose` text COLLATE utf8_unicode_ci NOT NULL,
  `voucher_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cheque_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drugs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drawings` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transport_travelling` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanitation_cleaner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salary_wages` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fuel_oil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repair_maintenance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `consultation_fee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stationary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `insurance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `electric_power` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lab_scan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fixed_asset` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surgeon_fee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rent_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `generic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nafdac_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock_out` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--

CREATE TABLE `laboratories` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `lab_request_id` int(13) NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laboratories`
--

INSERT INTO `laboratories` (`id`, `session_id`, `user_id`, `patient_id`, `lab_request_id`, `result`, `status`, `created_at`, `updated_at`) VALUES
(1, '777d45bbbcdf50d49c42c70ad7acf5fe', 10, 1, 1, 'This is a test....', 'completed', '2017-02-17 21:59:56', '2017-02-17 21:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `lab_requests`
--

CREATE TABLE `lab_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `lab_test_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lab_requests`
--

INSERT INTO `lab_requests` (`id`, `doctor_id`, `patient_id`, `lab_test_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'Urine Test', 'completed', '2017-02-17 22:41:32', '2017-02-19 19:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_01_05_164229_create_users_table', 1),
(2, '2017_01_06_094311_create_patients_table', 1),
(3, '2017_01_06_234335_create_table_vitalschedules', 1),
(4, '2017_01_10_021422_create_vitals_table', 1),
(5, '2017_01_11_092005_create_appointments_table', 1),
(6, '2017_01_11_211522_create_laboratories_table', 1),
(7, '2017_01_13_100522_create_pharmacies_table', 1),
(8, '2017_01_14_013456_create_products_table', 1),
(9, '2017_01_14_051345_create_inventories_table', 1),
(10, '2017_01_19_135456_create_continuation_table', 1),
(11, '2017_01_20_221848_create_purchase_books_tables', 1),
(12, '2017_01_20_222116_create_recieved_stocks_tables', 1),
(13, '2017_01_21_011827_create_treatments_tables', 1),
(14, '2017_01_24_150536_create_expenditures_table', 1),
(15, '2017_01_25_123958_create_records_tables', 1),
(16, '2017_01_26_174413_create_cashbooks_tables', 1),
(17, '2017_01_26_174529_create_cashbook_analysis_tables', 1),
(18, '2017_01_26_174603_create_expenditure_analysis_tables', 1),
(19, '2017_02_16_101326_create_nurse_notifications_table', 1),
(20, '2017_02_17_222324_create_lab_requests_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_notifications`
--

CREATE TABLE `nurse_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nurse_notifications`
--

INSERT INTO `nurse_notifications` (`id`, `doctor_id`, `patient_id`, `nurse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 'Completed', '2017-02-17 20:30:55', '2017-02-17 20:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `reg_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood_grp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genotype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `patient_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next_of_kin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next_of_kin_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next_of_kin_phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_first_attendance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `family_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lab_test_performed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `reg_no`, `name`, `address`, `date_of_birth`, `age`, `sex`, `phone`, `blood_grp`, `genotype`, `state`, `patient_img`, `next_of_kin_name`, `next_of_kin_address`, `next_of_kin_phone_no`, `date_first_attendance`, `category`, `company_name`, `family_name`, `lab_test_performed`, `created_at`, `updated_at`) VALUES
(1, 'ADEBAYO SALAMI/1', 'Adebayo Salami', 'CD 16, Shagari Estate, Iyana Ipaja Lagos', '01/31/1987', '29', 'Female', '08190876543', 'A+', 'AA', 'Ekiti ', 'avatar3.png', 'Adebayo Femi', 'CD 16, Shagari Estate, Iyana Ipaja Lagos', '09032626366', '02/17/2017', 'regular', NULL, '', 1, '2017-02-17 18:55:32', '2017-02-17 21:59:56'),
(2, 'MODUPE/2', 'Adebiyi Modupe', '412 Road A close block 8 flat 6 Gowon, Estate Iyana Ipaja', '11/09/1995', '17', 'Female', '08064478883', 'O-', 'AS', 'Kogi', 'avatar1.png', 'Adebiyi Serah', '412 Road A close block 8 flat 6 Gowon, Estate Iyana Ipaja', '08033797944', '02/08/2017', 'family', NULL, 'Modupe', 0, '2017-02-17 18:59:08', '2017-02-17 18:59:08'),
(3, 'PADEBO/3', 'Akinyemi Akinwunmi', 'BA Street Shagari Estate Akinogun, Iyana Ipaja Lagos ', '02/21/1980', '35', 'Male', '08124567898', 'O+', 'AA', 'Ekiti ', 'avater4.png', 'Ajidahun Blessing', 'BA Street Shagari Estate Akinogun, Iyana Ipaja Lagos ', '09088456789', '11/07/2016', 'company', NULL, '', 0, '2017-02-17 19:02:59', '2017-02-17 19:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `patient_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `continuation_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medication_dispensed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_dispensed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_books`
--

CREATE TABLE `purchase_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_pharmacy_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drug_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_purchase` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recieved_stocks`
--

CREATE TABLE `recieved_stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_pharmacy_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drug_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_purchase` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recieved_stocks`
--

INSERT INTO `recieved_stocks` (`id`, `purchase_pharmacy_name`, `drug_name`, `quantity`, `date_of_purchase`, `created_at`, `updated_at`) VALUES
(1, 'uuuu', 'Paracetamol', '12', '02/07/2017', '2017-02-17 22:27:51', '2017-02-17 22:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(10) UNSIGNED NOT NULL,
  `admissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discharged` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inPatient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vacant_beds` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_beds` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_babies` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_of_nurse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(2) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `short_name` varchar(2) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `short_name`, `created`, `updated`, `deleted`) VALUES
(1, 'Abia', 'AB', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(2, 'Abuja', 'FC', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(3, 'Adamawa', 'AD', '2013-12-17 11:58:32', '2013-11-01 16:33:37', NULL),
(4, 'Akwa-Ibom', 'AK', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(5, 'Anambra', 'AN', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(6, 'Bauchi', 'BA', '2013-12-17 11:59:15', '2013-11-01 16:33:37', NULL),
(7, 'Bayelsa', 'BY', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(8, 'Benue', 'BE', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(9, 'Borno', 'BO', '2013-12-18 16:53:59', '2013-11-01 16:33:37', NULL),
(10, 'Cross-River', 'CR', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(11, 'Delta', 'DE', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(12, 'Ebonyi', 'EB', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(13, 'Edo', 'ED', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(14, 'Ekiti ', 'EK', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(15, 'Enugu', 'EN', '2013-11-01 16:33:36', '2013-11-01 16:33:36', NULL),
(16, 'Gombe', 'GO', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(17, 'Imo', 'IM', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(18, 'Jigawa', 'JI', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(19, 'Kaduna', 'KD', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(20, 'Kano', 'KN', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(21, 'Katsina', 'KT', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(22, 'Kebbi', 'KE', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(23, 'Kogi', 'KO', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(24, 'Kwara', 'KW', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(25, 'Lagos', 'LA', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(26, 'Nassarawa', 'NA', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(27, 'Niger', 'NI', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(28, 'Ogun', 'OG', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(29, 'Ondo', 'ON', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(30, 'Osun', 'OS', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(31, 'Oyo', 'OY', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(32, 'Plateau', 'PL', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(33, 'Rivers', 'RI', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(34, 'Sokoto', 'SO', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(35, 'Taraba', 'TA', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL),
(36, 'Yobe', 'YO', '2013-12-18 16:53:59', '2013-11-01 16:33:37', NULL),
(37, 'Zamfara', 'ZA', '2013-11-01 16:33:37', '2013-11-01 16:33:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `treatment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lab_investigation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vitals_after_admission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `radiological` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `consultant_fee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `treated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `email`, `user_role`, `created_at`, `updated_at`) VALUES
(7, 'Ayeni', 'Blessing', 'blessing', '$2y$10$94SCkmRJQtoUfJmT/cEvrei1FbCQ9CK9zRJaDniFgB4LwFK3lIcwm', 'blessing32@gmail.com', 'consultant', NULL, NULL),
(8, 'Adeyi', 'Bolu', 'bolu', '$2y$10$gSrIfNEVMhT8O7FNh10UOOIzZ9DQtkprLwAIG0/s2YdvEDPkofhde', 'bolu@gmail.com', 'frontdesk', NULL, NULL),
(9, 'Adereti', 'Francis', 'adereti', '$2y$10$1JR.AIrAeNxD7qEjRdW27OpyTBsiFd8.cnJN0qg./lXHC4qh0cT6e', 'adereti@gmail.com', 'opd', NULL, NULL),
(10, 'Toyin', 'Obasoro', 'toyin', '$2y$10$yQiamuasyTv4NDF1n1kCVe7PPo6lCw3.44UT.0KCR3byMGMYfOZbW', 'blessing32@gmail.com', 'laboratory', NULL, NULL),
(11, 'Tolu', 'Adeyanju', 'tolu', '$2y$10$htyZ2DvHToiz.IPdhA6jS.Xi/KfaHBPkhpZuLRKQT2SJSdE39Nzum', 'tolu@gmail.com', 'pharmacy', NULL, NULL),
(12, 'Bunmi', 'Jolayemi', 'bunmi', '$2y$10$o8bgB8u4EAKLvdWGRWci7O1D3gGkD5ee65IkshD7JW/HCeydcPbaK', 'bunmi@gmail.com', 'account', NULL, NULL),
(13, 'Juwon', 'Ojuekanmi', 'juwon', '$2y$10$MuRqMji8bDgcPJAmgLJL9ONgtxAT3FjOQSeRhgQtNO/m.sqsActzy', 'juwon@gmail.com', 'ipd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vitals`
--

CREATE TABLE `vitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `vital_schedule_id` int(11) NOT NULL,
  `temperature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pulse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respiration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vitals`
--

INSERT INTO `vitals` (`id`, `user_id`, `patient_id`, `vital_schedule_id`, `temperature`, `pulse`, `respiration`, `BP`, `weight`, `height`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '12', '23', '34', '56', '23', '25', '2017-02-17 19:09:23', '2017-02-17 19:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `vitalschedules`
--

CREATE TABLE `vitalschedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vitalschedules`
--

INSERT INTO `vitalschedules` (`id`, `user_id`, `patient_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'seen', '2017-02-17 19:04:45', '2017-02-17 19:04:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashbooks`
--
ALTER TABLE `cashbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashbook_analysises`
--
ALTER TABLE `cashbook_analysises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continuations`
--
ALTER TABLE `continuations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditure_analysises`
--
ALTER TABLE `expenditure_analysises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_requests`
--
ALTER TABLE `lab_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse_notifications`
--
ALTER TABLE `nurse_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_books`
--
ALTER TABLE `purchase_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recieved_stocks`
--
ALTER TABLE `recieved_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitals`
--
ALTER TABLE `vitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitalschedules`
--
ALTER TABLE `vitalschedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cashbooks`
--
ALTER TABLE `cashbooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cashbook_analysises`
--
ALTER TABLE `cashbook_analysises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `continuations`
--
ALTER TABLE `continuations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expenditure_analysises`
--
ALTER TABLE `expenditure_analysises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lab_requests`
--
ALTER TABLE `lab_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `nurse_notifications`
--
ALTER TABLE `nurse_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_books`
--
ALTER TABLE `purchase_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recieved_stocks`
--
ALTER TABLE `recieved_stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `vitals`
--
ALTER TABLE `vitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vitalschedules`
--
ALTER TABLE `vitalschedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
