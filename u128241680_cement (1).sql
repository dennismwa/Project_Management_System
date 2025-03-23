-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2025 at 01:51 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u128241680_cement`
--

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_accounts`
--

CREATE TABLE `system_acc_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `parent_account` int(11) DEFAULT NULL,
  `account_type_id` int(11) NOT NULL,
  `account_detail_type_id` int(11) NOT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `balance_as_of` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `default_account` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `access_token` text DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `plaid_status` tinyint(5) NOT NULL DEFAULT 0 COMMENT '1=>verified, 0=>not verified',
  `plaid_account_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `system_acc_accounts`
--

INSERT INTO `system_acc_accounts` (`id`, `name`, `key_name`, `number`, `parent_account`, `account_type_id`, `account_detail_type_id`, `balance`, `balance_as_of`, `description`, `default_account`, `active`, `access_token`, `account_id`, `plaid_status`, `plaid_account_name`) VALUES
(1, '', 'acc_opening_balance_equity', NULL, NULL, 10, 71, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(2, '', 'acc_accounts_receivable', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(3, '', 'acc_accrued_holiday_payable', NULL, NULL, 9, 61, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(4, '', 'acc_accrued_liabilities', NULL, NULL, 8, 44, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(5, '', 'acc_accrued_non_current_liabilities', NULL, NULL, 9, 62, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(6, '', 'acc_accumulated_depreciation_on_property_plant_and_equipment', NULL, NULL, 4, 22, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(7, '', 'acc_allowance_for_bad_debts', NULL, NULL, 2, 2, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(8, '', 'acc_amortisation_expense', NULL, NULL, 14, 106, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(9, '', 'acc_assets_held_for_sale', NULL, NULL, 5, 32, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(10, '', 'acc_available_for_sale_assets_short_term', NULL, NULL, 2, 3, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(11, '', 'acc_bad_debts', NULL, NULL, 14, 108, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(12, '', 'acc_bank_charges', NULL, NULL, 14, 109, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(13, '', 'acc_billable_expense_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(14, '', 'acc_cash_and_cash_equivalents', NULL, NULL, 3, 15, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(15, '', 'acc_change_in_inventory_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(16, '', 'acc_commissions_and_fees', NULL, NULL, 14, 111, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(17, '', 'acc_cost_of_sales', NULL, NULL, 13, 104, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(18, '', 'acc_deferred_tax_assets', NULL, NULL, 5, 33, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(19, '', 'acc_direct_labour_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(20, '', 'acc_discounts_given_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(21, '', 'acc_dividend_disbursed', NULL, NULL, 10, 69, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(22, '', 'acc_dividend_income', NULL, NULL, 12, 92, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(23, '', 'acc_dividends_payable', NULL, NULL, 8, 48, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(24, '', 'acc_dues_and_subscriptions', NULL, NULL, 14, 113, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(25, '', 'acc_equipment_rental', NULL, NULL, 14, 114, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(26, '', 'acc_equity_in_earnings_of_subsidiaries', NULL, NULL, 10, 70, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(27, '', 'acc_freight_and_delivery_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(28, '', 'acc_goodwill', NULL, NULL, 5, 34, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(29, '', 'acc_income_tax_expense', NULL, NULL, 14, 116, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(30, '', 'acc_income_tax_payable', NULL, NULL, 8, 50, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(31, '', 'acc_insurance_disability', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(32, '', 'acc_insurance_general', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(33, '', 'acc_insurance_liability', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(34, '', 'acc_intangibles', NULL, NULL, 5, 35, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(35, '', 'acc_interest_expense', NULL, NULL, 14, 118, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(36, '', 'acc_interest_income', NULL, NULL, 12, 93, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(37, '', 'acc_inventory', NULL, NULL, 2, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(38, '', 'acc_inventory_asset', NULL, NULL, 2, 5, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(39, '', 'acc_legal_and_professional_fees', NULL, NULL, 14, 119, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(40, '', 'acc_liabilities_related_to_assets_held_for_sale', NULL, NULL, 9, 63, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(41, '', 'acc_long_term_debt', NULL, NULL, 9, 64, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(42, '', 'acc_long_term_investments', NULL, NULL, 5, 38, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(43, '', 'acc_loss_on_discontinued_operations_net_of_tax', NULL, NULL, 14, 120, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(44, '', 'acc_loss_on_disposal_of_assets', NULL, NULL, 12, 94, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(45, '', 'acc_management_compensation', NULL, NULL, 14, 121, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(46, '', 'acc_materials_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(47, '', 'acc_meals_and_entertainment', NULL, NULL, 14, 122, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(48, '', 'acc_office_expenses', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(49, '', 'acc_other_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(50, '', 'acc_other_comprehensive_income', NULL, NULL, 10, 73, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(51, '', 'acc_other_general_and_administrative_expenses', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(52, '', 'acc_other_operating_income_expenses', NULL, NULL, 12, 97, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(53, '', 'acc_other_selling_expenses', NULL, NULL, 14, 125, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(54, '', 'acc_other_type_of_expenses_advertising_expenses', NULL, NULL, 14, 105, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(55, '', 'acc_overhead_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(56, '', 'acc_payroll_clearing', NULL, NULL, 8, 55, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(57, '', 'acc_payroll_expenses', NULL, NULL, 14, 126, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(58, '', 'acc_payroll_liabilities', NULL, NULL, 8, 56, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(59, '', 'acc_prepaid_expenses', NULL, NULL, 2, 11, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(60, '', 'acc_property_plant_and_equipment', NULL, NULL, 4, 26, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(61, '', 'acc_purchases', NULL, NULL, 14, 130, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(62, '', 'acc_reconciliation_discrepancies', NULL, NULL, 15, 139, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(63, '', 'acc_rent_or_lease_payments', NULL, NULL, 14, 127, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(64, '', 'acc_repair_and_maintenance', NULL, NULL, 14, 128, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(65, '', 'acc_retained_earnings', NULL, NULL, 10, 80, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(66, '', 'acc_revenue_general', NULL, NULL, 11, 86, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(67, '', 'acc_sales', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(68, '', 'acc_sales_retail', NULL, NULL, 11, 87, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(69, '', 'acc_sales_wholesale', NULL, NULL, 11, 88, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(70, '', 'acc_sales_of_product_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(71, '', 'acc_share_capital', NULL, NULL, 10, 81, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(72, '', 'acc_shipping_and_delivery_expense', NULL, NULL, 14, 129, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(73, '', 'acc_short_term_debit', NULL, NULL, 8, 54, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(74, '', 'acc_stationery_and_printing', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(75, '', 'acc_subcontractors_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(76, '', 'acc_supplies', NULL, NULL, 14, 130, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(77, '', 'acc_travel_expenses_general_and_admin_expenses', NULL, NULL, 14, 132, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(78, '', 'acc_travel_expenses_selling_expense', NULL, NULL, 14, 133, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(79, '', 'acc_unapplied_cash_payment_income', NULL, NULL, 11, 91, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(80, '', 'acc_uncategorised_asset', NULL, NULL, 2, 10, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(81, '', 'acc_uncategorised_expense', NULL, NULL, 14, 124, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(82, '', 'acc_uncategorised_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(83, '', 'acc_undeposited_funds', NULL, NULL, 2, 13, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(84, '', 'acc_unrealised_loss_on_securities_net_of_tax', NULL, NULL, 12, 99, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(85, '', 'acc_utilities', NULL, NULL, 14, 135, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(86, '', 'acc_wage_expenses', NULL, NULL, 14, 126, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(87, '', 'acc_credit_card', NULL, NULL, 7, 43, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL),
(88, '', 'acc_accounts_payable', NULL, NULL, 6, 42, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_account_history`
--

CREATE TABLE `system_acc_account_history` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `debit` decimal(15,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(15,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `reconcile` int(11) NOT NULL DEFAULT 0,
  `split` int(11) NOT NULL DEFAULT 0,
  `item` int(11) DEFAULT NULL,
  `paid` int(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `payslip_type` varchar(45) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `itemable_id` int(11) DEFAULT NULL,
  `cleared` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_account_type_details`
--

CREATE TABLE `system_acc_account_type_details` (
  `id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `statement_of_cash_flows` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_banking_rules`
--

CREATE TABLE `system_acc_banking_rules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `transaction` varchar(45) DEFAULT NULL,
  `following` varchar(45) DEFAULT NULL,
  `then` varchar(45) DEFAULT NULL,
  `payment_account` int(11) DEFAULT NULL,
  `deposit_to` int(11) DEFAULT NULL,
  `auto_add` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_banking_rule_details`
--

CREATE TABLE `system_acc_banking_rule_details` (
  `id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `subtype` varchar(45) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `subtype_amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_budgets`
--

CREATE TABLE `system_acc_budgets` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `data_source` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_budget_details`
--

CREATE TABLE `system_acc_budget_details` (
  `id` int(11) NOT NULL,
  `budget_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_expense_category_mappings`
--

CREATE TABLE `system_acc_expense_category_mappings` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0,
  `preferred_payment_method` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_item_automatics`
--

CREATE TABLE `system_acc_item_automatics` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `inventory_asset_account` int(11) NOT NULL DEFAULT 0,
  `income_account` int(11) NOT NULL DEFAULT 0,
  `expense_account` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_journal_entries`
--

CREATE TABLE `system_acc_journal_entries` (
  `id` int(11) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `journal_date` date DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_matched_transactions`
--

CREATE TABLE `system_acc_matched_transactions` (
  `id` int(11) NOT NULL,
  `account_history_id` int(11) DEFAULT NULL,
  `history_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `company` int(11) DEFAULT NULL,
  `reconcile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_payment_mode_mappings`
--

CREATE TABLE `system_acc_payment_mode_mappings` (
  `id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0,
  `expense_payment_account` int(11) NOT NULL DEFAULT 0,
  `expense_deposit_to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_plaid_transaction_logs`
--

CREATE TABLE `system_acc_plaid_transaction_logs` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `transaction_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `addedFrom` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_reconciles`
--

CREATE TABLE `system_acc_reconciles` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `beginning_balance` decimal(15,2) NOT NULL,
  `ending_balance` decimal(15,2) NOT NULL,
  `ending_date` date NOT NULL,
  `expense_date` date DEFAULT NULL,
  `service_charge` decimal(15,2) DEFAULT NULL,
  `expense_account` int(11) DEFAULT NULL,
  `income_date` date DEFAULT NULL,
  `interest_earned` decimal(15,2) DEFAULT NULL,
  `income_account` int(11) DEFAULT NULL,
  `finish` int(11) NOT NULL DEFAULT 0,
  `opening_balance` int(11) NOT NULL DEFAULT 0,
  `debits_for_period` decimal(15,2) DEFAULT NULL,
  `credits_for_period` decimal(15,2) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_tax_mappings`
--

CREATE TABLE `system_acc_tax_mappings` (
  `id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT 0,
  `deposit_to` int(11) NOT NULL DEFAULT 0,
  `expense_payment_account` int(11) NOT NULL DEFAULT 0,
  `expense_deposit_to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_transaction_bankings`
--

CREATE TABLE `system_acc_transaction_bankings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `withdrawals` decimal(15,2) NOT NULL DEFAULT 0.00,
  `deposits` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payee` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `transaction_id` varchar(150) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 0 COMMENT '1=>posted, 2=>pending',
  `matched` int(11) NOT NULL DEFAULT 0,
  `reconcile` int(11) NOT NULL DEFAULT 0,
  `adjusted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_acc_transfers`
--

CREATE TABLE `system_acc_transfers` (
  `id` int(11) NOT NULL,
  `transfer_funds_from` int(11) NOT NULL,
  `transfer_funds_to` int(11) NOT NULL,
  `transfer_amount` decimal(15,2) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_activity_logs`
--

CREATE TABLE `system_activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted','bitbucket_notification_received','github_notification_received') NOT NULL,
  `log_type` varchar(30) NOT NULL,
  `log_type_title` mediumtext NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT 0,
  `changes` mediumtext DEFAULT NULL,
  `log_for` varchar(30) NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT 0,
  `log_for2` varchar(30) DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_activity_logs`
--

INSERT INTO `system_activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2025-03-19 04:43:54', 1, 'created', 'task', 'Belt Slippage - Section A', 1, NULL, 'project', 1, '', 0, 0),
(2, '2025-03-19 05:00:47', 1, 'created', 'task', 'Belt Slippage - Section A', 2, NULL, 'project', 1, '', 0, 0),
(3, '2025-03-19 05:03:23', 1, 'created', 'task', 'Inspect Belt Condition', 3, NULL, 'project', 1, '', 0, 0),
(4, '2025-03-19 05:03:29', 1, 'created', 'task', 'Check & Adjust Tension', 4, NULL, 'project', 1, '', 0, 0),
(5, '2025-03-19 05:03:37', 1, 'created', 'task', 'Realign Conveyor System', 5, NULL, 'project', 1, '', 0, 0),
(6, '2025-03-19 05:03:44', 1, 'created', 'task', 'Lubricate Necessary Parts ', 6, NULL, 'project', 1, '', 0, 0),
(7, '2025-03-19 05:03:50', 1, 'created', 'task', 'Test Conveyor & Document Findings ', 7, NULL, 'project', 1, '', 0, 0),
(8, '2025-03-19 05:05:08', 1, 'created', 'task_comment', 'Checked the belt tension, issue persists', 1, NULL, 'project', 1, 'task', 2, 0),
(9, '2025-03-19 06:09:33', 6, 'updated', 'task', 'Test Conveyor & Document Findings ', 7, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 1, '', 0, 0),
(10, '2025-03-19 06:34:13', 6, 'updated', '', '', 2, 'a:1:{s:37:\"System Affected[:5,multi_select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:15:\"Production Line\";}}', '', 0, NULL, NULL, 0),
(11, '2025-03-19 06:36:43', 6, 'created', 'task', 'Routine Equipment Inspection', 8, NULL, 'project', 2, '', 0, 0),
(12, '2025-03-19 06:40:25', 4, 'created', 'task_comment', 'OKay', 2, NULL, 'project', 1, 'task', 2, 0),
(13, '2025-03-19 06:40:34', 4, 'updated', 'task', 'Inspect Belt Condition', 3, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 1, '', 0, 0),
(14, '2025-03-19 08:55:55', 7, 'updated', '', '', 1, 'a:3:{s:30:\"Issue Severity[:1,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"Medium\";}s:32:\"Root Cause[:2,multi_select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"Electrical\";}s:38:\"Expected Resolution Time[:4,date,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"2025-03-20\";}}', '', 0, NULL, NULL, 0),
(15, '2025-03-19 16:32:57', 3, 'updated', '', '', 2, 'a:4:{s:30:\"Issue Severity[:1,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"Medium\";}s:32:\"Root Cause[:2,multi_select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"Mechanical\";}s:26:\"Equipment ID[:3,text,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"50\";}s:38:\"Expected Resolution Time[:4,date,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"2025-03-31\";}}', '', 0, NULL, NULL, 0),
(16, '2025-03-19 16:36:34', 1, 'created', 'task', 'Conveyer Belt 1', 9, NULL, 'general_task', 0, '', 0, 0),
(17, '2025-03-19 16:48:55', 1, 'created', 'task', 'Conveyer Belt Task 1', 10, NULL, 'general_task', 0, '', 0, 0),
(18, '2025-03-19 16:56:06', 1, 'created', 'task', 'Task 1', 11, NULL, 'general_task', 0, '', 0, 0),
(19, '2025-03-20 12:59:00', 1, 'created', 'milestone', 'Phase 1', 1, NULL, 'project', 1, '', 0, 0),
(20, '2025-03-20 12:59:12', 1, 'created', 'milestone', 'Phase 2', 2, NULL, 'project', 1, '', 0, 0),
(21, '2025-03-20 13:01:50', 1, 'created', 'task', 'Phase 1 Task', 12, NULL, 'project', 1, '', 0, 0),
(22, '2025-03-20 13:05:52', 1, 'updated', '', '', 3, 'a:4:{s:30:\"Issue Severity[:1,select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:4:\"High\";}s:32:\"Root Cause[:2,multi_select,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"Electrical\";}s:26:\"Equipment ID[:3,text,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:3:\"042\";}s:38:\"Expected Resolution Time[:4,date,0,0:]\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:10:\"2025-03-21\";}}', '', 0, NULL, NULL, 0),
(23, '2025-03-20 13:08:26', 1, 'created', 'task', 'Fix Generator ', 13, NULL, 'general_task', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_announcements`
--

CREATE TABLE `system_announcements` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `files` text NOT NULL,
  `read_by` mediumtext DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_announcements`
--

INSERT INTO `system_announcements` (`id`, `title`, `description`, `start_date`, `end_date`, `created_by`, `share_with`, `created_at`, `files`, `read_by`, `deleted`) VALUES
(1, 'Scheduled Conveyor Belt Maintenance on March 25', '<p data-start=\"96\" data-end=\"453\">Attention all team members,<br data-start=\"142\" data-end=\"145\">\r\nA scheduled maintenance session for the conveyor belt in Section A will take place on <strong data-start=\"231\" data-end=\"249\">March 25, 2025</strong>, from <strong data-start=\"256\" data-end=\"279\">9:00 AM to 12:00 PM</strong>. During this period, the conveyor system will be temporarily unavailable. Please plan your tasks accordingly and report any urgent issues before the scheduled maintenance.</p><p>\r\n</p><p data-start=\"455\" data-end=\"504\">For any concerns, contact the maintenance team.</p>', '2025-03-19', '2025-03-25', 1, 'all_members', '2025-03-19 05:13:29', 'a:0:{}', '0,6,5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_article_helpful_status`
--

CREATE TABLE `system_article_helpful_status` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `status` enum('yes','no') NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_article_helpful_status`
--

INSERT INTO `system_article_helpful_status` (`id`, `article_id`, `status`, `created_by`, `created_at`, `deleted`) VALUES
(1, 3, 'no', 1, '2025-03-19 07:18:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_attendance`
--

CREATE TABLE `system_attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_attendance`
--

INSERT INTO `system_attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 3, '2025-03-19 03:00:00', '2025-03-19 05:00:00', NULL, '', NULL, NULL, 0),
(2, 'incomplete', 3, '2025-03-19 05:12:05', NULL, NULL, NULL, NULL, NULL, 0),
(3, 'incomplete', 6, '2025-03-19 06:08:58', NULL, NULL, NULL, NULL, NULL, 0),
(4, 'incomplete', 5, '2025-03-19 17:03:56', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_automation_settings`
--

CREATE TABLE `system_automation_settings` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `matching_type` enum('match_any','match_all') NOT NULL,
  `event_name` text NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `related_to` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_automation_settings`
--

INSERT INTO `system_automation_settings` (`id`, `title`, `matching_type`, `event_name`, `conditions`, `actions`, `related_to`, `status`, `deleted`) VALUES
(1, 'Escalate Critical Issues', 'match_all', 'new_ticket_created_by_imap_email', 'a:2:{i:0;a:3:{s:10:\"field_name\";s:5:\"title\";s:8:\"operator\";s:11:\"is_contains\";s:16:\"expected_value_1\";s:6:\"urgent\";}i:1;a:3:{s:10:\"field_name\";s:11:\"description\";s:8:\"operator\";s:11:\"is_contains\";s:16:\"expected_value_1\";s:4:\"high\";}}', 'a:3:{i:0;a:2:{s:6:\"action\";s:14:\"Set: Assign to\";s:12:\"action_value\";s:1:\"6\";}i:1;a:2:{s:6:\"action\";s:11:\"Set: Labels\";s:12:\"action_value\";s:0:\"\";}i:2;a:2:{s:6:\"action\";s:16:\"Set: Ticket type\";s:12:\"action_value\";s:1:\"6\";}}', 'tickets', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_aws_s3_integration_settings`
--

CREATE TABLE `system_aws_s3_integration_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_aws_s3_integration_settings`
--

INSERT INTO `system_aws_s3_integration_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('aws_s3_integration_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_checklist_groups`
--

CREATE TABLE `system_checklist_groups` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `checklists` mediumtext NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_checklist_items`
--

CREATE TABLE `system_checklist_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_checklist_items`
--

INSERT INTO `system_checklist_items` (`id`, `title`, `is_checked`, `task_id`, `sort`, `deleted`) VALUES
(1, 'Inspect Belt Tension', 1, 2, 0, 0),
(2, 'Check Pulley Alignment ', 1, 2, 0, 0),
(3, 'Examine Belt Wear & Tear', 0, 2, 0, 0),
(4, 'Inspect Motor & Drive System', 0, 2, 0, 0),
(5, 'Lubricate Moving Parts', 0, 2, 0, 0),
(6, 'Check Load Distribution', 0, 2, 0, 0),
(7, 'Tighten or Adjust Belt Tension', 0, 2, 0, 0),
(8, 'Test Conveyor Operation', 0, 2, 0, 0),
(9, 'Log Findings & Update Task ', 0, 2, 0, 0),
(10, 'Part 1', 0, 9, 0, 0),
(11, 'Part 2', 0, 9, 0, 0),
(12, 'Part 3', 0, 9, 0, 0),
(13, 'Part 1', 0, 10, 0, 0),
(14, 'part 1', 1, 11, 0, 0),
(15, 'Part 2', 1, 11, 0, 0),
(16, 'Part 3', 1, 11, 0, 0),
(17, 'Check Fuel', 0, 13, 0, 0),
(18, 'Check Connections', 0, 13, 0, 0),
(19, 'Check Wiring', 0, 13, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_checklist_template`
--

CREATE TABLE `system_checklist_template` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_ci_sessions`
--

CREATE TABLE `system_ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_ci_sessions`
--

INSERT INTO `system_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ci_session:fa3d2b313ac601710339110271dce6d6', '154.76.255.126', '2025-03-20 12:39:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343339383b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f627573696e6573732e76696c6c616765696e7465726e6174696f6e616c2e6e65742f696e6465782e7068702f6c6566745f6d656e7573223b757365725f69647c733a313a2231223b),
('ci_session:880b3936efcf4d2b41b05625c872eb39', '154.76.255.126', '2025-03-20 12:34:15', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343035353b),
('ci_session:31de1fd14168d965925278b38f754726', '154.76.255.126', '2025-03-20 12:34:22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343036323b),
('ci_session:301bd43c47947443ca3b6c8751eb26df', '154.76.255.126', '2025-03-20 12:34:32', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343037323b),
('ci_session:cc01185f69aac2f2241b7104d63135d6', '154.76.255.126', '2025-03-20 12:34:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343038333b),
('ci_session:96ba0c7aecfb5281ce6c2455de85cafa', '154.76.255.126', '2025-03-20 12:34:56', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343039363b),
('ci_session:b46d3525015d128c0de8902e301f88d1', '154.76.255.126', '2025-03-20 12:35:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343130363b),
('ci_session:79f112be55deeb274dfdc28dfeaa009a', '154.76.255.126', '2025-03-20 12:36:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343136383b),
('ci_session:44db111632f6972ab264fa9c3219e2b0', '154.76.255.126', '2025-03-20 12:36:35', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343139353b),
('ci_session:416f5bea558e8179760f93a3dcdfa4fc', '154.76.255.126', '2025-03-20 12:36:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343230303b),
('ci_session:0fa191ba05abb0b39787e9aee88bddc6', '154.76.255.126', '2025-03-20 12:45:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343733363b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f627573696e6573732e76696c6c616765696e7465726e6174696f6e616c2e6e65742f696e6465782e7068702f6c6566745f6d656e7573223b757365725f69647c733a313a2231223b),
('ci_session:c3c8b7a68fc17b62dd1d49762602bb79', '154.76.255.126', '2025-03-20 12:39:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343339393b),
('ci_session:9ea30aba958eee833e12c774c8b28202', '154.76.255.126', '2025-03-20 12:40:06', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343430363b),
('ci_session:8ba315b02689fadf5706da744a6f072e', '154.76.255.126', '2025-03-20 12:41:19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343437393b),
('ci_session:3f0255e8df1e7ddfe5f9ed63c6a27c50', '154.76.255.126', '2025-03-20 12:41:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343531313b),
('ci_session:cd93088bed22c9659a90224035692bb7', '154.76.255.126', '2025-03-20 12:44:34', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343637343b),
('ci_session:477fc23ba11bd6377b50e7da99123de1', '154.76.255.126', '2025-03-20 12:52:08', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353132383b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f627573696e6573732e76696c6c616765696e7465726e6174696f6e616c2e6e65742f696e6465782e7068702f506c7567696e73223b757365725f69647c733a313a2231223b),
('ci_session:8e23830e5ef2a127b06bc2568df3677b', '154.76.255.126', '2025-03-20 12:45:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343733383b),
('ci_session:45ad56fc84ac101399027a0ee041558d', '154.76.255.126', '2025-03-20 12:45:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343734313b),
('ci_session:ea200fcd66e34fc564610642e4eacc3e', '154.76.255.126', '2025-03-20 12:46:55', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343831353b),
('ci_session:8d1ddffd83d73ecfa25edfbbc8b361c9', '154.76.255.126', '2025-03-20 12:47:04', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343832343b),
('ci_session:ef70f18cf4f2c5c07db987694ecc4f63', '154.76.255.126', '2025-03-20 12:47:47', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343836373b),
('ci_session:75e134a93789c487fc66cf7f46bd502c', '154.76.255.126', '2025-03-20 12:47:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343837343b),
('ci_session:63923bf3168708da2b45dd78f295f150', '154.76.255.126', '2025-03-20 12:48:20', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343930303b),
('ci_session:79235a4cfed332a88d46359196e2dfbb', '154.76.255.126', '2025-03-20 12:49:02', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437343934313b),
('ci_session:5b2e99297b39a48b5bbc52fac8a53815', '154.76.255.126', '2025-03-20 12:57:41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353436313b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f627573696e6573732e76696c6c616765696e7465726e6174696f6e616c2e6e65742f696e6465782e7068702f70726f6a656374732f766965772f32223b757365725f69647c733a313a2231223b),
('ci_session:c9e7c5b66dd141bec73bbe34517bc951', '154.76.255.126', '2025-03-20 12:52:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353132393b),
('ci_session:7ad6324c6623bfcf1b35b87ee72155ff', '154.76.255.126', '2025-03-20 12:53:43', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353232333b),
('ci_session:29ed209aa7cb84379763808fa79a1a0c', '154.76.255.126', '2025-03-20 12:54:28', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353236383b),
('ci_session:afed5a542a009c6a4c7eb8e5af70129b', '154.76.255.126', '2025-03-20 12:55:58', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353335383b),
('ci_session:6d09372a0618c9148be1eb74c56fc1bb', '154.76.255.126', '2025-03-20 12:56:09', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353336393b),
('ci_session:33143da014d4485f07168afa223601ff', '154.76.255.126', '2025-03-20 13:02:59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353737393b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f627573696e6573732e76696c6c616765696e7465726e6174696f6e616c2e6e65742f696e6465782e7068702f70726f6a656374732f766965772f31223b757365725f69647c733a313a2231223b),
('ci_session:a787becab21fc6384e60bc96a9585023', '154.76.255.126', '2025-03-20 12:57:42', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353436323b),
('ci_session:85129d4f78e5d594210bf2db47775c54', '154.76.255.126', '2025-03-20 12:57:51', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353437313b),
('ci_session:6bca874f96f1e9320bc03dbf2683993c', '154.76.255.126', '2025-03-20 12:58:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353439333b),
('ci_session:0ac4cc9d3e31887d41173b95e2f54bae', '2a02:4780:27:1234::bc', '2025-03-20 13:01:50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353731303b),
('ci_session:5c7721c3dc33326a84f2dfc5f4fc5e67', '154.76.255.126', '2025-03-20 13:45:36', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353737393b5f63695f70726576696f75735f75726c7c733a36363a2268747470733a2f2f627573696e6573732e76696c6c616765696e7465726e6174696f6e616c2e6e65742f696e6465782e7068702f7469636b6574732f766965772f33223b757365725f69647c733a313a2231223b),
('ci_session:71ba4d42617f9e09f6e4fa9693858c33', '154.76.255.126', '2025-03-20 13:03:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353738313b),
('ci_session:c2bb8a5a65c7c449415006547ab18720', '154.76.255.126', '2025-03-20 13:03:17', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353739373b),
('ci_session:119f0a0fea853572413054f2521fda18', '154.76.255.126', '2025-03-20 13:03:30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353831303b),
('ci_session:f9b9ef98e54aaf58b2caaab9bb239b8f', '2a02:4780:27:1234::bc', '2025-03-20 13:05:53', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353935323b),
('ci_session:4126043bc629c30e4431e0d345b4304b', '154.76.255.126', '2025-03-20 13:06:39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437353939393b),
('ci_session:d46f20bdb4d2bf712342df6b3591c321', '154.76.255.126', '2025-03-20 13:07:21', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437363034313b),
('ci_session:da5fc02c6eee1ef26980af1e9ec1a09f', '154.76.255.126', '2025-03-20 13:07:24', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437363034343b),
('ci_session:33bbdba927dfaf538310609a0966b698', '154.76.255.126', '2025-03-20 13:07:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437363034363b),
('ci_session:6d644dd7a33a5a99bd7e299cd6f3b2ea', '2a02:4780:27:1234::bc', '2025-03-20 13:08:26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313734323437363130363b);

-- --------------------------------------------------------

--
-- Table structure for table `system_clients`
--

CREATE TABLE `system_clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `type` enum('organization','person') NOT NULL DEFAULT 'organization',
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `website` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `starred_by` mediumtext NOT NULL,
  `group_ids` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_lead` tinyint(1) NOT NULL DEFAULT 0,
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text NOT NULL,
  `client_migration_date` date DEFAULT NULL,
  `vat_number` text DEFAULT NULL,
  `gst_number` text DEFAULT NULL,
  `stripe_customer_id` text NOT NULL,
  `stripe_card_ending_digit` int(11) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT 0,
  `labels` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_clients`
--

INSERT INTO `system_clients` (`id`, `company_name`, `type`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `group_ids`, `deleted`, `is_lead`, `lead_status_id`, `owner_id`, `created_by`, `sort`, `lead_source_id`, `last_lead_status`, `client_migration_date`, `vat_number`, `gst_number`, `stripe_customer_id`, `stripe_card_ending_digit`, `currency`, `disable_online_payment`, `labels`) VALUES
(1, 'ABC Solutions Ltd.', 'organization', 'Mombasa', 'Mombasa', 'Mombasa', '00100', 'Kenya', '2025-03-19 07:39:11', '', '0758256440', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', NULL, '', '', '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `system_client_groups`
--

CREATE TABLE `system_client_groups` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_company`
--

CREATE TABLE `system_company` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `vat_number` text NOT NULL,
  `gst_number` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `logo` mediumtext NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_company`
--

INSERT INTO `system_company` (`id`, `name`, `address`, `phone`, `email`, `website`, `vat_number`, `gst_number`, `is_default`, `logo`, `deleted`) VALUES
(1, 'Bamburi Cement', 'Nairobi', '0758256440', 'info@zurihub.co.ke', '', '', '', 1, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:51:\"company_1_file67da5982d17b4-Bamburi_Cement_Logo.png\";s:9:\"file_size\";s:5:\"62220\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_contracts`
--

CREATE TABLE `system_contracts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `contract_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_type` enum('before_tax','after_tax') NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') NOT NULL,
  `content` mediumtext NOT NULL,
  `public_key` varchar(10) NOT NULL,
  `accepted_by` int(11) NOT NULL DEFAULT 0,
  `staff_signed_by` int(11) NOT NULL DEFAULT 0,
  `meta_data` text NOT NULL,
  `files` mediumtext NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_contract_items`
--

CREATE TABLE `system_contract_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `contract_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_contract_templates`
--

CREATE TABLE `system_contract_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `template` mediumtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_contract_templates`
--

INSERT INTO `system_contract_templates` (`id`, `title`, `template`, `deleted`) VALUES
(1, 'Template 3.7', '<p>&nbsp;</p>\r\n<table class=\"table\" style=\"background-color: #3d3d3d; color: #ffffff; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center; width: 100%;\">\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<div><span style=\"font-size: 40px;\"><strong>{CONTRACT_TITLE}</strong></span></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">This contract states the terms and conditions that shall govern the contractual agreement between {COMPANY_NAME} (the Service Provider) and {CONTRACT_TO_COMPANY_NAME} (the Client) who agrees to be bound by the terms of the contract.</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">{CONTRACT_ID}</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div>Contract Date: {CONTRACT_DATE}<br>Expiry Date: {CONTRACT_EXPIRY_DATE}</div>\r\n<table style=\"width: 100%; padding-top: 30px; margin-top: 0px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%; padding-left: 0; padding-right: 10px;\">\r\n<p>Client</p>\r\n{CONTRACT_TO_INFO}</td>\r\n<td style=\"width: 50%; padding-left: 10px;\">\r\n<p>Service Provider</p>\r\n{COMPANY_INFO}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">Service Details</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.4239%;\">&nbsp;</td>\r\n<td style=\"width: 14.4239%;\">&nbsp;</td>\r\n<td style=\"width: 14.4239%;\">&nbsp;</td>\r\n<td style=\"width: 14.4239%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.4239%;\">&nbsp;</td>\r\n<td style=\"width: 14.4239%;\">&nbsp;</td>\r\n<td style=\"width: 12.8504%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">The specific scope, timeline, and any additional requirements related to the services shall be detailed in a separate document or statement of work, which shall form an integral part of this contract.</p>\r\n<p>&nbsp;</p>\r\n<p>{CONTRACT_ITEMS}</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">1. Service Policy</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">The Service Policy outlines the terms and conditions governing the provision of services by Service Provider to the Client. It encompasses guidelines regarding service delivery, quality standards, support mechanisms, and dispute resolution procedures. The Service Provider is committed to upholding the highest level of professionalism, responsiveness, and customer satisfaction in delivering the agreed upon services.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Any deviations from the Service Policy shall be communicated promptly and resolved in a timely manner to ensure seamless collaboration and adherence to the mutual objectives outlined in the contract.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">2. Delivery</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">The Service Provider will commence delivery of services upon receipt of a signed contract and any necessary initial payments as specified. Delivery timelines and milestones will be outlined in the project schedule or statement of work provided to the Client. The Service Provider will make reasonable efforts to meet agreed-upon deadlines and milestones, keeping the Client informed of any delays or changes to the delivery schedule. Delivery methods may vary depending on the nature of the services and may include in-person meetings, electronic communication, or physical shipment of goods.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Upon completion of the services, the Client will be provided with deliverables as outlined in the project scope or statement of work, with any necessary documentation or training materials included as specified.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">3. Intellectual property rights</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">All intellectual property rights, including but not limited to copyrights, patents, trademarks, and trade secrets, associated with the services provided under this contract shall remain the exclusive property of the originating party unless otherwise agreed upon in writing. The Service Provider retains ownership of any proprietary methodologies, technologies, or materials utilized in delivering the services, and the Client agrees not to reproduce, distribute, or disclose such intellectual property without prior written consent.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Any intellectual property created or developed during the course of providing the services shall be jointly owned by both parties unless otherwise specified in a separate agreement. Any use or exploitation of intellectual property rights beyond the scope of this contract requires the express written consent of the owning party.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">4. Confidentiality</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">Both parties agree to maintain strict confidentiality regarding any proprietary or sensitive information disclosed during the course of this contract. This includes but is not limited to trade secrets, business strategies, financial information, and client data. The Service Provider shall take all necessary precautions to prevent unauthorized access or disclosure of confidential information and shall only share such information with authorized personnel directly involved in fulfilling the obligations of this contract.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">The Client agrees not to disclose any confidential information obtained from the Service Provider to any third parties without prior written consent. This confidentiality obligation shall survive the termination of this contract and continue indefinitely thereafter.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">5. Support</div>\r\n<table style=\"margin-top: 10px; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">The Service Provider agrees to provide reasonable support and assistance to the Client during the term of this contract. Support may include but is not limited to troubleshooting, technical assistance, and guidance related to the services provided. The Service Provider will make commercially reasonable efforts to respond promptly to inquiries and requests for support from the Client, within the parameters specified in the service level agreement (SLA) or support agreement. Support will be provided during normal business hours unless otherwise agreed upon. Any additional support beyond the scope outlined in this contract may be subject to additional fees or terms as mutually agreed upon by both parties.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">{CONTRACT_NOTE}</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_custom_fields`
--

CREATE TABLE `system_custom_fields` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `title_language_key` text NOT NULL,
  `placeholder_language_key` text NOT NULL,
  `show_in_embedded_form` tinyint(4) NOT NULL DEFAULT 0,
  `placeholder` text NOT NULL,
  `example_variable_name` text DEFAULT NULL,
  `options` mediumtext NOT NULL,
  `field_type` varchar(50) NOT NULL,
  `related_to` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `add_filter` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_contract` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_order` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_proposal` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT 0,
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT 0,
  `disable_editing_by_clients` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_kanban_card` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_subscription` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_custom_fields`
--

INSERT INTO `system_custom_fields` (`id`, `title`, `title_language_key`, `placeholder_language_key`, `show_in_embedded_form`, `placeholder`, `example_variable_name`, `options`, `field_type`, `related_to`, `sort`, `required`, `add_filter`, `show_in_table`, `show_in_invoice`, `show_in_estimate`, `show_in_contract`, `show_in_order`, `show_in_proposal`, `visible_to_admins_only`, `hide_from_clients`, `disable_editing_by_clients`, `show_on_kanban_card`, `deleted`, `show_in_subscription`) VALUES
(1, 'Issue Severity', '', '', 0, 'Severity', 'ISSUE_SEVERITY', 'Low,Medium,High,Critical', 'select', 'tickets', 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Root Cause', '', '', 0, 'Root Cause', 'ROOT_CAUSE', 'Electrical,Mechanical,Software,Human Error', 'multi_select', 'tickets', 2, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Equipment ID', '', '', 0, 'Equipment ID', 'EQUIPMENT_ID', '', 'text', 'tickets', 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Expected Resolution Time', '', '', 0, 'Select Date', 'RESOLUTION_TIME', '', 'date', 'tickets', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'System Affected', '', '', 0, '', '', 'Production Line,Database,Application,Network', 'multi_select', 'projects', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Troubleshooting Steps Performed', '', '', 0, 'List of steps taken to resolve the issue', '', '', 'textarea', 'tasks', 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_custom_field_values`
--

CREATE TABLE `system_custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_custom_field_values`
--

INSERT INTO `system_custom_field_values` (`id`, `related_to_type`, `related_to_id`, `custom_field_id`, `value`, `deleted`) VALUES
(1, 'projects', 2, 5, 'Production Line', 0),
(2, 'tasks', 8, 6, 'Visual Inspection – Check for wear, leaks, or loose connections.\r\nOperational Test – Run the equipment to verify normal functioning.\r\nDiagnostic Check – Use monitoring tools to detect anomalies.\r\nComponent Testing – Test motors, sensors, and electrical connections.\r\nAdjustments/Repairs – Tighten, replace, or repair any faulty components.\r\nFinal Verification – Ensure equipment is running as expected', 0),
(3, 'tickets', 1, 1, 'Medium', 0),
(4, 'tickets', 1, 2, 'Electrical', 0),
(5, 'tickets', 1, 3, '', 0),
(6, 'tickets', 1, 4, '2025-03-20', 0),
(7, 'tickets', 2, 1, 'Medium', 0),
(8, 'tickets', 2, 2, 'Mechanical', 0),
(9, 'tickets', 2, 3, '50', 0),
(10, 'tickets', 2, 4, '2025-03-31', 0),
(11, 'tasks', 9, 6, 'Step 1\r\nStep 1Step 1\r\n', 0),
(12, 'tasks', 10, 6, '', 0),
(13, 'tasks', 11, 6, '', 0),
(14, 'projects', 1, 5, '', 0),
(15, 'tasks', 12, 6, '', 0),
(16, 'tickets', 3, 1, 'High', 0),
(17, 'tickets', 3, 2, 'Electrical', 0),
(18, 'tickets', 3, 3, '042', 0),
(19, 'tickets', 3, 4, '2025-03-21', 0),
(20, 'tasks', 13, 6, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_custom_widgets`
--

CREATE TABLE `system_custom_widgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT 0,
  `show_border` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_dashboards`
--

CREATE TABLE `system_dashboards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `color` varchar(15) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_dashboards`
--

INSERT INTO `system_dashboards` (`id`, `user_id`, `title`, `data`, `color`, `sort`, `deleted`) VALUES
(1, 1, 'Project Monitoring Dashboard', 'a:7:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:4:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:12:\"clock_in_out\";s:5:\"title\";s:12:\"Clock in-out\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"my_open_tasks\";s:5:\"title\";s:13:\"My open tasks\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"open_projects\";s:5:\"title\";s:13:\"Open Projects\";}}i:3;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:18:\"total_hours_worked\";s:5:\"title\";s:18:\"Total hours worked\";}}}s:5:\"ratio\";s:7:\"3-3-3-3\";}i:1;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:2:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:17:\"projects_overview\";s:5:\"title\";s:17:\"Projects Overview\";}i:1;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"next_reminder\";s:5:\"title\";s:13:\"Next reminder\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"ticket_status\";s:5:\"title\";s:13:\"Ticket Status\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:18:\"all_tasks_overview\";s:5:\"title\";s:18:\"All Tasks Overview\";}}}s:5:\"ratio\";s:5:\"4-4-4\";}i:2;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:16:\"project_timeline\";s:5:\"title\";s:16:\"Project Timeline\";}}i:1;a:3:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:21:\"team_members_overview\";s:5:\"title\";s:21:\"Team Members Overview\";}i:1;O:8:\"stdClass\":2:{s:6:\"widget\";s:18:\"open_projects_list\";s:5:\"title\";s:18:\"Open Projects List\";}i:2;O:8:\"stdClass\":2:{s:6:\"widget\";s:11:\"new_tickets\";s:5:\"title\";s:11:\"New Tickets\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:9:\"todo_list\";s:5:\"title\";s:9:\"Todo list\";}}}s:5:\"ratio\";s:5:\"4-4-4\";}i:3;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:19:\"total_project_hours\";s:5:\"title\";s:19:\"Total project hours\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:9:\"new_posts\";s:5:\"title\";s:9:\"New posts\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:14:\"closed_tickets\";s:5:\"title\";s:14:\"Closed Tickets\";}}}s:5:\"ratio\";s:5:\"4-4-4\";}i:4;O:8:\"stdClass\":2:{s:7:\"columns\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"my_tasks_list\";s:5:\"title\";s:13:\"My tasks list\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:11:\"sticky_note\";s:5:\"title\";s:21:\"Sticky Note (Private)\";}}}s:5:\"ratio\";s:3:\"8-4\";}i:5;O:8:\"stdClass\":2:{s:7:\"columns\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:19:\"timecard_statistics\";s:5:\"title\";s:20:\"Time Card Statistics\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:24:\"estimate_sent_statistics\";s:5:\"title\";s:24:\"Estimate sent statistics\";}}}s:5:\"ratio\";s:3:\"6-6\";}i:6;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:25:\"all_timesheets_statistics\";s:5:\"title\";s:25:\"All timesheets statistics\";}}}s:5:\"ratio\";s:2:\"12\";}}', '#34495e', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_email_templates`
--

CREATE TABLE `system_email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `email_subject` text NOT NULL,
  `default_message` mediumtext NOT NULL,
  `custom_message` mediumtext DEFAULT NULL,
  `template_type` enum('default','custom') NOT NULL DEFAULT 'default',
  `language` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_email_templates`
--

INSERT INTO `system_email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `template_type`, `language`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME} {USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 'default', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 'default', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don not want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 'default', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>INVOICE</h1>\n<h3>&nbsp;{INVOICE_FULL_ID}</h3>\n</div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello {CONTACT_FIRST_NAME},</p>\n<p>Thank you for your business cooperation.</p>\n<p>Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</p>\n<p>&nbsp;</p>\n<p><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">Show Invoice</a></p>\n<p>&nbsp;</p>\n<p>Invoice balance due is {BALANCE_DUE}</p>\n<p>Please pay this invoice within {DUE_DATE}.&nbsp;</p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', '', 'default', '', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don not want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 'default', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 'default', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 'default', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 'default', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 'default', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 'default', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>Payment Confirmation</h1>\n</div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello,<br>We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_FULL_ID} <br>Thank you for your business cooperation.</p>\n<p>&nbsp;</p>\n<p><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">View Invoice</a></p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(14, 'invoice_due_reminder_before_due_date', 'Invoice due reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>Invoice Due Reminder</h1></div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello,<br>We would like to remind you that invoice {INVOICE_FULL_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p>\n<p><span>If you have already submitted the payment, please ignore this email.</span></p><p><span><br></span></p>\n<p><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">Show Invoice</a></p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(15, 'invoice_overdue_reminder', 'Invoice overdue reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>Invoice Overdue Reminder</h1></div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_FULL_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p>\n<p><span>If you have already submitted the payment, please ignore this email.</span></p><p><span><br></span></p>\n<p><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">Show Invoice</a></p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(16, 'recurring_invoice_creation_reminder', 'Recurring invoice creation reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>Invoice Creation Reminder</h1></div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.&nbsp;</p>\n<p><span><br></span></p>\n<p><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">Show Invoice</a></p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(17, 'project_task_deadline_reminder', 'Project task deadline reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">This is to remind you that there are some tasks which deadline is {DEADLINE}.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{TASKS_LIST}</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 'default', '', 0),
(18, 'estimate_sent', 'New estimate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is the estimate. Please check the attachment.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(19, 'estimate_request_received', 'Estimate request received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE REQUEST #{ESTIMATE_REQUEST_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"><span style=\"background-color: transparent;\">A new estimate request has been received from {CONTACT_FIRST_NAME}.</span><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_REQUEST_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate Request</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(20, 'estimate_rejected', 'Estimate rejected', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been rejected.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(21, 'estimate_accepted', 'Estimate accepted', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been accepted.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(22, 'new_client_greetings', 'Welcome!', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Welcome to {COMPANY_NAME}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Thank you for creating your account. </span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">We are happy to see you here.<br></span></p><hr><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {CONTACT_LOGIN_EMAIL}</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{CONTACT_LOGIN_PASSWORD}</span></p><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 'default', '', 0),
(23, 'verify_email', 'Please verify your email', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account verification</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\"><p style=\"font-size: 14px;\">To initiate the signup process, please click on the following link:<br></p><p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{VERIFY_EMAIL_URL}\" target=\"_blank\">Verify Email</a></span></p>  <p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"font-size: 14px;\">If you did not initiate the request, you do not need to take any further action and can safely disregard this email.</span></p><p style=\"\"><span style=\"font-size: 14px;\"><br></span></p><p style=\"font-size: 14px;\">{SIGNATURE}</p></div></div></div>', '', 'default', '', 0),
(24, 'new_order_received', 'New order received', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">A new order has been received from&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">{CONTACT_FIRST_NAME} and is attached here.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 'default', '', 0),
(25, 'order_status_updated', 'Order status updated', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your order&nbsp;</span><font color=\"#555555\"><span style=\"font-size: 14px;\">has been updated&nbsp;</span></font><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 'default', '', 0),
(26, 'proposal_sent', 'Proposal sent', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>PROPOSAL #{PROPOSAL_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is a proposal for you.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{PROPOSAL_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Proposal</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> </p><p>Public URL: {PUBLIC_PROPOSAL_URL}</p><p><br></p><p>{SIGNATURE} </p></td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0);
INSERT INTO `system_email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `template_type`, `language`, `deleted`) VALUES
(27, 'project_completed', 'Project completed', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Project #{PROJECT_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Project #{PROJECT_ID}&nbsp;has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">Title:&nbsp;</span>{PROJECT_TITLE}</p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROJECT_URL}\" target=\"_blank\">Show Project</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"color: rgb(78, 94, 106); font-size: 13.5px;\">{SIGNATURE}</span><br></span></p>   </div>  </div> </div>', '', 'default', '', 0),
(28, 'proposal_accepted', 'Proposal accepted', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>PROPOSAL #{PROPOSAL_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The proposal #{PROPOSAL_ID} has been accepted.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROPOSAL_URL}\" target=\"_blank\">Show Proposal</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 'default', '', 0),
(29, 'proposal_rejected', 'Proposal rejected', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>PROPOSAL #{PROPOSAL_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The proposal #{PROPOSAL_ID} has been rejected.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROPOSAL_URL}\" target=\"_blank\">Show Proposal</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 'default', '', 0),
(30, 'estimate_commented', 'Estimate  #{ESTIMATE_ID}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Estimate #{ESTIMATE_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{COMMENT_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ESTIMATE_URL}\" target=\"_blank\">Show Estimate</a></span></p></div></div></div>', '', 'default', '', 0),
(31, 'contract_sent', 'Contract sent', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>CONTRACT #{CONTRACT_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is a contract for you.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{CONTRACT_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Contract</a></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>Public URL: {PUBLIC_CONTRACT_URL}<br></p><p><br></p><p>{SIGNATURE}<br></p></td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(32, 'contract_accepted', 'Contract accepted', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>CONTRACT #{CONTRACT_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The contract #{CONTRACT_ID} has been accepted.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{CONTRACT_URL}\" target=\"_blank\">Show Contract</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 'default', '', 0),
(33, 'contract_rejected', 'Contract rejected', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>CONTRACT #{CONTRACT_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">The contract #{CONTRACT_ID} has been rejected.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{CONTRACT_URL}\" target=\"_blank\">Show Contract</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 'default', '', 0),
(34, 'invoice_manual_payment_added', 'Manual payment added', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>Payment Added</h1></div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello,<br>A new payment has been added to {INVOICE_FULL_ID}.&nbsp;</p>\n<p>Payment amount: {PAYMENT_AMOUNT}&nbsp;</p>\n<p><span><br></span></p>\n<p><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">Show Invoice</a></p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(35, 'subscription_request_sent', 'New subscription request', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h2>{SUBSCRIPTION_TITLE}</h2></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px;\">You have a new subscription request. Please click here to see the subscription.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{SUBSCRIPTION_URL}\" target=\"_blank\">Show Subscription</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 'default', '', 0),
(36, 'announcement_created', '{ANNOUNCEMENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Announcement: {ANNOUNCEMENT_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">A new announcement has been created by {USER_NAME}.</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ANNOUNCEMENT_URL}\" target=\"_blank\">Show Announcement</a></span></p></div></div></div>', '', 'default', '', 0),
(37, 'task_general', '{TASK_TITLE} (Task #{TASK_ID})', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{EVENT_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>Task:</b> #</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{TASK_ID} -&nbsp;</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{TASK_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>{CONTEXT_LABEL}:</b>&nbsp;</span>{CONTEXT_TITLE}</p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TASK_URL}\" target=\"_blank\">Show Task&nbsp;</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"color: rgb(78, 94, 106); font-size: 13.5px;\">{SIGNATURE}</span><br></span></p>   </div>  </div> </div>', '', 'default', '', 0),
(38, 'task_assigned', '{TASK_TITLE} (Task #{TASK_ID})', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Task assigned</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>{USER_NAME}</b>  Assigned a task to <b>{ASSIGNED_TO_USER_NAME}</b></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>Task:</b> #</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{TASK_ID} -&nbsp;</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{TASK_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>{CONTEXT_LABEL}:</b>&nbsp;</span>{CONTEXT_TITLE}</p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TASK_URL}\" target=\"_blank\">Show Task&nbsp;</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"color: rgb(78, 94, 106); font-size: 13.5px;\">{SIGNATURE}</span><br></span></p>   </div>  </div> </div>', '', 'default', '', 0),
(39, 'task_commented', '{TASK_TITLE} (Task #{TASK_ID})', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Task commented</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>{USER_NAME}</b>  Commented on a task.</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>Task:</b> #</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{TASK_ID} -&nbsp;</span><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{TASK_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><b>{CONTEXT_LABEL}:</b>&nbsp;</span>{CONTEXT_TITLE}</p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TASK_URL}\" target=\"_blank\">Show Task&nbsp;</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"color: rgb(78, 94, 106); font-size: 13.5px;\">{SIGNATURE}</span><br></span></p>   </div>  </div> </div>', '', 'default', '', 0),
(40, 'subscription_started', 'Started a subscription', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h2>{SUBSCRIPTION_TITLE}</h2></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px;\">A new subscription has been started.&nbsp;</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{SUBSCRIPTION_URL}\" target=\"_blank\">Show Subscription</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 'default', '', 0),
(41, 'subscription_invoice_created_via_cron_job', 'New invoice generated from subscription', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the subscription {SUBSCRIPTION_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 'default', '', 0),
(42, 'send_credit_note', 'New credit note', '<div style=\"background-color: #eeeeef; padding: 50px 0;\">\n<div style=\"max-width: 640px; margin: 0 auto;\">\n<div style=\"color: #fff; text-align: center; background-color: #33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">\n<h1>CREDIT NOTE #{CREDIT_NOTE_FULL_ID}</h1></div>\n<div style=\"padding: 20px; background-color: #ffffff; font-size: 14px;\">\n<p>Hello {CONTACT_FIRST_NAME},&nbsp;</p>\n<p>Your invoice {INVOICE_FULL_ID} has been credited.&nbsp;</p>\n<p>Here is the credit note.&nbsp;&nbsp;</p>\n<p><span><br></span></p>\n<p><span style=\"color: #555555; font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{CREDIT_NOTE_URL}\" target=\"_blank\" rel=\"noopener\" aria-invalid=\"true\">Show Credit Note</a></span></p>\n<p>&nbsp;</p>\n<p>{SIGNATURE}</p>\n</div>\n</div>\n</div>', '', 'default', '', 0),
(43, 'subscription_cancelled', 'Subscription cancelled', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h2>{SUBSCRIPTION_TITLE}</h2></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The subscription {SUBSCRIPTION_TITLE} has been cancelled by {CANCELLED_BY}.</span></font><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{SUBSCRIPTION_URL}\" target=\"_blank\">Show Subscription</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 'default', '', 0),
(44, 'proposal_commented', 'Proposal #{PROPOSAL_ID}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Proposal #{PROPOSAL_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{COMMENT_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{PROPOSAL_URL}\" target=\"_blank\">Show Proposal</a></span></p></div></div></div>', '', 'default', '', 0),
(45, 'subscription_renewal_reminder', 'Subscription Renewal Reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody> <tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody> <tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Subscription Renewal Reminder</h2> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody> <tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">This is a reminder that your subscription:&nbsp;<b>{SUBSCRIPTION_TITLE}</b></span></font><font color=\"#606060\" face=\"Arial\" style=\"font-weight: var(--bs-body-font-weight);\"><span style=\"font-size: 15px;\">&nbsp;</span></font><font color=\"#606060\" face=\"Arial\" style=\"font-weight: var(--bs-body-font-weight);\"><span style=\"font-size: 15px;\">will renew soon. Please ensure that your payment details are up to date to avoid any interruptions in your service.</span></font></p> <p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\"><br></span></font></p> <p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">If you have already renewed your subscription, please ignore this email. </span></font></p> <p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">Thank you for your continued support.</span></font><br></p> </td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <a href=\"{SUBSCRIPTION_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Subscription</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p> </td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 'default', '', 0),
(46, 'purchase_order_to_contact', 'Purchase Order', '<span style=\\\"font-size: 12pt;\\\"> Hello !</span><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Purchase Order information with the number {PO_NUMBER} </span><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: <a href=\"{PO_LINK}\">PO link</a>\r\n  </span><br /><br />', NULL, 'default', '', 0),
(47, 'purchase_quotation_to_contact', 'Purchase Quotation', '<span style=\\\"font-size: 12pt;\\\"> Hello  </span><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Purchase Quotation information with the number {PQ_NUMBER} </span><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: <a href=\"{PQ_LINK}\">Quotation</a> <br/ >\r\n  </span><br /><br />', NULL, 'default', '', 0),
(48, 'purchase_request_to_contact', 'Purchase Request', '<span style=\\\"font-size: 12pt;\\\"> Hello !</span><br /><span style=\\\"font-size: 12pt;\\\"> We would like to share with you a link of Purchase Request information with the number {PR_NUMBER} </span><br /><span style=\\\"font-size: 12pt;\\\"><br />Please click on the link to view information: <a href=\"{PR_LINK}\">Purchase Request</a><br/ >\r\n  </span><br /><br />', NULL, 'default', '', 0),
(49, 'zoom_integration_new_meeting_scheduled', 'New meeting scheduled!', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>{MEETING_CREATED_BY} created a new meeting</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">You are requested to join this meeting. The details are given below:</p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Topic: {MEETING_TOPIC}</p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Meeting time: {MEETING_TIME}</p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Join URL:&nbsp;<a href=\"{JOIN_URL}\" target=\"_blank\">{JOIN_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 'default', '', 0),
(50, 'zoom_integration_meeting_updated', 'Meeting updated!', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Meeting updated!</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">A meeting of you has been updated. This is the new details:</span><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Topic: {MEETING_TOPIC}</p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Meeting time: {MEETING_TIME}</p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Join URL:&nbsp;<a href=\"{JOIN_URL}\" target=\"_blank\">{JOIN_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 'default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_estimates`
--

CREATE TABLE `system_estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT 0,
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_type` enum('before_tax','after_tax') NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `accepted_by` int(11) NOT NULL DEFAULT 0,
  `meta_data` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `signature` text NOT NULL,
  `public_key` text NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_estimate_comments`
--

CREATE TABLE `system_estimate_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `estimate_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_estimate_forms`
--

CREATE TABLE `system_estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `enable_attachment` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_estimate_forms`
--

INSERT INTO `system_estimate_forms` (`id`, `title`, `description`, `status`, `assigned_to`, `public`, `enable_attachment`, `deleted`) VALUES
(1, 'Conveyor Belt Repair Estimate', 'This estimate form is for assessing repair and replacement costs for conveyor belt system malfunctions. Clients can submit requests for an estimate based on their equipment issues.', 'active', 4, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_estimate_items`
--

CREATE TABLE `system_estimate_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `estimate_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_estimate_requests`
--

CREATE TABLE `system_estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') NOT NULL DEFAULT 'new',
  `files` mediumtext NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_events`
--

CREATE TABLE `system_events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `labels` text NOT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `editable_google_event` tinyint(1) NOT NULL DEFAULT 0,
  `google_event_id` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `proposal_id` int(11) NOT NULL DEFAULT 0,
  `contract_id` int(11) NOT NULL DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `estimate_id` int(11) NOT NULL DEFAULT 0,
  `related_user_id` int(11) NOT NULL DEFAULT 0,
  `next_recurring_time` datetime DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `snoozing_time` datetime DEFAULT NULL,
  `reminder_status` enum('new','shown','done') NOT NULL DEFAULT 'new',
  `type` enum('event','reminder') NOT NULL DEFAULT 'event',
  `color` varchar(15) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext NOT NULL,
  `confirmed_by` text NOT NULL,
  `rejected_by` text NOT NULL,
  `files` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_events`
--

INSERT INTO `system_events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `editable_google_event`, `google_event_id`, `deleted`, `lead_id`, `ticket_id`, `project_id`, `task_id`, `proposal_id`, `contract_id`, `subscription_id`, `invoice_id`, `order_id`, `estimate_id`, `related_user_id`, `next_recurring_time`, `no_of_cycles_completed`, `snoozing_time`, `reminder_status`, `type`, `color`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `last_start_date`, `recurring_dates`, `confirmed_by`, `rejected_by`, `files`) VALUES
(1, 'Check Belt Tension', '', '2025-03-19', NULL, '13:00:00', '00:00:00', 1, '', 0, '', '', 0, '', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 'new', 'reminder', '', 1, 1, 'days', 5, '2025-03-24', '2025-03-20,2025-03-21,2025-03-22,2025-03-23,2025-03-24,', '0', '0', 'a:0:{}'),
(2, 'Factory Equipment Maintenance Seminar', 'A training session for all maintenance staff to improve troubleshooting skills, understand new equipment updates, and enhance efficiency in handling technical issues.', '2025-03-19', '2025-03-29', '10:00:00', '12:00:00', 6, 'Nairobi', 0, '23,20', 'all', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 'new', 'event', '#2d9cdb', 0, 1, 'months', 0, '0000-00-00', '', '0', '0', 'a:0:{}'),
(3, 'Check Conveyer Belt', '', '2025-03-19', NULL, '06:00:00', '00:00:00', 1, '', 0, '', '', 0, '', 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 'new', 'reminder', '', 1, 7, 'days', 7, '2025-05-07', '2025-03-26,2025-04-02,2025-04-09,2025-04-16,2025-04-23,2025-04-30,2025-05-07,', '0', '0', 'a:0:{}'),
(4, 'Convey Belt Check', '', '2025-03-19', NULL, '20:00:00', '00:00:00', 1, '', 0, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, '2025-03-19 20:05:00', 'new', 'reminder', '', 1, 1, 'days', 7, '2025-03-26', '2025-03-20,2025-03-21,2025-03-22,2025-03-23,2025-03-24,2025-03-25,2025-03-26,', '0', '0', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `system_event_tracker`
--

CREATE TABLE `system_event_tracker` (
  `id` int(11) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `context_id` int(11) NOT NULL,
  `read_count` int(11) DEFAULT NULL,
  `status` enum('new','read') DEFAULT 'new',
  `last_read_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `logs` text DEFAULT NULL,
  `random_id` varchar(10) NOT NULL,
  `deleted` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_expenses`
--

CREATE TABLE `system_expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `amount` double NOT NULL,
  `files` mediumtext NOT NULL,
  `title` text NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recurring_expense_id` tinyint(4) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_expense_categories`
--

CREATE TABLE `system_expense_categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_expense_categories`
--

INSERT INTO `system_expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `task_comment_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_file_category`
--

CREATE TABLE `system_file_category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `type` enum('project') NOT NULL DEFAULT 'project',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_folders`
--

CREATE TABLE `system_folders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `folder_id` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `context` varchar(255) NOT NULL,
  `context_id` int(11) NOT NULL,
  `starred_by` mediumtext NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_folders`
--

INSERT INTO `system_folders` (`id`, `title`, `folder_id`, `parent_id`, `level`, `created_by`, `created_at`, `permissions`, `context`, `context_id`, `starred_by`, `deleted`) VALUES
(1, 'Project Files ', '862eda6-764da-849b-81845-cwxPngeUmLb', 0, '', 1, '2025-03-19 07:05:11', '', 'file_manager', 0, '', 0),
(2, 'Issue Reports', '862eda6-764da-849b-81845-kpdfNvewllP', 0, '', 1, '2025-03-19 07:05:22', '', 'file_manager', 0, '', 0),
(3, 'Design Assets', '862eda6-764da-849b-81845-tluPKWlpuvW', 0, '', 1, '2025-03-19 07:05:30', '', 'file_manager', 0, '', 0),
(4, 'Legal & Compliance', '862eda6-764da-849b-81845-WLCwEGJCGke', 0, '', 1, '2025-03-19 07:05:42', '', 'file_manager', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_general_files`
--

CREATE TABLE `system_general_files` (
  `id` int(11) NOT NULL,
  `file_name` text NOT NULL,
  `file_id` text DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `uploaded_by` int(11) NOT NULL,
  `folder_id` int(11) DEFAULT 0,
  `context` varchar(100) NOT NULL,
  `context_id` int(11) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_goods_delivery`
--

CREATE TABLE `system_goods_delivery` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_type` int(11) DEFAULT NULL COMMENT 'type goods delivery',
  `rel_document` int(11) DEFAULT NULL COMMENT 'document id of goods delivery',
  `customer_code` text DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `to_` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL COMMENT 'the reason delivery',
  `staff_id` int(11) DEFAULT NULL COMMENT 'salesman',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_delivery_code` varchar(100) DEFAULT NULL,
  `approval` int(11) DEFAULT 0 COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT 0.00,
  `warehouse_id` int(11) DEFAULT NULL,
  `total_discount` decimal(15,2) DEFAULT 0.00,
  `after_discount` decimal(15,2) DEFAULT 0.00,
  `invoice_id` varchar(100) DEFAULT NULL,
  `project` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL,
  `invoice_no` text DEFAULT NULL,
  `pr_order_id` int(11) DEFAULT NULL,
  `type_of_delivery` varchar(100) DEFAULT 'total',
  `additional_discount` decimal(15,2) DEFAULT 0.00,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `delivery_status` varchar(100) DEFAULT 'ready_for_packing',
  `shipping_fee` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_goods_delivery_detail`
--

CREATE TABLE `system_goods_delivery_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_delivery_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `warehouse_id` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `discount_money` varchar(100) DEFAULT NULL,
  `available_quantity` varchar(100) DEFAULT NULL,
  `tax_id` varchar(100) DEFAULT NULL,
  `total_after_discount` varchar(100) DEFAULT NULL,
  `expiry_date` text DEFAULT NULL,
  `lot_number` text DEFAULT NULL,
  `guarantee_period` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `packing_qty` decimal(15,2) DEFAULT 0.00,
  `total_money` decimal(15,2) DEFAULT 0.00,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_goods_delivery_invoices_pr_orders`
--

CREATE TABLE `system_goods_delivery_invoices_pr_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_id` int(11) DEFAULT NULL COMMENT 'goods_delivery_id',
  `rel_type` int(11) DEFAULT NULL COMMENT 'invoice_id or purchase order id',
  `type` varchar(100) DEFAULT NULL COMMENT 'invoice,  purchase_orders'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_goods_receipt`
--

CREATE TABLE `system_goods_receipt` (
  `id` int(11) UNSIGNED NOT NULL,
  `supplier_code` varchar(100) DEFAULT NULL,
  `supplier_name` text DEFAULT NULL,
  `deliver_name` text DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pr_order_id` int(11) DEFAULT NULL COMMENT 'code puchase request agree',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_receipt_code` varchar(100) DEFAULT NULL,
  `total_tax_money` decimal(15,2) DEFAULT 0.00,
  `total_goods_money` decimal(15,2) DEFAULT 0.00,
  `value_of_inventory` decimal(15,2) DEFAULT 0.00,
  `total_money` decimal(15,2) DEFAULT 0.00 COMMENT 'total_money = total_tax_money +total_goods_money ',
  `approval` int(11) DEFAULT 0,
  `addedfrom` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `project` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `invoice_no` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_goods_receipt_detail`
--

CREATE TABLE `system_goods_receipt_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_receipt_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `warehouse_id` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT 0.00,
  `tax` varchar(100) DEFAULT NULL,
  `tax_money` varchar(100) DEFAULT NULL,
  `goods_money` decimal(15,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT 0.00,
  `discount_money` decimal(15,2) DEFAULT 0.00,
  `lot_number` varchar(100) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `tax_name` text DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_goods_transaction_detail`
--

CREATE TABLE `system_goods_transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_receipt_id` int(11) DEFAULT NULL COMMENT 'id_goods_receipt_id or goods_delivery_id',
  `goods_id` int(11) NOT NULL COMMENT ' is id commodity',
  `quantity` varchar(100) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `commodity_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1:Goods receipt note 2:Goods delivery note',
  `old_quantity` varchar(100) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `expiry_date` text DEFAULT NULL,
  `lot_number` text DEFAULT NULL,
  `from_stock_name` int(11) DEFAULT NULL,
  `to_stock_name` int(11) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_google_meet_integration_settings`
--

CREATE TABLE `system_google_meet_integration_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_google_meet_integration_settings`
--

INSERT INTO `system_google_meet_integration_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('google_meet_integration_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_google_meet_meetings`
--

CREATE TABLE `system_google_meet_meetings` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `start_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with_team_members` mediumtext DEFAULT NULL,
  `share_with_client_contacts` mediumtext DEFAULT NULL,
  `google_event_id` text NOT NULL,
  `join_url` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_help_articles`
--

CREATE TABLE `system_help_articles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `files` text NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_help_articles`
--

INSERT INTO `system_help_articles` (`id`, `title`, `description`, `category_id`, `created_by`, `created_at`, `status`, `files`, `total_views`, `sort`, `deleted`) VALUES
(1, 'Learn how to create, edit, and track projects efficiently', '<p data-start=\"139\" data-end=\"226\"><strong data-start=\"214\" data-end=\"224\">Steps:</strong></p><p>\r\n</p><ul data-start=\"227\" data-end=\"399\">\r\n<li data-start=\"227\" data-end=\"267\">Navigate to the <strong data-start=\"245\" data-end=\"257\">Projects</strong> module.</li>\r\n<li data-start=\"268\" data-end=\"314\">Click <strong data-start=\"276\" data-end=\"291\">Add Project</strong> and fill in details.</li>\r\n<li data-start=\"315\" data-end=\"358\">Assign team members and set milestones.</li>\r\n<li data-start=\"359\" data-end=\"399\">Track progress using status updates.</li>\r\n</ul>', 4, 1, '2025-03-19 10:10:06', 'active', 'a:0:{}', 0, 0, 0),
(2, 'Creating and Managing Tasks', '<p data-start=\"447\" data-end=\"523\"><strong data-start=\"447\" data-end=\"460\">Overview:</strong> Guide on adding, assigning, and updating tasks.<br data-start=\"508\" data-end=\"511\">\r\n<strong data-start=\"511\" data-end=\"521\">Steps:</strong></p><p>\r\n</p><ul data-start=\"524\" data-end=\"713\">\r\n<li data-start=\"524\" data-end=\"571\">Open a project and go to the <strong data-start=\"555\" data-end=\"564\">Tasks</strong> tab.</li>\r\n<li data-start=\"572\" data-end=\"626\">Click <strong data-start=\"580\" data-end=\"592\">Add Task</strong>, enter a title and description.</li>\r\n<li data-start=\"627\" data-end=\"669\">Assign team members and set deadlines.</li>\r\n<li data-start=\"670\" data-end=\"713\">Use <strong data-start=\"676\" data-end=\"688\">subtasks</strong> for detailed tracking.</li></ul>', 4, 1, '2025-03-19 10:10:23', 'active', 'a:0:{}', 0, 0, 0),
(3, 'How to Log In & Navigate the Dashboard', '<p data-start=\"155\" data-end=\"299\"><strong data-start=\"155\" data-end=\"168\">Overview:</strong> A step-by-step guide on accessing the system, understanding the dashboard layout, and using main features.<br data-start=\"275\" data-end=\"278\">\r\n<strong data-start=\"278\" data-end=\"297\">Topics Covered:</strong></p><p>\r\n</p><ul data-start=\"300\" data-end=\"395\">\r\n<li data-start=\"300\" data-end=\"333\">Logging in for the first time</li>\r\n<li data-start=\"334\" data-end=\"361\">Resetting your password</li>\r\n<li data-start=\"362\" data-end=\"395\">Overview of dashboard widgets</li></ul>', 5, 1, '2025-03-19 10:15:27', 'active', 'a:0:{}', 1, 0, 0),
(4, 'Viewing & Completing Assigned Tasks', '<p data-start=\"451\" data-end=\"573\"><strong data-start=\"451\" data-end=\"464\">Overview:</strong> Learn how to find your assigned tasks, update progress, and mark tasks as completed.<br data-start=\"549\" data-end=\"552\">\r\n<strong data-start=\"552\" data-end=\"571\">Topics Covered:</strong></p><p>\r\n</p><ul data-start=\"574\" data-end=\"675\">\r\n<li data-start=\"574\" data-end=\"612\">Accessing tasks from the dashboard</li>\r\n<li data-start=\"613\" data-end=\"637\">Updating task status</li>\r\n<li data-start=\"638\" data-end=\"675\">Adding comments or files to tasks</li></ul>', 6, 1, '2025-03-19 10:16:05', 'active', 'a:0:{}', 0, 0, 0),
(5, 'How to Submit a Support Ticket', '<p data-start=\"726\" data-end=\"838\"><strong data-start=\"726\" data-end=\"739\">Overview:</strong> Guide on how to report issues or request assistance from the support team.<br data-start=\"814\" data-end=\"817\">\r\n<strong data-start=\"817\" data-end=\"836\">Topics Covered:</strong></p><p>\r\n</p><ul data-start=\"839\" data-end=\"926\">\r\n<li data-start=\"839\" data-end=\"864\">Creating a new ticket</li>\r\n<li data-start=\"865\" data-end=\"899\">Adding details and attachments</li>\r\n<li data-start=\"900\" data-end=\"926\">Checking ticket status</li></ul>', 8, 1, '2025-03-19 10:16:39', 'active', 'a:0:{}', 0, 0, 0),
(6, 'Managing Project Files and Documents', '<p data-start=\"1558\" data-end=\"1643\"><strong data-start=\"1558\" data-end=\"1570\">Summary:</strong> Employees can access, upload, and organize project files.<br data-start=\"1628\" data-end=\"1631\">\r\n<strong data-start=\"1631\" data-end=\"1641\">Steps:</strong></p><p>\r\n</p><ul data-start=\"1644\" data-end=\"1850\">\r\n<li data-start=\"1644\" data-end=\"1681\">Navigate to the <strong data-start=\"1662\" data-end=\"1678\">Files Module</strong>.</li>\r\n<li data-start=\"1682\" data-end=\"1742\">Upload necessary documents related to tasks or projects.</li>\r\n<li data-start=\"1743\" data-end=\"1796\">Organize files into folders for easier retrieval.</li>\r\n<li data-start=\"1797\" data-end=\"1850\">Download files and share links with team members.</li></ul>', 9, 1, '2025-03-19 10:17:54', 'active', 'a:0:{}', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_help_categories`
--

CREATE TABLE `system_help_categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `type` enum('help','knowledge_base') NOT NULL,
  `sort` int(11) NOT NULL,
  `articles_order` varchar(3) NOT NULL DEFAULT '',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_help_categories`
--

INSERT INTO `system_help_categories` (`id`, `title`, `description`, `type`, `sort`, `articles_order`, `status`, `deleted`) VALUES
(1, 'Getting Started', '', 'help', 0, '', 'active', 0),
(2, 'Project Management ', '', 'help', 0, '', 'active', 0),
(3, 'Tickets & Issue', '', 'help', 0, '', 'active', 0),
(4, 'File Managemen', '', 'help', 0, '', 'active', 0),
(5, 'Getting Started with the System', 'How to Log In & Navigate the Dashboard\r\nUnderstanding Your User Role & Access\r\nUpdating Your Profile & Preferences', 'knowledge_base', 0, '', 'active', 0),
(6, 'Managing Tasks & Assignments', 'Viewing & Completing Assigned Tasks\r\nHow to Use Checklists & Subtasks\r\nSetting Priorities & Deadlines', 'knowledge_base', 0, '', 'active', 0),
(7, 'Time & Attendance Tracking', 'Logging Work Hours & Timesheets\r\nStarting & Stopping Timers for Tasks\r\nRequesting Time Off', 'knowledge_base', 0, '', 'active', 0),
(8, 'Tickets & Issue Reporting', 'Submitting a Support Ticket\r\nTracking Ticket Status & Responses\r\nAdding Attachments to Tickets', 'knowledge_base', 0, '', 'active', 0),
(9, 'Accessing Company Documents & Files', 'How to Find & Download Important Files\r\nUploading Work Documents\r\nManaging Shared Folders', 'knowledge_base', 0, '', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_hrp_bonus_kpi`
--

CREATE TABLE `system_hrp_bonus_kpi` (
  `id` int(11) NOT NULL,
  `month_bonus_kpi` varchar(45) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `bonus_kpi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_hrp_payroll_columns`
--

CREATE TABLE `system_hrp_payroll_columns` (
  `id` int(11) UNSIGNED NOT NULL,
  `column_key` text DEFAULT NULL,
  `taking_method` text DEFAULT NULL COMMENT 'get from system, caculator, constant... ',
  `function_name` text DEFAULT NULL COMMENT 'get value for method system',
  `value_related_to` text DEFAULT NULL COMMENT 'salary, allowance value...',
  `display_with_staff` varchar(10) DEFAULT 'true',
  `description` text DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `staff_id_created` int(11) NOT NULL,
  `order_display` int(11) DEFAULT NULL,
  `is_edit` varchar(100) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_hrp_payslips`
--

CREATE TABLE `system_hrp_payslips` (
  `id` int(11) UNSIGNED NOT NULL,
  `payslip_name` varchar(100) NOT NULL,
  `payslip_template_id` int(11) DEFAULT NULL,
  `payslip_month` date NOT NULL,
  `staff_id_created` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `payslip_data` longtext DEFAULT NULL,
  `file_name` text DEFAULT NULL,
  `payslip_status` varchar(100) DEFAULT 'payslip_opening'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_hrp_payslip_templates`
--

CREATE TABLE `system_hrp_payslip_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `templates_name` varchar(100) NOT NULL,
  `payslip_columns` longtext DEFAULT NULL,
  `payslip_id_copy` int(11) UNSIGNED NOT NULL,
  `department_id` longtext DEFAULT NULL,
  `role_employees` longtext DEFAULT NULL,
  `staff_employees` longtext DEFAULT NULL,
  `payslip_template_data` longtext DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `staff_id_created` int(11) NOT NULL,
  `cell_data` longtext DEFAULT NULL,
  `except_staff` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_hr_payroll_option`
--

CREATE TABLE `system_hr_payroll_option` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext DEFAULT NULL,
  `auto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_internal_delivery_note`
--

CREATE TABLE `system_internal_delivery_note` (
  `id` int(11) UNSIGNED NOT NULL,
  `internal_delivery_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `internal_delivery_code` varchar(100) DEFAULT NULL,
  `approval` int(11) DEFAULT 0 COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_internal_delivery_note_detail`
--

CREATE TABLE `system_internal_delivery_note_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `internal_delivery_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `from_stock_name` text DEFAULT NULL,
  `to_stock_name` text DEFAULT NULL,
  `unit_id` text DEFAULT NULL,
  `available_quantity` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `into_money` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_inventory_commodity_min`
--

CREATE TABLE `system_inventory_commodity_min` (
  `id` int(11) UNSIGNED NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` varchar(100) DEFAULT NULL,
  `inventory_number_min` decimal(15,2) DEFAULT 0.00,
  `inventory_number_max` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_inventory_manage`
--

CREATE TABLE `system_inventory_manage` (
  `id` int(11) UNSIGNED NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `inventory_number` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `lot_number` varchar(100) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_invoices`
--

CREATE TABLE `system_invoices` (
  `id` int(11) NOT NULL,
  `type` enum('invoice','credit_note') NOT NULL DEFAULT 'invoice',
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `labels` text DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid','cancelled','credited') NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `tax_id3` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recurring_invoice_id` int(11) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') NOT NULL,
  `discount_type` enum('before_tax','after_tax') NOT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `files` mediumtext NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `estimate_id` int(11) NOT NULL DEFAULT 0,
  `main_invoice_id` int(11) NOT NULL DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `invoice_total` double NOT NULL,
  `invoice_subtotal` double NOT NULL,
  `discount_total` double NOT NULL,
  `tax` double NOT NULL,
  `tax2` double NOT NULL,
  `tax3` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `display_id` text NOT NULL,
  `number_year` int(11) DEFAULT NULL,
  `number_sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_invoices`
--

INSERT INTO `system_invoices` (`id`, `type`, `client_id`, `project_id`, `bill_date`, `due_date`, `note`, `labels`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `tax_id3`, `recurring`, `recurring_invoice_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `due_reminder_date`, `recurring_reminder_date`, `discount_amount`, `discount_amount_type`, `discount_type`, `cancelled_at`, `cancelled_by`, `files`, `company_id`, `estimate_id`, `main_invoice_id`, `subscription_id`, `invoice_total`, `invoice_subtotal`, `discount_total`, `tax`, `tax2`, `tax3`, `deleted`, `order_id`, `display_id`, `number_year`, `number_sequence`) VALUES
(1, 'invoice', 1, 0, '2025-03-19', '2025-04-02', '', '', '2025-03-19', 'not_paid', 0, 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0, 'percentage', 'before_tax', NULL, 0, 'a:0:{}', 1, 0, 0, 0, 8500, 8500, 0, 0, 0, 0, 0, 1, 'INVOICE #1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_invoice_items`
--

CREATE TABLE `system_invoice_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `taxable` tinyint(1) NOT NULL DEFAULT 1,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `wh_delivered_quantity` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_invoice_items`
--

INSERT INTO `system_invoice_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `sort`, `invoice_id`, `item_id`, `taxable`, `deleted`, `wh_delivered_quantity`) VALUES
(1, 'Bamburi Duracem', '', 1, '50Kg', 800, 800, 0, 1, 0, 1, 0, 0.00),
(2, 'Bamburi Powermax Cement', 'High-performance cement for heavy construction', 10, '50Kg', 770, 7700, 0, 1, 0, 1, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `system_invoice_payments`
--

CREATE TABLE `system_invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` tinytext DEFAULT NULL,
  `created_by` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_invoice_payments`
--

INSERT INTO `system_invoice_payments` (`id`, `amount`, `payment_date`, `payment_method_id`, `note`, `invoice_id`, `deleted`, `transaction_id`, `created_by`, `created_at`) VALUES
(1, 8500, '2025-03-19', 1, '', 1, 0, NULL, 1, '2025-03-19 08:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `system_items`
--

CREATE TABLE `system_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `files` mediumtext NOT NULL,
  `show_in_client_portal` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `taxable` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_barcode` text DEFAULT NULL,
  `commodity_type` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT 0.00,
  `sub_group` varchar(200) DEFAULT NULL,
  `commodity_name` varchar(200) NOT NULL,
  `color` text DEFAULT NULL,
  `guarantee` text DEFAULT NULL,
  `profif_ratio` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `parent_attributes` longtext DEFAULT NULL,
  `can_be_sold` varchar(100) DEFAULT 'can_be_sold',
  `can_be_purchased` varchar(100) DEFAULT 'can_be_purchased',
  `can_be_manufacturing` varchar(100) DEFAULT 'can_be_manufacturing',
  `can_be_inventory` varchar(100) DEFAULT 'can_be_inventory',
  `without_checking_warehouse` int(11) DEFAULT 0,
  `long_descriptions` longtext DEFAULT NULL,
  `from_vendor_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_items`
--

INSERT INTO `system_items` (`id`, `title`, `description`, `unit_type`, `rate`, `files`, `show_in_client_portal`, `category_id`, `taxable`, `sort`, `deleted`, `tax`, `tax2`, `commodity_code`, `commodity_barcode`, `commodity_type`, `warehouse_id`, `origin`, `color_id`, `style_id`, `model_id`, `size_id`, `unit_id`, `sku_code`, `sku_name`, `purchase_price`, `sub_group`, `commodity_name`, `color`, `guarantee`, `profif_ratio`, `parent_id`, `attributes`, `parent_attributes`, `can_be_sold`, `can_be_purchased`, `can_be_manufacturing`, `can_be_inventory`, `without_checking_warehouse`, `long_descriptions`, `from_vendor_item`) VALUES
(1, 'Bamburi Nguvu Cement', 'High-strength cement for general construction.', '50Kg', 750, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:40:\"item_file67da840bbef5d-BAMBURI-NGUVU.png\";s:9:\"file_size\";s:6:\"429239\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', 0, NULL, NULL),
(2, 'Bamburi Tembo Cement', 'Multipurpose cement ideal for masonry and plasterwork.', '50Kg', 720, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:32:\"item_file67da838eedd71-tembo.jpg\";s:9:\"file_size\";s:5:\"12784\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', 0, NULL, NULL),
(3, 'Bamburi Duracem', 'Sulphate-resistant cement for marine and foundation work', '50Kg', 800, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:34:\"item_file67da843d777b6-duracem.jpg\";s:9:\"file_size\";s:5:\"10998\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', 0, NULL, NULL),
(4, 'Bamburi Fundi Cement', 'Description: ', '50Kg', 680, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:40:\"item_file67da8416af31e-fundi-300x300.jpg\";s:9:\"file_size\";s:4:\"8124\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', 0, NULL, NULL),
(5, 'Bamburi Powermax Cement', 'High-performance cement for heavy construction', '50Kg', 770, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:43:\"item_file67da83d2ee601-powermax-300x300.jpg\";s:9:\"file_size\";s:4:\"8146\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'can_be_sold', 'can_be_purchased', 'can_be_manufacturing', 'can_be_inventory', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_items_of_vendor`
--

CREATE TABLE `system_items_of_vendor` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `rate` decimal(15,2) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `commodity_code` varchar(100) NOT NULL,
  `commodity_barcode` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `sub_group` varchar(200) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `parent_attributes` longtext DEFAULT NULL,
  `commodity_type` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `commodity_name` varchar(200) NOT NULL,
  `series_id` text DEFAULT NULL,
  `long_descriptions` longtext DEFAULT NULL,
  `share_status` int(1) DEFAULT 0,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_item_categories`
--

CREATE TABLE `system_item_categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `commodity_group_code` varchar(100) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT 1,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_item_categories`
--

INSERT INTO `system_item_categories` (`id`, `title`, `deleted`, `commodity_group_code`, `order`, `display`, `note`) VALUES
(1, 'General item', 0, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_jitsi_integration_settings`
--

CREATE TABLE `system_jitsi_integration_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_jitsi_integration_settings`
--

INSERT INTO `system_jitsi_integration_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('client_can_access_meetings', '1', 'app', 0),
('integrate_jitsi', '1', 'app', 0),
('jitsi_integration_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0),
('jitsi_integration_users', '', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_jitsi_meetings`
--

CREATE TABLE `system_jitsi_meetings` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `start_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with_team_members` mediumtext DEFAULT NULL,
  `share_with_client_contacts` mediumtext DEFAULT NULL,
  `join_key` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_labels`
--

CREATE TABLE `system_labels` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `color` varchar(15) NOT NULL,
  `context` enum('event','invoice','note','project','task','ticket','to_do','subscription','client') DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_labels`
--

INSERT INTO `system_labels` (`id`, `title`, `color`, `context`, `user_id`, `deleted`) VALUES
(1, 'Wear & Tear ', '#e18a00', 'project', 0, 0),
(2, 'Motor Failure', '#e74c3c', 'project', 0, 0),
(3, 'Misalignment ', '#37b4e1', 'project', 0, 0),
(4, 'Urgent ', '#83c340', 'project', 0, 0),
(5, 'Critical Issue ', '#e74c3c', 'ticket', 0, 0),
(6, 'High Priority ', '#e18a00', 'ticket', 0, 0),
(7, 'Medium Priority ', '#f1c40f', 'ticket', 0, 0),
(8, 'Low Priority ', '#83c340', 'ticket', 0, 0),
(9, 'Feature Request ', '#29c2c2', 'ticket', 0, 0),
(10, 'Resolved', '#84fa05', 'ticket', 0, 0),
(11, 'In Progress ', '#dbadff', 'ticket', 0, 0),
(12, 'Pending Review ', '#ffab24', 'ticket', 0, 0),
(13, 'Hardware Failure ', '#ad159e', 'ticket', 0, 0),
(14, 'Low Priority', '#f1c40f', 'to_do', 6, 0),
(15, 'Medium Priority', '#4a8af4', 'to_do', 6, 0),
(16, 'High Priority', '#83c340', 'to_do', 6, 0),
(17, 'Training', '#f1c40f', 'event', 6, 0),
(18, 'Meeting', '#d43480', 'event', 6, 0),
(19, 'Workshop', '#29c2c2', 'event', 6, 0),
(20, 'Conference', '#e18a00', 'event', 6, 0),
(21, 'Emergency Drill', '#e74c3c', 'event', 6, 0),
(22, 'Equipment Upgrade', '#37b4e1', 'event', 6, 0),
(23, 'Annual Review', '#aab7b7', 'event', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_leads`
--

CREATE TABLE `system_leads` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_lead_source`
--

CREATE TABLE `system_lead_source` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_lead_source`
--

INSERT INTO `system_lead_source` (`id`, `title`, `sort`, `deleted`) VALUES
(1, 'Google', 1, 0),
(2, 'Facebook', 2, 0),
(3, 'Twitter', 3, 0),
(4, 'Youtube', 4, 0),
(5, 'Elsewhere', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_lead_status`
--

CREATE TABLE `system_lead_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_lead_status`
--

INSERT INTO `system_lead_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Qualified', '#2d9cdb', 1, 0),
(3, 'Discussion', '#29c2c2', 2, 0),
(4, 'Negotiation', '#2d9cdb', 3, 0),
(5, 'Won', '#83c340', 4, 0),
(6, 'Lost', '#e74c3c', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_leave_applications`
--

CREATE TABLE `system_leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext NOT NULL,
  `status` enum('pending','approved','rejected','canceled') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `files` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_leave_types`
--

CREATE TABLE `system_leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `color` varchar(7) NOT NULL,
  `description` text DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_leave_types`
--

INSERT INTO `system_leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#83c340', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_likes`
--

CREATE TABLE `system_likes` (
  `id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_login_as_client`
--

CREATE TABLE `system_login_as_client` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `client_contact_id` int(11) NOT NULL,
  `hash` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mailboxes`
--

CREATE TABLE `system_mailboxes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `color` varchar(7) NOT NULL,
  `imap_email` text NOT NULL,
  `imap_password` text NOT NULL,
  `imap_encryption` text NOT NULL,
  `imap_host` text NOT NULL,
  `imap_port` text NOT NULL,
  `imap_authorized` tinyint(1) NOT NULL DEFAULT 0,
  `imap_failed_login_attempts` int(11) NOT NULL DEFAULT 0,
  `send_bcc_to` text NOT NULL,
  `signature` text NOT NULL,
  `permitted_users` text NOT NULL,
  `use_global_email` tinyint(1) NOT NULL DEFAULT 1,
  `email_sent_from_address` text NOT NULL,
  `email_sent_from_name` text NOT NULL,
  `email_protocol` text NOT NULL,
  `email_smtp_host` text NOT NULL,
  `email_smtp_user` text NOT NULL,
  `email_smtp_pass` text NOT NULL,
  `email_smtp_port` text NOT NULL,
  `email_smtp_security_type` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_mailboxes`
--

INSERT INTO `system_mailboxes` (`id`, `title`, `color`, `imap_email`, `imap_password`, `imap_encryption`, `imap_host`, `imap_port`, `imap_authorized`, `imap_failed_login_attempts`, `send_bcc_to`, `signature`, `permitted_users`, `use_global_email`, `email_sent_from_address`, `email_sent_from_name`, `email_protocol`, `email_smtp_host`, `email_smtp_user`, `email_smtp_pass`, `email_smtp_port`, `email_smtp_security_type`, `deleted`) VALUES
(1, 'MailBox', '#e74c3c', 'info@zurihub.co.ke', '03ec10fd63b7c0bfc2a2d7ab31e0547d1955512a0f557d74b9491d1165dde0a312cfd58604e9a30f930076babd730b62cfc7706748fa7e19a12f037a7fbfa57b70ab6e222d4e95ff3dbf85c7bdb0bf0dd790204cab41b9db1d6ef0fb00b65efa2cc6f90752131a8a85', 'ssl/validate-cert', '993', '465', 0, 0, '', '<p><br></p>', '1', 1, 'info@zurihub.co.ke', 'MailBox', '', '', 'info@zurihub.co.ke', 'a1d280fff0fc294467ae4f6f5e9bc39e943565dce8fdeb069c6b37f733866f58329508bec51c3a9eb3b81127d1426d80ce375fdecd4f3af18c1bf20d7dd506281abb70af84e99e8e4647b5686342f206e1511ee75efa6f7506e3db6e9e21c509a55a70c0fbac180e29d23f29a64d48', '', 'none', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_mailbox_emails`
--

CREATE TABLE `system_mailbox_emails` (
  `id` int(11) NOT NULL,
  `to` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `subject` text NOT NULL,
  `message` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime NOT NULL,
  `creator_name` varchar(100) NOT NULL,
  `creator_email` varchar(255) NOT NULL,
  `email_id` int(11) NOT NULL,
  `mailbox_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `email_labels` text DEFAULT NULL,
  `status` enum('','draft','trash') NOT NULL DEFAULT '',
  `read_by` mediumtext NOT NULL,
  `files` longtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mailbox_settings`
--

CREATE TABLE `system_mailbox_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_mailbox_settings`
--

INSERT INTO `system_mailbox_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('mailbox_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_mailbox_templates`
--

CREATE TABLE `system_mailbox_templates` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_messages`
--

CREATE TABLE `system_messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT 'Untitled',
  `message` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `files` longtext NOT NULL,
  `deleted_by_users` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_microsoft_teams_integration_settings`
--

CREATE TABLE `system_microsoft_teams_integration_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_microsoft_teams_integration_settings`
--

INSERT INTO `system_microsoft_teams_integration_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('microsoft_teams_integration_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_microsoft_team_meetings`
--

CREATE TABLE `system_microsoft_team_meetings` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `start_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with_team_members` mediumtext DEFAULT NULL,
  `share_with_client_contacts` mediumtext DEFAULT NULL,
  `event_id` text NOT NULL,
  `join_url` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_milestones`
--

CREATE TABLE `system_milestones` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_milestones`
--

INSERT INTO `system_milestones` (`id`, `title`, `project_id`, `due_date`, `description`, `deleted`) VALUES
(1, 'Phase 1', 1, '2025-03-21', '', 0),
(2, 'Phase 2', 1, '2025-03-23', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_notes`
--

CREATE TABLE `system_notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `labels` text DEFAULT NULL,
  `files` mediumtext NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT 0,
  `color` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_note_category`
--

CREATE TABLE `system_note_category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_notifications`
--

CREATE TABLE `system_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext NOT NULL,
  `read_by` mediumtext NOT NULL,
  `event` varchar(250) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `estimate_comment_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `expense_id` int(11) NOT NULL,
  `proposal_comment_id` int(11) NOT NULL,
  `reminder_log_id` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `plugin_zoom_meeting_id` int(11) NOT NULL,
  `inventory_goods_receiving_id` int(1) NOT NULL DEFAULT 0,
  `inventory_goods_delivery_id` int(1) NOT NULL DEFAULT 0,
  `packing_list_id` int(1) NOT NULL DEFAULT 0,
  `internal_delivery_note_id` int(1) NOT NULL DEFAULT 0,
  `loss_adjustment_is` int(1) NOT NULL DEFAULT 0,
  `receiving_exporting_return_order_id` int(1) NOT NULL DEFAULT 0,
  `pur_request_id` int(1) NOT NULL DEFAULT 0,
  `pur_quotation_id` int(1) NOT NULL DEFAULT 0,
  `pur_order_id` int(1) NOT NULL DEFAULT 0,
  `pur_payment_id` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_notifications`
--

INSERT INTO `system_notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `lead_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `contract_id`, `order_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `proposal_id`, `estimate_comment_id`, `subscription_id`, `expense_id`, `proposal_comment_id`, `reminder_log_id`, `deleted`, `plugin_zoom_meeting_id`, `inventory_goods_receiving_id`, `inventory_goods_delivery_id`, `packing_list_id`, `internal_delivery_note_id`, `loss_adjustment_is`, `receiving_exporting_return_order_id`, `pur_request_id`, `pur_quotation_id`, `pur_order_id`, `pur_payment_id`) VALUES
(1, 1, '', '2025-03-19 04:43:54', '', '', 'project_task_created', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, '', '2025-03-19 05:00:47', '', '', 'project_task_created', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, '', '2025-03-19 05:03:23', '', '', 'project_task_created', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, '', '2025-03-19 05:03:29', '', '', 'project_task_created', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, '', '2025-03-19 05:03:37', '', '', 'project_task_created', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, '', '2025-03-19 05:03:44', '', '', 'project_task_created', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, '', '2025-03-19 05:03:50', '', '', 'project_task_created', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 1, '', '2025-03-19 05:05:08', '', ',4,6', 'project_task_commented', 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 1, '', '2025-03-19 05:13:29', '2,3,4,5,6', ',6', 'new_announcement_created', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 6, '', '2025-03-19 06:34:39', '4', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 6, '', '2025-03-19 06:34:39', '3,4', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 6, '', '2025-03-19 06:36:43', '3,4', '', 'project_task_created', 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 4, '', '2025-03-19 06:40:25', '', ',6', 'project_task_commented', 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 6, '', '2025-03-19 06:43:23', '1,2,3,4,5', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 7, '', '2025-03-19 08:55:55', '7', '', 'ticket_created', 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 1, '', '2025-03-19 08:57:32', '6', ',6', 'ticket_assigned', 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 6, '', '2025-03-19 09:00:56', '7', '', 'ticket_commented', 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 3, '', '2025-03-19 16:32:57', '1,3,7', ',1', 'ticket_created', 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 1, '', '2025-03-19 16:36:34', '', '', 'general_task_created', 0, 9, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 1, '', '2025-03-19 16:48:55', '', '', 'general_task_created', 0, 10, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 1, '', '2025-03-19 16:50:33', '', '', 'general_task_updated', 0, 10, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, '', '2025-03-19 16:54:06', '5', ',5', 'ticket_assigned', 0, 0, 0, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 1, '', '2025-03-19 16:56:06', '', '', 'general_task_created', 0, 11, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 1, '', '2025-03-20 13:01:50', '', '', 'project_task_created', 1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 1, '', '2025-03-20 13:05:52', '1,2,7', '', 'ticket_created', 0, 0, 0, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 1, '', '2025-03-20 13:08:26', '3', '', 'general_task_created', 0, 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_notification_settings`
--

CREATE TABLE `system_notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(11) NOT NULL DEFAULT 0,
  `enable_web` int(11) NOT NULL DEFAULT 0,
  `enable_slack` int(11) NOT NULL DEFAULT 0,
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_notification_settings`
--

INSERT INTO `system_notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `enable_slack`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 0, 0, 0, '', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 5, 0),
(7, 'project_task_started', 'project', 0, 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, 0, '', '', 'task_assignee,task_collaborators,mentioned_members', 11, 0),
(12, 'project_member_added', 'project', 0, 1, 0, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, 0, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, 0, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, 0, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, 0, '', '', 'project_members,mentioned_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, 0, '', '', 'project_members,mentioned_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator,mentioned_members', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, 0, '', '', 'project_members,mentioned_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, 0, '', '', 'project_members,client_primary_contact,comment_creator,mentioned_members', 20, 0),
(21, 'client_signup', 'client', 0, 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, 0, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, 0, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, 0, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 1, 1, 0, '', '', 'client_primary_contact,ticket_creator,ticket_assignee', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator,ticket_assignee', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator,ticket_assignee', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator,ticket_assignee', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, 0, '', '', '', 32, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 0, 0, '', '', '', 36, 0),
(37, 'message_reply_sent', 'message', 0, 0, 0, '', '', '', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(39, 'new_event_added_in_calendar', 'event', 0, 1, 0, '', '', 'recipient', 39, 0),
(40, 'recurring_invoice_created_vai_cron_job', 'invoice', 0, 0, 0, '', '', 'client_primary_contact', 22, 0),
(41, 'new_announcement_created', 'announcement', 0, 1, 0, '', '', 'recipient', 41, 0),
(42, 'invoice_due_reminder_before_due_date', 'invoice', 0, 1, 0, '', '', 'client_primary_contact', 22, 0),
(43, 'invoice_overdue_reminder', 'invoice', 0, 1, 0, '', '', 'client_primary_contact', 22, 0),
(44, 'recurring_invoice_creation_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(45, 'project_completed', 'project', 0, 0, 0, '', '', '', 2, 0),
(46, 'lead_created', 'lead', 0, 0, 0, '', '', '', 21, 0),
(47, 'client_created_from_lead', 'lead', 0, 0, 0, '', '', '', 21, 0),
(48, 'project_task_deadline_pre_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(49, 'project_task_reminder_on_the_day_of_deadline', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(50, 'project_task_deadline_overdue_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(51, 'recurring_task_created_via_cron_job', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 20, 0),
(52, 'calendar_event_modified', 'event', 0, 0, 0, '', '', '', 39, 0),
(53, 'client_contact_requested_account_removal', 'client', 0, 0, 0, '', '', '', 21, 0),
(54, 'bitbucket_push_received', 'project', 0, 0, 0, '', '', '', 45, 0),
(55, 'github_push_received', 'project', 0, 0, 0, '', '', '', 45, 0),
(56, 'invited_client_contact_signed_up', 'client', 0, 0, 0, '', '', '', 21, 0),
(57, 'created_a_new_post', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(58, 'timeline_post_commented', 'timeline', 0, 1, 0, '', '', 'post_creator', 52, 0),
(59, 'ticket_assigned', 'ticket', 0, 1, 0, '', '', 'ticket_assignee', 31, 0),
(60, 'new_order_received', 'order', 0, 0, 0, '', '', '', 1, 0),
(61, 'order_status_updated', 'order', 0, 0, 0, '', '', '', 2, 0),
(62, 'proposal_accepted', 'proposal', 0, 0, 0, '', '', '', 34, 0),
(63, 'proposal_rejected', 'proposal', 0, 0, 0, '', '', '', 35, 0),
(64, 'estimate_commented', 'estimate', 0, 0, 0, '', '', '', 35, 0),
(65, 'invoice_manual_payment_added', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(66, 'contract_accepted', 'contract', 0, 0, 0, '', '', '', 66, 0),
(67, 'contract_rejected', 'contract', 0, 0, 0, '', '', '', 67, 0),
(68, 'subscription_request_sent', 'subscription', 0, 1, 0, '', '', 'client_primary_contact', 68, 0),
(69, 'subscription_started', 'subscription', 0, 1, 0, '', '', 'client_primary_contact', 68, 0),
(70, 'subscription_invoice_created_via_cron_job', 'subscription', 0, 1, 0, '', '', 'client_primary_contact', 68, 0),
(71, 'general_task_created', 'general_task', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 69, 0),
(72, 'general_task_updated', 'general_task', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 70, 0),
(73, 'general_task_assigned', 'general_task', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 71, 0),
(74, 'general_task_started', 'general_task', 0, 0, 0, '', '', '', 72, 0),
(75, 'general_task_finished', 'general_task', 0, 0, 0, '', '', '', 73, 0),
(76, 'general_task_reopened', 'general_task', 0, 0, 0, '', '', '', 74, 0),
(77, 'general_task_deleted', 'general_task', 0, 1, 0, '', '', 'task_assignee,task_collaborators', 75, 0),
(78, 'general_task_commented', 'general_task', 0, 1, 0, '', '', 'task_assignee,task_collaborators,mentioned_members', 76, 0),
(79, 'proposal_commented', 'proposal', 0, 0, 0, '', '', '', 77, 0),
(80, 'subscription_cancelled', 'subscription', 0, 0, 0, '', '', '', 68, 0),
(81, 'proposal_preview_opened', 'proposal', 0, 0, 0, '', '', '', 77, 0),
(82, 'proposal_email_opened', 'proposal', 0, 0, 0, '', '', '', 77, 0),
(83, 'subscription_renewal_reminder', 'subscription', 0, 0, 0, '', '', '', 68, 0),
(84, 'zoom_integration_new_meeting_scheduled', 'zoom_meeting', 0, 1, 0, '', '', 'recipient', 0, 0),
(85, 'zoom_integration_meeting_updated', 'zoom_meeting', 0, 1, 0, '', '', 'recipient', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_orders`
--

CREATE TABLE `system_orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') NOT NULL,
  `discount_type` enum('before_tax','after_tax') NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_orders`
--

INSERT INTO `system_orders` (`id`, `client_id`, `order_date`, `note`, `status_id`, `tax_id`, `tax_id2`, `discount_amount`, `discount_amount_type`, `discount_type`, `created_by`, `project_id`, `files`, `company_id`, `deleted`, `created_by_hash`) VALUES
(1, 1, '2025-03-19', '', 2, 0, 0, 0, 'percentage', 'before_tax', 7, 0, 'a:0:{}', 1, 0, 'AWmonwWiOQ');

-- --------------------------------------------------------

--
-- Table structure for table `system_order_items`
--

CREATE TABLE `system_order_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_order_items`
--

INSERT INTO `system_order_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `order_id`, `created_by`, `item_id`, `sort`, `deleted`, `created_by_hash`) VALUES
(1, 'Bamburi Duracem', NULL, 1, '50Kg', 800, 800, 1, 0, 3, 0, 0, 'AWmonwWiOQ'),
(2, 'Bamburi Powermax Cement', 'High-performance cement for heavy construction', 10, '50Kg', 770, 7700, 1, 7, 5, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `system_order_status`
--

CREATE TABLE `system_order_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_order_status`
--

INSERT INTO `system_order_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Processing', '#29c2c2', 1, 0),
(3, 'Confirmed', '#83c340', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_pages`
--

CREATE TABLE `system_pages` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `internal_use_only` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_team_members_only` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_clients_only` tinyint(1) NOT NULL DEFAULT 0,
  `full_width` tinyint(1) NOT NULL DEFAULT 0,
  `hide_topbar` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_password_manager_bank_account`
--

CREATE TABLE `system_password_manager_bank_account` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `pin` varchar(500) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `bank_code` varchar(200) DEFAULT NULL,
  `account_holder` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `iban` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `share_with_client` mediumtext DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_client` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_password_manager_categories`
--

CREATE TABLE `system_password_manager_categories` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_password_manager_credit_card`
--

CREATE TABLE `system_password_manager_credit_card` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `pin` varchar(500) DEFAULT NULL,
  `credit_card_type` varchar(150) DEFAULT NULL,
  `card_number` varchar(150) DEFAULT NULL,
  `card_cvc` varchar(150) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `username` varchar(80) DEFAULT NULL,
  `description` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `share_with_client` mediumtext DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_client` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_password_manager_email`
--

CREATE TABLE `system_password_manager_email` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `username` varchar(80) DEFAULT NULL,
  `description` text NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `email_type` varchar(150) DEFAULT NULL,
  `auth_method` varchar(150) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `smtp_auth_method` varchar(150) DEFAULT NULL,
  `smtp_host` varchar(150) DEFAULT NULL,
  `smtp_port` varchar(150) DEFAULT NULL,
  `smtp_user_name` varchar(150) DEFAULT NULL,
  `smtp_password` varchar(1500) DEFAULT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `share_with_client` mediumtext DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_client` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_password_manager_general`
--

CREATE TABLE `system_password_manager_general` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `description` text NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `share_with_client` mediumtext DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_client` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_password_manager_software_license`
--

CREATE TABLE `system_password_manager_software_license` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `version` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `license_key` varchar(1500) DEFAULT NULL,
  `description` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `share_with` mediumtext DEFAULT NULL,
  `share_with_client` mediumtext DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_client` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_payment_methods`
--

CREATE TABLE `system_payment_methods` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'custom',
  `description` text NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT 0,
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_payment_amount` double NOT NULL DEFAULT 0,
  `settings` longtext NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_payment_methods`
--

INSERT INTO `system_payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `sort`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0, 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0, 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0, 0),
(4, 'Paytm', 'paytm', 'Paytm online payments', 1, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_paypal_ipn`
--

CREATE TABLE `system_paypal_ipn` (
  `id` int(11) NOT NULL,
  `verification_code` text NOT NULL,
  `payment_verification_code` text NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pin_comments`
--

CREATE TABLE `system_pin_comments` (
  `id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL DEFAULT 0,
  `ticket_comment_id` int(11) NOT NULL DEFAULT 0,
  `pinned_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_polls`
--

CREATE TABLE `system_polls` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `expire_at` date DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `total_views` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_poll_answers`
--

CREATE TABLE `system_poll_answers` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_poll_settings`
--

CREATE TABLE `system_poll_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_poll_votes`
--

CREATE TABLE `system_poll_votes` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `poll_answer_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_posts`
--

CREATE TABLE `system_posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text DEFAULT NULL,
  `files` longtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_projects`
--

CREATE TABLE `system_projects` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `project_type` enum('client_project','internal_project') NOT NULL DEFAULT 'client_project',
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `status` enum('open','completed','hold','canceled') NOT NULL DEFAULT 'open',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `labels` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `starred_by` mediumtext NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `proposal_id` int(11) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_projects`
--

INSERT INTO `system_projects` (`id`, `title`, `description`, `project_type`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `status_id`, `labels`, `price`, `starred_by`, `estimate_id`, `order_id`, `proposal_id`, `deleted`) VALUES
(1, 'Conveyor Belt Issue Tracking', '', 'internal_project', '2025-03-19', '2025-03-20', 0, '2025-03-19', 1, 'open', 6, '4', 0, '', 0, 0, 0, 0),
(2, 'Factory Equipment Maintenance Tracking', 'This project is for tracking maintenance schedules, repairs, and issue resolution for all factory equipment, ensuring minimal downtime.', 'client_project', '2025-03-19', NULL, 1, '2025-03-19', 6, 'open', 6, '4', 0, ',:1:', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_project_comments`
--

CREATE TABLE `system_project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `comment_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `customer_feedback_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_project_comments`
--

INSERT INTO `system_project_comments` (`id`, `created_by`, `created_at`, `description`, `project_id`, `comment_id`, `task_id`, `file_id`, `customer_feedback_id`, `files`, `deleted`) VALUES
(1, 1, '2025-03-19 05:05:08', 'Checked the belt tension, issue persists', 1, 0, 2, 0, 0, 'a:0:{}', 0),
(2, 4, '2025-03-19 06:40:25', 'OKay', 1, 0, 2, 0, 0, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_project_files`
--

CREATE TABLE `system_project_files` (
  `id` int(11) NOT NULL,
  `file_name` text NOT NULL,
  `file_id` text DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `folder_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_project_members`
--

CREATE TABLE `system_project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_project_members`
--

INSERT INTO `system_project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 1, 1, 1, 0),
(2, 6, 2, 1, 0),
(3, 4, 2, 0, 0),
(4, 3, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_project_settings`
--

CREATE TABLE `system_project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_project_status`
--

CREATE TABLE `system_project_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_language_key` text NOT NULL,
  `key_name` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_project_status`
--

INSERT INTO `system_project_status` (`id`, `title`, `title_language_key`, `key_name`, `icon`, `deleted`) VALUES
(1, 'Inspection Pending', '', 'open', 'grid', 0),
(2, 'Resolved', '', 'completed', 'check-circle', 0),
(3, 'Hold', 'hold', '', 'pause-circle', 0),
(4, 'Canceled', 'canceled', '', 'x-circle', 0),
(5, 'Inspection Pending', 'loa', '', 'loader', 1),
(6, 'Assigned to Engineer', '', '', 'edit', 0),
(7, 'Repair in Progress', '', '', 'clock', 0),
(8, 'Fixed & Under Review', '', '', 'check-square', 0),
(9, 'Resolved ', '', '', 'navigation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_project_time`
--

CREATE TABLE `system_project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` float NOT NULL,
  `status` enum('open','logged','approved') NOT NULL DEFAULT 'logged',
  `note` text DEFAULT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_project_time`
--

INSERT INTO `system_project_time` (`id`, `project_id`, `user_id`, `start_time`, `end_time`, `hours`, `status`, `note`, `task_id`, `deleted`) VALUES
(1, 1, 1, '2025-03-18 04:44:00', '2025-03-19 16:48:00', 0, 'logged', 'Done', 1, 0),
(2, 1, 6, '2025-03-19 06:09:12', '2025-03-19 06:40:53', 0, 'logged', 'Done', 7, 0),
(3, 1, 4, '2025-03-19 06:40:37', NULL, 0, 'open', NULL, 2, 0),
(4, 1, 6, '2025-03-19 00:00:00', '2025-03-19 00:00:00', 6, 'logged', '', 1, 0),
(5, 2, 6, '2025-03-20 00:00:00', '2025-03-20 00:00:00', 1, 'logged', '', 0, 0),
(6, 2, 1, '2025-03-20 12:56:08', NULL, 0, 'open', NULL, 0, 0),
(7, 1, 1, '2025-03-20 12:58:12', NULL, 0, 'open', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_proposals`
--

CREATE TABLE `system_proposals` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `proposal_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `discount_type` enum('before_tax','after_tax') NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') NOT NULL,
  `content` mediumtext NOT NULL,
  `public_key` varchar(10) NOT NULL,
  `accepted_by` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `last_preview_seen` datetime DEFAULT NULL,
  `meta_data` text NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_proposal_comments`
--

CREATE TABLE `system_proposal_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `proposal_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_proposal_items`
--

CREATE TABLE `system_proposal_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `proposal_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_proposal_templates`
--

CREATE TABLE `system_proposal_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `template` mediumtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_proposal_templates`
--

INSERT INTO `system_proposal_templates` (`id`, `title`, `template`, `deleted`) VALUES
(1, 'Template 3.7', '<p>&nbsp;</p>\r\n<table class=\"table\" style=\"background-color: #3d3d3d; color: #ffffff; height: 601.859px; width: 101.843%;\">\r\n<tbody>\r\n<tr style=\"height: 601px;\">\r\n<td style=\"text-align: center; width: 97.7706%;\">\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<div style=\"font-size: 40px;\"><strong>Web Design Proposal</strong></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">In response to the growing demands and opportunities within the industry, we propose to develop a comprehensive solution tailored to address key challenges and capitalize on emerging trends. Our proposal aims to deliver tangible value by leveraging our expertise, innovative approaches, and commitment to excellence.</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; height: 116.172px; width: 101.229%;\">\r\n<tbody>\r\n<tr style=\"height: 115px;\">\r\n<td style=\"padding: 0px; width: 99.6965%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">{PROPOSAL_ID}</div>\r\n<table style=\"margin-top: 10px; width: 99.6956%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.4424%;\">&nbsp;</td>\r\n<td style=\"width: 14.4424%;\">&nbsp;</td>\r\n<td style=\"width: 14.4424%;\">&nbsp;</td>\r\n<td style=\"width: 14.4424%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.4424%;\">&nbsp;</td>\r\n<td style=\"width: 14.4424%;\">&nbsp;</td>\r\n<td style=\"width: 12.9799%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div>Proposal Date: {PROPOSAL_DATE}<br>Expiry Date: {PROPOSAL_EXPIRY_DATE}</div>\r\n<table style=\"width: 100%; padding-top: 30px; margin-top: 0;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%; padding-left: 0; padding-right: 10px;\">\r\n<p>Proposal For</p>\r\n{PROPOSAL_TO_INFO}</td>\r\n<td style=\"width: 50%; padding-left: 10px;\">\r\n<p>Proposal From</p>\r\n{COMPANY_INFO}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 102.304%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">Our Best Offer</div>\r\n<table style=\"margin-top: 10px; width: 100.301%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">In consideration of your unique needs and aspirations, we are pleased to present our best offer, crafted with meticulous attention to detail and driven by a commitment to delivering exceptional value.</p>\r\n<p>&nbsp;</p>\r\n<p>{PROPOSAL_ITEMS}</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 102.458%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">Our Objective</div>\r\n<table style=\"margin-top: 10px; width: 102.465%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n<td style=\"width: 14.5125%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">Our objective is to align seamlessly with your business goals, leveraging our expertise and resources to drive tangible results and foster long-term success.</p>\r\n<table style=\"width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%; vertical-align: top;\"><span class=\"timeline-images inline-block\"><img class=\"pasted-image\" style=\"width: 100%;\" src=\"../../assets/images/image_preview.png\" alt=\"\"></span></td>\r\n<td style=\"width: 50%; vertical-align: top;\">\r\n<div style=\"line-height: 26px; padding: 0px 0px 30px; vertical-align: top;\">Through a collaborative partnership, we aim to understand your unique challenges, opportunities, and aspirations, enabling us to tailor our approach to meet your specific needs. By focusing on measurable outcomes, continuous improvement, and proactive communication, we are committed to exceeding your expectations and establishing a foundation for sustained growth and competitiveness in a dynamic business environment.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; width: 102.151%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">Our Portfolio</div>\r\n<table style=\"margin-top: 10px; width: 100.452%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 14.4597%;\">&nbsp;</td>\r\n<td style=\"width: 14.4597%;\">&nbsp;</td>\r\n<td style=\"width: 14.4597%;\">&nbsp;</td>\r\n<td style=\"width: 14.4597%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.4597%;\">&nbsp;</td>\r\n<td style=\"width: 14.4597%;\">&nbsp;</td>\r\n<td style=\"width: 12.9376%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: center;\">Some of our recent work here</p>\r\n<table style=\"border-collapse: collapse; width: 100%;\"><colgroup><col style=\"width: 49.9232%;\"><col style=\"width: 49.9232%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td><span class=\"timeline-images inline-block\"><img class=\"pasted-image\" style=\"width: 100%;\" src=\"../../assets/images/image_preview.png\" alt=\"\"></span></td>\r\n<td><span class=\"timeline-images inline-block\"><img class=\"pasted-image\" style=\"width: 100%;\" src=\"../../assets/images/image_preview.png\" alt=\"\"></span></td>\r\n</tr>\r\n<tr>\r\n<td><span class=\"timeline-images inline-block\"><img class=\"pasted-image\" style=\"width: 100%;\" src=\"../../assets/images/image_preview.png\" alt=\"\"></span></td>\r\n<td><span class=\"timeline-images inline-block\"><img class=\"pasted-image\" style=\"width: 100%;\" src=\"../../assets/images/image_preview.png\" alt=\"\"></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"margin-top: 0px; margin-bottom: 10px; width: 102.458%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0px; width: 100%;\">\r\n<div style=\"margin-top: 20px;\">\r\n<div style=\"text-align: center;\">\r\n<div style=\"font-size: 30px;\">Contact Us</div>\r\n<table style=\"margin-top: 10px; width: 99.6992%; height: 37.1719px;\">\r\n<tbody>\r\n<tr style=\"height: 37.1719px;\">\r\n<td style=\"width: 14.7147%;\">&nbsp;</td>\r\n<td style=\"width: 14.7147%;\">&nbsp;</td>\r\n<td style=\"width: 14.7147%;\">&nbsp;</td>\r\n<td style=\"width: 14.7147%;\">\r\n<div style=\"border-bottom: 5px solid #ff9800;\">&nbsp;</div>\r\n</td>\r\n<td style=\"width: 14.7147%;\">&nbsp;</td>\r\n<td style=\"width: 14.7147%;\">&nbsp;</td>\r\n<td style=\"width: 12.1622%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: center;\">We are looking forward to working with you. Please feel free to contact us.</p>\r\n<p>&nbsp;</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_approval_details`
--

CREATE TABLE `system_pur_approval_details` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_approval_setting`
--

CREATE TABLE `system_pur_approval_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_estimates`
--

CREATE TABLE `system_pur_estimates` (
  `id` int(11) UNSIGNED NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `deleted_vendor_name` varchar(100) DEFAULT NULL,
  `pur_request` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `vendornote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) NOT NULL DEFAULT 0,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `make_a_contract` text DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `shipping_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_estimate_detail`
--

CREATE TABLE `system_pur_estimate_detail` (
  `id` int(11) NOT NULL,
  `pur_estimate` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `item_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_invoices`
--

CREATE TABLE `system_pur_invoices` (
  `id` int(11) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `invoice_number` text DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `contract` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `transactionid` mediumtext DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `payment_request_status` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `vendor_note` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `add_from` int(11) DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `pur_order` int(11) DEFAULT NULL,
  `recurring` int(11) DEFAULT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `cycles` int(11) DEFAULT 0,
  `total_cycles` int(11) DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `add_from_type` varchar(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `discount_total` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `shipping_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_invoice_details`
--

CREATE TABLE `system_pur_invoice_details` (
  `id` int(11) NOT NULL,
  `pur_invoice` int(11) NOT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) DEFAULT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `item_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_invoice_payment`
--

CREATE TABLE `system_pur_invoice_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_invoice` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL,
  `approval_status` int(2) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_orders`
--

CREATE TABLE `system_pur_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_order_name` varchar(100) NOT NULL,
  `vendor` int(11) NOT NULL,
  `estimate` int(11) NOT NULL,
  `pur_order_number` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `status` int(32) NOT NULL DEFAULT 1,
  `approve_status` int(32) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `days_owed` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendornote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `status_goods` int(11) NOT NULL DEFAULT 0,
  `number` int(11) DEFAULT NULL,
  `expense_convert` int(11) DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `clients` text DEFAULT NULL,
  `delivery_status` int(2) DEFAULT 0,
  `type` text DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `pur_request` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `tax_order_rate` decimal(15,2) DEFAULT NULL,
  `tax_order_amount` decimal(15,2) DEFAULT NULL,
  `sale_invoice` int(11) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `order_status` varchar(30) DEFAULT NULL,
  `shipping_note` text DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `shipping_fee` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_order_detail`
--

CREATE TABLE `system_pur_order_detail` (
  `id` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `wh_quantity_received` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_request`
--

CREATE TABLE `system_pur_request` (
  `id` int(11) NOT NULL,
  `pur_rq_code` varchar(45) NOT NULL,
  `pur_rq_name` varchar(100) NOT NULL,
  `rq_description` text DEFAULT NULL,
  `requester` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `status_goods` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `from_items` int(2) DEFAULT 1,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `total_tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `sale_invoice` int(11) DEFAULT NULL,
  `compare_note` text DEFAULT NULL,
  `send_to_vendors` text DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `currency_rate` decimal(15,6) DEFAULT NULL,
  `from_currency` varchar(20) DEFAULT NULL,
  `to_currency` varchar(20) DEFAULT NULL,
  `sale_estimate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_request_detail`
--

CREATE TABLE `system_pur_request_detail` (
  `prd_id` int(11) NOT NULL,
  `pur_request` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `inventory_quantity` int(11) DEFAULT 0,
  `item_text` text DEFAULT NULL,
  `tax` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_value` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `tax_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_vendor`
--

CREATE TABLE `system_pur_vendor` (
  `userid` int(11) UNSIGNED NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `vat` varchar(200) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` varchar(195) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` varchar(195) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(195) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` varchar(20) DEFAULT NULL,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0,
  `category` text DEFAULT NULL,
  `bank_detail` text DEFAULT NULL,
  `payment_terms` text DEFAULT NULL,
  `vendor_code` varchar(100) DEFAULT NULL,
  `return_within_day` int(11) DEFAULT NULL,
  `return_order_fee` decimal(15,2) DEFAULT NULL,
  `return_policies` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_vendor_admin`
--

CREATE TABLE `system_pur_vendor_admin` (
  `staff_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date_assigned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_vendor_cate`
--

CREATE TABLE `system_pur_vendor_cate` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_pur_vendor_items`
--

CREATE TABLE `system_pur_vendor_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor` int(11) NOT NULL,
  `group_items` int(11) DEFAULT NULL,
  `items` int(11) NOT NULL,
  `add_from` int(11) DEFAULT NULL,
  `datecreate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_reminder_logs`
--

CREATE TABLE `system_reminder_logs` (
  `id` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `context_id` int(11) NOT NULL,
  `reminder_event` varchar(255) DEFAULT NULL,
  `notification_status` enum('draft','completed') NOT NULL DEFAULT 'draft',
  `reminder_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_reminder_settings`
--

CREATE TABLE `system_reminder_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `context` text NOT NULL,
  `reminder_event` text NOT NULL,
  `reminder1` int(11) DEFAULT NULL,
  `reminder2` int(11) DEFAULT NULL,
  `reminder3` int(11) DEFAULT NULL,
  `reminder4` int(11) DEFAULT NULL,
  `reminder5` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_rise_api_users`
--

CREATE TABLE `system_rise_api_users` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_roles`
--

CREATE TABLE `system_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_roles`
--

INSERT INTO `system_roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Inspection Officer', 'a:60:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:9:\"read_only\";s:12:\"subscription\";s:0:\"\";s:8:\"estimate\";s:3:\"all\";s:8:\"contract\";s:3:\"all\";s:8:\"proposal\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:3:\"all\";s:15:\"client_specific\";s:0:\"\";s:4:\"lead\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:20:\"do_not_show_projects\";N;s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:34:\"can_edit_only_own_created_projects\";N;s:36:\"can_delete_only_own_created_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:3:\"all\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";s:1:\"1\";s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";s:26:\"job_info_manage_permission\";s:3:\"all\";s:32:\"can_manage_all_kinds_of_settings\";N;s:36:\"can_manage_user_role_and_permissions\";s:0:\"\";s:34:\"can_add_or_invite_new_team_members\";s:1:\"1\";s:36:\"can_activate_deactivate_team_members\";s:1:\"1\";s:23:\"can_delete_team_members\";N;s:19:\"timeline_permission\";s:0:\"\";s:28:\"timeline_permission_specific\";s:0:\"\";s:33:\"client_feedback_access_permission\";N;s:35:\"team_members_note_manage_permission\";s:3:\"all\";s:25:\"can_upload_and_edit_files\";N;s:14:\"can_view_files\";N;s:23:\"can_comment_on_projects\";N;}', 0),
(2, 'Engineer', 'a:60:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:9:\"read_only\";s:12:\"subscription\";s:0:\"\";s:8:\"estimate\";s:3:\"own\";s:8:\"contract\";s:3:\"all\";s:8:\"proposal\";s:3:\"all\";s:7:\"expense\";s:0:\"\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:3:\"own\";s:15:\"client_specific\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:13:\"assigned_only\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:20:\"do_not_show_projects\";N;s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:34:\"can_edit_only_own_created_projects\";N;s:36:\"can_delete_only_own_created_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:33:\"own_project_members_excluding_own\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";s:26:\"job_info_manage_permission\";s:0:\"\";s:32:\"can_manage_all_kinds_of_settings\";N;s:36:\"can_manage_user_role_and_permissions\";s:0:\"\";s:34:\"can_add_or_invite_new_team_members\";N;s:36:\"can_activate_deactivate_team_members\";N;s:23:\"can_delete_team_members\";N;s:19:\"timeline_permission\";s:0:\"\";s:28:\"timeline_permission_specific\";s:0:\"\";s:33:\"client_feedback_access_permission\";N;s:35:\"team_members_note_manage_permission\";s:3:\"all\";s:25:\"can_upload_and_edit_files\";s:1:\"1\";s:14:\"can_view_files\";s:1:\"1\";s:23:\"can_comment_on_projects\";s:3:\"all\";}', 0),
(3, 'Manager ', 'a:60:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:12:\"subscription\";N;s:8:\"estimate\";N;s:8:\"contract\";N;s:8:\"proposal\";N;s:7:\"expense\";N;s:5:\"order\";N;s:6:\"client\";s:3:\"all\";s:15:\"client_specific\";s:0:\"\";s:4:\"lead\";N;s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:20:\"do_not_show_projects\";N;s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:34:\"can_edit_only_own_created_projects\";N;s:36:\"can_delete_only_own_created_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:3:\"all\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:8:\"specific\";s:27:\"message_permission_specific\";s:44:\"member:2,member:3,member:5,member:4,member:6\";s:26:\"job_info_manage_permission\";s:3:\"all\";s:32:\"can_manage_all_kinds_of_settings\";s:1:\"1\";s:36:\"can_manage_user_role_and_permissions\";N;s:34:\"can_add_or_invite_new_team_members\";s:1:\"1\";s:36:\"can_activate_deactivate_team_members\";s:1:\"1\";s:23:\"can_delete_team_members\";s:1:\"1\";s:19:\"timeline_permission\";s:8:\"specific\";s:28:\"timeline_permission_specific\";s:44:\"member:2,member:3,member:4,member:6,member:5\";s:33:\"client_feedback_access_permission\";N;s:35:\"team_members_note_manage_permission\";s:3:\"all\";s:25:\"can_upload_and_edit_files\";N;s:14:\"can_view_files\";N;s:23:\"can_comment_on_projects\";N;}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('acc_accounting_method', 'cash', 'app', 0),
('acc_active_expense_category_mapping', '1', 'app', 0),
('acc_active_payment_mode_mapping', '1', 'app', 0),
('acc_add_default_account', '1', 'app', 0),
('acc_add_default_account_new', '0', 'app', 0),
('acc_allow_changes_after_viewing', 'allow_changes_after_viewing_a_warning', 'app', 0),
('acc_close_book_password', '77082q3q', 'app', 0),
('acc_close_book_passwordr', '', 'app', 0),
('acc_close_the_books', '0', 'app', 0),
('acc_closing_date', '', 'app', 0),
('acc_credit_note_automatic_conversion', '1', 'app', 0),
('acc_credit_note_deposit_to', '13', 'app', 0),
('acc_credit_note_payment_account', '1', 'app', 0),
('acc_enable_account_numbers', '1', 'app', 0),
('acc_expense_automatic_conversion', '1', 'app', 0),
('acc_expense_deposit_to', '80', 'app', 0),
('acc_expense_payment_account', '13', 'app', 0),
('acc_expense_payment_deposit_to', '1', 'app', 0),
('acc_expense_payment_payment_account', '1', 'app', 0),
('acc_expense_tax_deposit_to', '29', 'app', 0),
('acc_expense_tax_payment_account', '13', 'app', 0),
('acc_first_month_of_financial_year', 'January', 'app', 0),
('acc_first_month_of_tax_year', 'same_as_financial_year', 'app', 0),
('acc_invoice_automatic_conversion', '1', 'app', 0),
('acc_invoice_deposit_to', '1', 'app', 0),
('acc_invoice_payment_account', '66', 'app', 0),
('acc_live_secret', '', 'app', 0),
('acc_payment_automatic_conversion', '1', 'app', 0),
('acc_payment_deposit_to', '13', 'app', 0),
('acc_payment_expense_automatic_conversion', '1', 'app', 0),
('acc_payment_payment_account', '1', 'app', 0),
('acc_payment_sale_automatic_conversion', '1', 'app', 0),
('acc_pl_net_pay_automatic_conversion', '1', 'app', 0),
('acc_pl_net_pay_deposit_to', '56', 'app', 0),
('acc_pl_net_pay_payment_account', '13', 'app', 0),
('acc_pl_tax_paye_automatic_conversion', '1', 'app', 0),
('acc_pl_tax_paye_deposit_to', '28', 'app', 0),
('acc_pl_tax_paye_payment_account', '13', 'app', 0),
('acc_pl_total_insurance_automatic_conversion', '1', 'app', 0),
('acc_pl_total_insurance_deposit_to', '32', 'app', 0),
('acc_pl_total_insurance_payment_account', '13', 'app', 0),
('acc_plaid_client_id', '', 'app', 0),
('acc_plaid_environment', 'sandbox', 'app', 0),
('acc_pur_order_automatic_conversion', '1', 'app', 0),
('acc_pur_order_deposit_to', '80', 'app', 0),
('acc_pur_order_payment_account', '13', 'app', 0),
('acc_pur_payment_automatic_conversion', '1', 'app', 0),
('acc_pur_payment_deposit_to', '37', 'app', 0),
('acc_pur_payment_payment_account', '16', 'app', 0),
('acc_sandbox_secret', '', 'app', 0),
('acc_show_account_numbers', '1', 'app', 0),
('acc_tax_automatic_conversion', '1', 'app', 0),
('acc_tax_deposit_to', '1', 'app', 0),
('acc_tax_payment_account', '29', 'app', 0),
('acc_wh_decrease_deposit_to', '1', 'app', 0),
('acc_wh_decrease_payment_account', '37', 'app', 0),
('acc_wh_increase_deposit_to', '37', 'app', 0),
('acc_wh_increase_payment_account', '87', 'app', 0),
('acc_wh_loss_adjustment_automatic_conversion', '1', 'app', 0),
('acc_wh_opening_stock_automatic_conversion', '1', 'app', 0),
('acc_wh_opening_stock_deposit_to', '37', 'app', 0),
('acc_wh_opening_stock_payment_account', '1', 'app', 0),
('acc_wh_stock_export_automatic_conversion', '1', 'app', 0),
('acc_wh_stock_export_deposit_to', '1', 'app', 0),
('acc_wh_stock_export_payment_account', '37', 'app', 0),
('acc_wh_stock_import_automatic_conversion', '1', 'app', 0),
('acc_wh_stock_import_deposit_to', '37', 'app', 0),
('acc_wh_stock_import_payment_account', '87', 'app', 0),
('accepted_file_formats', 'jpg,jpeg,png,doc,xlsx,txt,pdf,zip,webm', 'app', 0),
('allow_clients_to_export_their_data', '1', 'app', 0),
('allowed_ip_addresses', '', 'app', 0),
('app_title', 'Bamburi Convey Management System', 'app', 0),
('auto_close_ticket_after', '', 'app', 0),
('auto_create_goods_delivery', '0', 'app', 0),
('auto_create_goods_received', '0', 'app', 0),
('auto_reply_to_tickets', '', 'app', 0),
('auto_reply_to_tickets_message', '', 'app', 0),
('automatically_send_items_expired_before', '0', 'app', 0),
('automation_settings', ',new_ticket_created_by_imap_email', 'app', 0),
('barcode_with_sku_code', '0', 'app', 0),
('cancelled_invoice_reverse_inventory_delivery_voucher', '0', 'app', 0),
('client_can_access_notes', '', 'app', 0),
('client_can_access_store', '1', 'app', 0),
('client_can_add_files', '1', 'app', 0),
('client_can_add_project_files', '1', 'app', 0),
('client_can_assign_tasks', '', 'app', 0),
('client_can_comment_on_files', '1', 'app', 0),
('client_can_comment_on_tasks', '1', 'app', 0),
('client_can_create_projects', '', 'app', 0),
('client_can_create_reminders', '1', 'app', 0),
('client_can_create_tasks', '', 'app', 0),
('client_can_delete_own_files_in_project', '', 'app', 0),
('client_can_edit_projects', '', 'app', 0),
('client_can_edit_tasks', '', 'app', 0),
('client_can_view_activity', '1', 'app', 0),
('client_can_view_files', '', 'app', 0),
('client_can_view_gantt', '', 'app', 0),
('client_can_view_milestones', '1', 'app', 0),
('client_can_view_overview', '1', 'app', 0),
('client_can_view_project_files', '1', 'app', 0),
('client_can_view_tasks', '1', 'app', 0),
('client_default_dashboard', 'a:5:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:14:\"total_projects\";s:5:\"title\";s:14:\"Total projects\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:11:\"new_tickets\";s:5:\"title\";s:11:\"New Tickets\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:12:\"open_tickets\";s:5:\"title\";s:12:\"Open tickets\";}}}s:5:\"ratio\";s:5:\"4-4-4\";}i:1;O:8:\"stdClass\":2:{s:7:\"columns\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:14:\"total_payments\";s:5:\"title\";s:14:\"Total payments\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:9:\"total_due\";s:5:\"title\";s:9:\"Total due\";}}}s:5:\"ratio\";s:3:\"6-6\";}i:2;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:18:\"invoice_statistics\";s:5:\"title\";s:18:\"Invoice Statistics\";}}}s:5:\"ratio\";s:2:\"12\";}i:3;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:17:\"open_tickets_list\";s:5:\"title\";s:17:\"Open tickets list\";}}}s:5:\"ratio\";s:2:\"12\";}i:4;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:6:\"events\";s:5:\"title\";s:6:\"Events\";}}}s:5:\"ratio\";s:2:\"12\";}}', 'app', 0),
('client_message_own_contacts', '1', 'app', 0),
('client_message_users', '', 'app', 0),
('clients_can_request_account_removal', '1', 'app', 0),
('contract_color', '#000000', 'app', 0),
('conversion_rate', 'a:1:{s:3:\"KES\";s:1:\"1\";}', 'app', 0),
('create_tickets_only_by_registered_emails', '', 'app', 0),
('currency_position', 'left', 'app', 0),
('currency_symbol', 'Ksh', 'app', 0),
('date_format', 'Y-m-d', 'app', 0),
('debit_note_prefix', '#DBN', 'app', 0),
('decimal_separator', '.', 'app', 0),
('default_client_left_menu', 'a:16:{i:0;a:1:{s:4:\"name\";s:9:\"dashboard\";}i:1;a:1:{s:4:\"name\";s:6:\"events\";}i:2;a:1:{s:4:\"name\";s:8:\"projects\";}i:3;a:1:{s:4:\"name\";s:5:\"store\";}i:4;a:1:{s:4:\"name\";s:6:\"orders\";}i:5;a:1:{s:4:\"name\";s:16:\"invoice_payments\";}i:6;a:1:{s:4:\"name\";s:9:\"contracts\";}i:7;a:1:{s:4:\"name\";s:9:\"proposals\";}i:8;a:1:{s:4:\"name\";s:9:\"estimates\";}i:9;a:1:{s:4:\"name\";s:8:\"invoices\";}i:10;a:1:{s:4:\"name\";s:13:\"announcements\";}i:11;a:1:{s:4:\"name\";s:4:\"todo\";}i:12;a:1:{s:4:\"name\";s:7:\"tickets\";}i:13;a:1:{s:4:\"name\";s:14:\"knowledge_base\";}i:14;a:1:{s:4:\"name\";s:14:\"jitsi_meetings\";}i:15;a:1:{s:4:\"name\";s:10:\"my_profile\";}}', 'app', 0),
('default_contract_template', '1', 'app', 0),
('default_currency', 'KES', 'app', 0),
('default_due_date_after_billing_date', '14', 'app', 0),
('default_left_menu', 'a:26:{i:0;a:1:{s:4:\"name\";s:9:\"dashboard\";}i:1;a:1:{s:4:\"name\";s:5:\"tasks\";}i:2;a:1:{s:4:\"name\";s:7:\"tickets\";}i:3;a:5:{s:4:\"name\";s:10:\"Add Ticket\";s:12:\"language_key\";s:0:\"\";s:3:\"url\";s:60:\"https://business.villageinternational.net/index.php/tickets#\";s:4:\"icon\";s:4:\"plus\";s:15:\"open_in_new_tab\";s:0:\"\";}i:4;a:5:{s:4:\"name\";s:9:\"Timesheet\";s:12:\"language_key\";s:0:\"\";s:3:\"url\";s:75:\"https://business.villageinternational.net/index.php/projects/all_timesheets\";s:4:\"icon\";s:5:\"watch\";s:15:\"open_in_new_tab\";s:0:\"\";}i:5;a:1:{s:4:\"name\";s:7:\"reports\";}i:6;a:1:{s:4:\"name\";s:7:\"clients\";}i:7;a:1:{s:4:\"name\";s:8:\"projects\";}i:8;a:1:{s:4:\"name\";s:4:\"todo\";}i:9;a:1:{s:4:\"name\";s:5:\"notes\";}i:10;a:1:{s:4:\"name\";s:8:\"messages\";}i:11;a:1:{s:4:\"name\";s:4:\"team\";}i:12;a:2:{s:4:\"name\";s:12:\"team_members\";s:11:\"is_sub_menu\";s:1:\"1\";}i:13;a:2:{s:4:\"name\";s:10:\"attendance\";s:11:\"is_sub_menu\";s:1:\"1\";}i:14;a:2:{s:4:\"name\";s:6:\"leaves\";s:11:\"is_sub_menu\";s:1:\"1\";}i:15;a:2:{s:4:\"name\";s:8:\"timeline\";s:11:\"is_sub_menu\";s:1:\"1\";}i:16;a:2:{s:4:\"name\";s:13:\"announcements\";s:11:\"is_sub_menu\";s:1:\"1\";}i:17;a:1:{s:4:\"name\";s:5:\"files\";}i:18;a:1:{s:4:\"name\";s:16:\"help_and_support\";}i:19;a:2:{s:4:\"name\";s:4:\"help\";s:11:\"is_sub_menu\";s:1:\"1\";}i:20;a:2:{s:4:\"name\";s:13:\"help_articles\";s:11:\"is_sub_menu\";s:1:\"1\";}i:21;a:2:{s:4:\"name\";s:15:\"help_categories\";s:11:\"is_sub_menu\";s:1:\"1\";}i:22;a:2:{s:4:\"name\";s:14:\"knowledge_base\";s:11:\"is_sub_menu\";s:1:\"1\";}i:23;a:2:{s:4:\"name\";s:23:\"knowledge_base_articles\";s:11:\"is_sub_menu\";s:1:\"1\";}i:24;a:2:{s:4:\"name\";s:25:\"knowledge_base_categories\";s:11:\"is_sub_menu\";s:1:\"1\";}i:25;a:1:{s:4:\"name\";s:8:\"settings\";}}', 'app', 0),
('default_permissions_for_non_primary_contact', 'projects', 'app', 0),
('default_proposal_template', '1', 'app', 0),
('default_theme_color', '1E202D', 'app', 0),
('disable_access_favorite_project_option_for_clients', '', 'app', 0),
('disable_client_login', '', 'app', 0),
('disable_client_signup', '', 'app', 0),
('disable_dashboard_customization_by_clients', '', 'app', 0),
('disable_editing_left_menu_by_clients', '', 'app', 0),
('disable_topbar_menu_customization', '', 'app', 0),
('disable_user_invitation_option_by_clients', '', 'app', 0),
('display_product_name_when_print_barcode', '1', 'app', 0),
('e_next_order_return_number', '1', 'app', 0),
('e_order_return_number_prefix', 'DEReturn', 'app', 0),
('easy_backup_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0),
('email_sent_from_address', 'info@zurihub.co.ke', 'app', 0),
('email_sent_from_name', 'System', 'app', 0),
('enable_audio_recording', '1', 'app', 0),
('enable_email_piping', '1', 'app', 0),
('enable_embedded_form_to_get_tickets', '', 'app', 0),
('enable_footer', '1', 'app', 0),
('enable_gdpr', '1', 'app', 0),
('enable_rich_text_editor', '0', 'app', 0),
('enable_top_menu', '1', 'app', 0),
('estimate_color', '#000000', 'app', 0),
('favicon', 'a:1:{s:9:\"file_name\";s:30:\"_file67da3af992674-favicon.jpg\";}', 'app', 0),
('first_day_of_week', '0', 'app', 0),
('footer_copyright_text', 'Bamburi &copy; 2025', 'app', 0),
('footer_menus', 'a:0:{}', 'app', 0),
('gdpr_terms_and_conditions_link', '', 'app', 0),
('goods_delivery_pdf_display', '0', 'app', 0),
('goods_delivery_pdf_display_outstanding', '0', 'app', 0),
('goods_delivery_pdf_display_warehouse_lotnumber_bottom_infor', '0', 'app', 0),
('goods_delivery_required_po', '0', 'app', 0),
('goods_receipt_required_po', '0', 'app', 0),
('goods_receipt_warehouse', '0', 'app', 0),
('hidden_client_menus', '', 'app', 0),
('imap_authorized', '0', 'app', 0),
('imap_email', 'info@zurihub.co.ke', 'app', 0),
('imap_encryption', 'ssl/validate-cert', 'app', 0),
('imap_failed_login_attempts_count', '0', 'app', 0),
('imap_host', '993', 'app', 0),
('imap_password', 'ab070c8377165ea76950c51e0df20b6a7a24e91372606429cbe1c676d315e098fc8c3bc82fbe7bf638839190a599b675626d17a8c2148f5961214ba8f80b4437e1a33d1d75c27bfb5bb535a619849c9b87fbfb36af062cd299ad72e29f4a99cad77268a2db9a5da889', 'app', 0),
('imap_port', '465', 'app', 0),
('imap_type', 'general_imap', 'app', 0),
('internal_delivery_number_prefix', 'ID', 'app', 0),
('inventory_auto_operations_hour', '0', 'app', 0),
('inventory_cronjob_notification_recipients', '', 'app', 0),
('inventory_delivery_number_prefix', 'XK', 'app', 0),
('inventory_received_number_prefix', 'NK', 'app', 0),
('inventorys_cronjob_active', '0', 'app', 0),
('invoice_color', '#000000', 'app', 0),
('invoice_item_list_background', '#f4f4f4', 'app', 0),
('invoice_logo', 'default-invoice-logo.png', 'app', 0),
('invoice_number_format', '{SERIAL}', 'app', 0),
('invoice_prefix', 'INVOICE #', 'app', 0),
('item_by_vendor', '0', 'app', 0),
('item_purchase_code', 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', 'app', 0),
('item_sku_prefix', '', 'app', 0),
('landing_page', '', 'app', 0),
('language', 'english', 'app', 0),
('login_as_client_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0),
('module_announcement', '1', 'app', 0),
('module_attendance', '1', 'app', 0),
('module_chat', '1', 'app', 0),
('module_contract', '', 'app', 0),
('module_estimate', '', 'app', 0),
('module_estimate_request', '', 'app', 0),
('module_event', '', 'app', 0),
('module_expense', '', 'app', 0),
('module_file_manager', '1', 'app', 0),
('module_gantt', '1', 'app', 0),
('module_help', '1', 'app', 0),
('module_invoice', '', 'app', 0),
('module_knowledge_base', '1', 'app', 0),
('module_lead', '', 'app', 0),
('module_leave', '1', 'app', 0),
('module_message', '1', 'app', 0),
('module_note', '1', 'app', 0),
('module_order', '', 'app', 0),
('module_project_timesheet', '1', 'app', 0),
('module_proposal', '', 'app', 0),
('module_reminder', '1', 'app', 0),
('module_subscription', '', 'app', 0),
('module_ticket', '1', 'app', 0),
('module_timeline', '1', 'app', 0),
('module_todo', '1', 'app', 0),
('next_internal_delivery_mumber', '1', 'app', 0),
('next_inventory_delivery_mumber', '1', 'app', 0),
('next_inventory_received_mumber', '1', 'app', 0),
('next_order_return_number', '1', 'app', 0),
('next_packing_list_number', '1', 'app', 0),
('next_pur_order_return_number', '1', 'app', 0),
('next_pur_pur_estimate_number', '1', 'app', 0),
('next_purchase_order_number', '1', 'app', 0),
('next_purchase_request_number', '1', 'app', 0),
('no_of_decimals', '2', 'app', 0),
('order_color', '#000000', 'app', 0),
('order_return_number_prefix', 'ReReturn', 'app', 0),
('outlook_imap_client_id', '', 'app', 0),
('outlook_imap_client_secret', '', 'app', 0),
('packing_list_number_prefix', 'PL', 'app', 0),
('password_manager_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0),
('plugins', 'a:17:{s:10:\"Accounting\";s:9:\"activated\";s:18:\"AWS_S3_Integration\";s:9:\"activated\";s:11:\"Easy_Backup\";s:9:\"activated\";s:23:\"Google_Meet_Integration\";s:9:\"activated\";s:9:\"Warehouse\";s:9:\"activated\";s:17:\"Jitsi_Integration\";s:9:\"activated\";s:15:\"Login_As_Client\";s:9:\"activated\";s:7:\"Mailbox\";s:9:\"activated\";s:27:\"Microsoft_Teams_Integration\";s:9:\"activated\";s:16:\"Password_manager\";s:9:\"activated\";s:5:\"Polls\";s:9:\"activated\";s:8:\"Purchase\";s:9:\"activated\";s:7:\"RestApi\";s:9:\"activated\";s:29:\"SMS Notification for RISE CRM\";s:9:\"activated\";s:12:\"Social_Login\";s:9:\"activated\";s:9:\"TwoFactor\";s:9:\"activated\";s:16:\"Zoom_Integration\";s:9:\"activated\";}', 'app', 0),
('po_only_prefix_and_number', '0', 'app', 0),
('profit_rate_by_purchase_price_sale', '0', 'app', 0),
('project_reference_in_tickets', '1', 'app', 0),
('project_tab_order', 'overview,notes,comments,customer_feedback,timesheets,milestones,tickets,files,tasks_list,gantt', 'app', 0),
('project_tab_order_of_clients', '', 'app', 0),
('proposal_color', '#000000', 'app', 0),
('pur_estimate_prefix', '#EST', 'app', 0),
('pur_inv_prefix', '#BILL', 'app', 0),
('pur_invoice_auto_operations_hour', '21', 'app', 0),
('pur_next_inv_number', '1', 'app', 0),
('pur_order_prefix', '#PO', 'app', 0),
('pur_order_return_number_prefix', '#OR', 'app', 0),
('pur_request_prefix', '#PR', 'app', 0),
('pur_terms_and_conditions', '', 'app', 0),
('purchase_order_setting', '1', 'app', 0),
('pwa_icon', 'a:1:{s:9:\"file_name\";s:31:\"_file67da704e4af1a-pwa_icon.png\";}', 'app', 0),
('pwa_theme_color', '#1c2026', 'app', 0),
('reset_purchase_order_number_every_month', '1', 'app', 0),
('RestApi_last_verification', '1742355817', 'app', 0),
('RestApi_verification_id', '112233', 'app', 0),
('RestApi_verified', '1', 'app', 0),
('revert_goods_receipt_goods_delivery', '0', 'app', 0),
('rows_per_page', '10', 'app', 0),
('scrollbar', 'jquery', 'app', 0),
('send_email_welcome_for_new_contact', '1', 'app', 0),
('show_background_image_in_signin_page', 'no', 'app', 0),
('show_item_cf_on_pdf', '0', 'app', 0),
('show_logo_in_signin_page', 'yes', 'app', 0),
('show_purchase_tax_column', '0', 'app', 0),
('show_recent_ticket_comments_at_the_top', '1', 'app', 0),
('show_terms_and_conditions_in_client_signup_page', '', 'app', 0),
('show_the_status_checkbox_in_tasks_list', '1', 'app', 0),
('show_theme_color_changer', 'yes', 'app', 0),
('signin_page_background', 'sigin-background-image.jpg', 'app', 0),
('site_logo', 'a:1:{s:9:\"file_name\";s:32:\"_file67da3e4a138bb-site-logo.png\";}', 'app', 0),
('staff_default_dashboard', '1', 'app', 0),
('task_point_range', '5', 'app', 0),
('ticket_prefix', '', 'app', 0),
('time_format', 'small', 'app', 0),
('timezone', 'Africa/Nairobi', 'app', 0),
('top_menus', 'a:2:{i:0;O:8:\"stdClass\":2:{s:9:\"menu_name\";s:14:\"Knowledge Base\";s:3:\"url\";s:66:\"https://business.villageinternational.net/index.php/knowledge_base\";}i:1;O:8:\"stdClass\":2:{s:9:\"menu_name\";s:4:\"Help\";s:3:\"url\";s:1:\"#\";}}', 'app', 0),
('uncancelled_invoice_create_inventory_delivery_voucher', '0', 'app', 0),
('user_1_dashboard', '', 'user', 0),
('user_3_dashboard', '', 'user', 0),
('user_4_dashboard', '', 'user', 0),
('user_5_dashboard', '', 'user', 0),
('user_6_dashboard', '', 'user', 0),
('user_7_dashboard', '', 'user', 0),
('users_can_input_only_total_hours_instead_of_period', '1', 'app', 0),
('users_can_start_multiple_timers_at_a_time', '1', 'app', 0),
('vendor_note', '', 'app', 0),
('verify_email_before_client_signup', '', 'app', 0),
('warehouse_integer_part', '0', 'app', 0),
('warehouse_receive_return_order', '0', 'app', 0),
('warehouse_selling_price_rule_profif_ratio', '0', 'app', 0),
('warehouse_the_fractional_part', '0', 'app', 0),
('weekends', '', 'app', 0),
('wh_display_shipment_on_client_portal', '1', 'app', 0),
('wh_fee_for_return_order', '0', 'app', 0),
('wh_refund_loyaty_point', '1', 'app', 0),
('wh_return_policies_information', '', 'app', 0),
('wh_return_request_within_x_day', '30', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_social_links`
--

CREATE TABLE `system_social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `googleplus` text DEFAULT NULL,
  `digg` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `pinterest` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `github` text DEFAULT NULL,
  `tumblr` text DEFAULT NULL,
  `vine` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_social_login_settings`
--

CREATE TABLE `system_social_login_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_social_login_settings`
--

INSERT INTO `system_social_login_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('social_login_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_stripe_ipn`
--

CREATE TABLE `system_stripe_ipn` (
  `id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  `verification_code` text NOT NULL,
  `payment_verification_code` text NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `setup_intent` text NOT NULL,
  `subscription_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_subscriptions`
--

CREATE TABLE `system_subscriptions` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `bill_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `labels` text NOT NULL,
  `status` enum('draft','pending','active','cancelled') NOT NULL DEFAULT 'draft',
  `payment_status` enum('success','failed') NOT NULL DEFAULT 'success',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 1,
  `repeat_type` enum('days','weeks','months','years') DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `files` mediumtext NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('app','stripe') NOT NULL DEFAULT 'app',
  `stripe_subscription_id` text NOT NULL,
  `stripe_product_id` text NOT NULL,
  `stripe_product_price_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_subscription_items`
--

CREATE TABLE `system_subscription_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `subscription_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_tasks`
--

CREATE TABLE `system_tasks` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT 0,
  `assigned_to` int(11) NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `labels` text DEFAULT NULL,
  `points` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('to_do','in_progress','done') NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `collaborators` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `recurring_task_id` int(11) NOT NULL DEFAULT 0,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `created_date` date DEFAULT NULL,
  `blocking` text NOT NULL,
  `blocked_by` text NOT NULL,
  `parent_task_id` int(11) NOT NULL,
  `next_recurring_date` date DEFAULT NULL,
  `reminder_date` date DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `status_changed_at` datetime DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `expense_id` int(11) NOT NULL DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `proposal_id` int(11) NOT NULL DEFAULT 0,
  `contract_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `estimate_id` int(11) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `context` enum('project','client','lead','invoice','estimate','order','contract','proposal','subscription','ticket','expense','general') NOT NULL DEFAULT 'general',
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_tasks`
--

INSERT INTO `system_tasks` (`id`, `title`, `description`, `project_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `points`, `status`, `status_id`, `priority_id`, `start_date`, `collaborators`, `sort`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `recurring_task_id`, `no_of_cycles_completed`, `created_date`, `blocking`, `blocked_by`, `parent_task_id`, `next_recurring_date`, `reminder_date`, `ticket_id`, `status_changed_at`, `deleted`, `expense_id`, `subscription_id`, `proposal_id`, `contract_id`, `order_id`, `estimate_id`, `invoice_id`, `lead_id`, `client_id`, `context`, `created_by`) VALUES
(1, 'Belt Slippage - Section A', 'The conveyor belt in Section A is slipping frequently. Possible cause: Tension misalignment', 1, 0, 0, NULL, '', 5, 'to_do', 1, 0, '2025-03-19 00:00:00', '', 1000, 0, 0, '', 0, 0, 0, '2025-03-19', '', '', 0, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(2, 'Belt Slippage - Section A', 'The conveyor belt in Section A is slipping frequently. Possible cause: Tension misalignment', 1, 0, 0, NULL, '', 5, 'to_do', 1, 2, '2025-03-19 00:00:00', '', 1001, 0, 0, '', 0, 0, 0, '2025-03-19', '', '', 0, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(3, 'Inspect Belt Condition', NULL, 1, 0, 1, NULL, NULL, 1, 'to_do', 3, 0, NULL, '', 1002, 0, 0, NULL, 0, 0, 0, '2025-03-19', '', '', 2, NULL, NULL, 0, '2025-03-19 06:40:34', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(4, 'Check & Adjust Tension', NULL, 1, 0, 1, NULL, NULL, 1, 'to_do', 1, 0, NULL, '', 1003, 0, 0, NULL, 0, 0, 0, '2025-03-19', '', '', 2, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(5, 'Realign Conveyor System', NULL, 1, 0, 1, NULL, NULL, 1, 'to_do', 1, 0, NULL, '', 1004, 0, 0, NULL, 0, 0, 0, '2025-03-19', '', '', 2, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(6, 'Lubricate Necessary Parts ', NULL, 1, 0, 1, NULL, NULL, 1, 'to_do', 1, 0, NULL, '', 1005, 0, 0, NULL, 0, 0, 0, '2025-03-19', '', '', 2, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(7, 'Test Conveyor & Document Findings ', NULL, 1, 0, 1, NULL, NULL, 1, 'to_do', 2, 0, NULL, '', 1006, 0, 0, NULL, 0, 0, 0, '2025-03-19', '', '', 2, NULL, NULL, 0, '2025-03-19 06:09:33', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(8, 'Routine Equipment Inspection', 'Conduct a routine inspection of all factory equipment to identify any potential issues and ensure proper functionality.', 2, 0, 6, '2025-03-28 00:00:00', '', 2, 'to_do', 2, 2, '2025-03-19 00:00:00', '4,3,6', 1000, 0, 0, '', 0, 0, 0, '2025-03-19', '', '', 0, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 6),
(9, 'Conveyer Belt 1', 'Problem 1', 0, 0, 5, NULL, '', 5, 'to_do', 1, 2, '2025-03-19 00:00:00', '', 1006, 0, 0, '', 0, 0, 0, '2025-03-19', '', '', 0, NULL, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ticket', 1),
(10, 'Conveyer Belt Task 1', 'Problem 1\r\nProblem 2\r\nProblem 3\r\nProblem 4', 0, 0, 5, NULL, '', 4, 'to_do', 1, 2, '2025-03-19 00:00:00', '', 1007, 0, 0, '', 0, 0, 0, '2025-03-19', '', '', 0, NULL, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ticket', 1),
(11, 'Task 1', 'problem 1\r\nProblem 1\r\nProblem 1', 0, 0, 5, NULL, '', 3, 'to_do', 1, 3, '2025-03-19 00:00:00', '2', 1008, 0, 0, '', 0, 0, 0, '2025-03-19', '', '', 0, NULL, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ticket', 1),
(12, 'Phase 1 Task', 'Convey Check Phase 1 Task', 1, 1, 1, NULL, '', 2, 'to_do', 2, 2, '2025-03-20 00:00:00', '', 1007, 0, 0, '', 0, 0, 0, '2025-03-20', '', '', 0, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'project', 1),
(13, 'Fix Generator ', 'In Plant A', 0, 0, 3, '2025-03-20 00:00:00', '', 1, 'to_do', 1, 2, '2025-03-20 00:00:00', '5', 1009, 0, 0, '', 0, 0, 0, '2025-03-20', '', '', 0, NULL, NULL, 3, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ticket', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_task_priority`
--

CREATE TABLE `system_task_priority` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `color` varchar(7) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_task_priority`
--

INSERT INTO `system_task_priority` (`id`, `title`, `icon`, `color`, `deleted`) VALUES
(1, 'Minor', 'arrow-down', '#aab7b7', 0),
(2, 'Major', 'arrow-up', '#e18a00', 0),
(3, 'Critical ', 'alert-circle', '#ad159e', 0),
(4, 'Blocker ', 'alert-octagon', '#e74c3c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_task_status`
--

CREATE TABLE `system_task_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `key_name` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `sort` int(11) NOT NULL,
  `hide_from_kanban` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `hide_from_non_project_related_tasks` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_task_status`
--

INSERT INTO `system_task_status` (`id`, `title`, `key_name`, `color`, `sort`, `hide_from_kanban`, `deleted`, `hide_from_non_project_related_tasks`) VALUES
(1, 'To Do', 'to_do', '#F9A52D', 0, 0, 0, 0),
(2, 'In progress', 'in_progress', '#1672B9', 1, 0, 0, 0),
(3, 'Done', 'done', '#00B393', 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_taxes`
--

CREATE TABLE `system_taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_tax_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_taxes`
--

INSERT INTO `system_taxes` (`id`, `title`, `percentage`, `deleted`, `stripe_tax_id`) VALUES
(1, 'Tax (10%)', 10, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `system_team`
--

CREATE TABLE `system_team` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `members` mediumtext NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_team`
--

INSERT INTO `system_team` (`id`, `title`, `members`, `deleted`) VALUES
(1, 'Admin', '6', 1),
(2, 'Administrator', '6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_team_member_job_info`
--

CREATE TABLE `system_team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `salary` double NOT NULL DEFAULT 0,
  `salary_term` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_team_member_job_info`
--

INSERT INTO `system_team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `salary_term`) VALUES
(1, 2, '2025-01-01', 0, 0, 'Monthly'),
(2, 3, '0000-00-00', 0, 0, 'Monthly'),
(3, 4, '0000-00-00', 0, 0, 'Monthly'),
(4, 5, '0000-00-00', 0, 0, 'Monthly'),
(5, 6, '0000-00-00', 0, 0, 'Monthly');

-- --------------------------------------------------------

--
-- Table structure for table `system_tickets`
--

CREATE TABLE `system_tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `ticket_type_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT 0,
  `creator_name` varchar(100) NOT NULL,
  `creator_email` varchar(255) NOT NULL,
  `labels` text DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `closed_at` datetime NOT NULL,
  `merged_with_ticket_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_tickets`
--

INSERT INTO `system_tickets` (`id`, `client_id`, `project_id`, `ticket_type_id`, `title`, `created_by`, `requested_by`, `created_at`, `status`, `last_activity_at`, `assigned_to`, `creator_name`, `creator_email`, `labels`, `task_id`, `closed_at`, `merged_with_ticket_id`, `deleted`) VALUES
(1, 1, 0, 2, 'Conveyor Belt Malfunction in Section A', 7, 7, '2025-03-19 08:55:55', 'open', '2025-03-19 09:00:56', 6, '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 1, 0, 2, 'Conveyer Belt 1', 3, 0, '2025-03-19 16:32:57', 'new', '2025-03-19 16:32:57', 5, '', '', '13,5', 0, '0000-00-00 00:00:00', 0, 0),
(3, 1, 0, 2, 'Generator Not Working', 1, 0, '2025-03-20 13:05:52', 'new', '2025-03-20 13:05:52', 2, '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_ticket_comments`
--

CREATE TABLE `system_ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext DEFAULT NULL,
  `is_note` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_ticket_comments`
--

INSERT INTO `system_ticket_comments` (`id`, `created_by`, `created_at`, `description`, `ticket_id`, `files`, `is_note`, `deleted`) VALUES
(1, 7, '2025-03-19 08:55:55', 'The conveyor belt in Section A has stopped functioning due to frequent slippage. Initial troubleshooting suggests a possible tension misalignment. Urgent resolution is required to prevent production downtime.', 1, 'a:0:{}', 0, 0),
(2, 6, '2025-03-19 09:00:56', 'Checked the conveyor belt in Section A. Confirmed tension misalignment as the cause of the issue. Adjusted the tension and tested the system—belt is now running smoothly. Monitoring for any further slippage over the next 24 hours. Will update if additional adjustments are needed', 1, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:71:\"ticket_file67da87c8af70f-rubber-conveyor-belts-nylon-conveyor-belts.jpg\";s:9:\"file_size\";s:5:\"92458\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0, 0),
(3, 3, '2025-03-19 16:32:57', 'Issue 1', 2, 'a:0:{}', 0, 0),
(4, 1, '2025-03-20 13:05:52', 'No Power in Plant A', 3, 'a:0:{}', 0, 0),
(5, 1, '2025-03-20 13:10:16', 'This template is used to report system downtime incidents, including the affected module, time of occurrence, and impact on operations.', 3, 'a:0:{}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_ticket_templates`
--

CREATE TABLE `system_ticket_templates` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `private` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_ticket_templates`
--

INSERT INTO `system_ticket_templates` (`id`, `title`, `description`, `ticket_type_id`, `private`, `created_by`, `created_at`, `deleted`) VALUES
(1, 'System Downtime Report', 'This template is used to report system downtime incidents, including the affected module, time of occurrence, and impact on operations.', 2, '', 1, '2025-03-19 09:04:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_ticket_types`
--

CREATE TABLE `system_ticket_types` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_ticket_types`
--

INSERT INTO `system_ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0),
(2, 'Equipment Failure', 0),
(3, 'Safety Hazard', 0),
(4, 'Quality Defect', 0),
(5, 'Process Deviation', 0),
(6, 'Maintenance Request', 0),
(7, 'Technical Glitch', 0),
(8, 'Resource Shortage', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_to_do`
--

CREATE TABLE `system_to_do` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `labels` text DEFAULT NULL,
  `status` enum('to_do','done') NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_to_do`
--

INSERT INTO `system_to_do` (`id`, `created_by`, `created_at`, `title`, `description`, `labels`, `status`, `start_date`, `deleted`) VALUES
(1, 6, '2025-03-19 06:11:11', 'Review Equipment Maintenance Logs', 'Check all equipment maintenance logs for any unresolved issues and ensure reports are up to date.', '15', 'to_do', '2025-03-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_twofactor_settings`
--

CREATE TABLE `system_twofactor_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_twofactor_settings`
--

INSERT INTO `system_twofactor_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('twofactor_email_default_message', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Somebody (hopefully you) just attempted to log into the account for <b>{LOGIN_EMAIL}</b>.</p><p style=\"\"><font color=\"#555555\"><span style=\"font-size: 14px;\">Please confirm your login by entering the code from below:</span></font></p><div style=\"background-color: #eeeeef; padding: 30px 0; text-align: center\"><h2>{CODE}</h2></div><p style=\"\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">This code will expire in <b>2&nbsp;hours</b>.</p><p style=\"\"><font color=\"#555555\"><span style=\"font-size: 14px;\">If this was not you, please change your password to make sure your account is secure.</span></font></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', 'app', 0),
('twofactor_email_subject', 'Confirm your login', 'app', 0),
('twofactor_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_twofactor_verification`
--

CREATE TABLE `system_twofactor_verification` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `code` varchar(10) NOT NULL,
  `params` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_type` enum('staff','client','lead','vendor') NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT 0,
  `job_title` varchar(100) NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT 0,
  `note` mediumtext DEFAULT NULL,
  `address` text DEFAULT NULL,
  `alternative_address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `alternative_phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `sticky_note` mediumtext DEFAULT NULL,
  `skype` text DEFAULT NULL,
  `language` varchar(50) NOT NULL,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT 1,
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `requested_account_removal` tinyint(1) NOT NULL DEFAULT 0,
  `client_permissions` text DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `language`, `enable_web_notification`, `enable_email_notification`, `created_at`, `last_online`, `requested_account_removal`, `client_permissions`, `deleted`, `vendor_id`) VALUES
(1, 'System', 'Admin', 'staff', 1, 0, 'info@zurihub.co.ke', '$2y$10$sbH5pox8gHoc4HKk97gXAO3PUC1peY0zVeMnCxvhL1rF2CYOR1oIO', 'a:1:{s:9:\"file_name\";s:29:\"_file67dc0bb0d6a1f-avatar.png\";}', 'active', NULL, 0, '2025-03-19 18:14:59', 0, 'Admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, '', 1, 1, '0000-00-00 00:00:00', '2025-03-20 13:45:00', 0, NULL, 0, NULL),
(2, 'John ', 'Kamau', 'staff', 0, 2, 'john.kamau@factory.com', '$2y$10$NZDOoMByxHwOrIfZx2SJoOqUcKpl6D27i79/rEhvB76KMiaqxicay', NULL, 'active', NULL, 0, NULL, 0, 'Senior Engineer', 0, NULL, 'Nairobi', NULL, '0758256440', NULL, NULL, NULL, 'male', NULL, NULL, '', 1, 1, '2025-03-19 04:55:42', NULL, 0, NULL, 0, NULL),
(3, 'Jane ', 'Mwangi', 'staff', 0, 1, 'jane.mwangi@factory.com', '$2y$10$yu3N/noxZrnaFMtQYiyMv.AEQb8OMaZQ3EYo4ga27A2XQ/2RDz3Hq', NULL, 'active', NULL, 0, NULL, 0, 'Inspection Officer', 0, NULL, 'Nairobi', NULL, '0758256440', NULL, NULL, NULL, 'female', NULL, NULL, '', 1, 1, '2025-03-19 04:57:02', '2025-03-19 17:16:37', 0, NULL, 0, NULL),
(4, 'Peter ', 'Otieno', 'staff', 0, 1, 'peter.otieno@factory.com', '$2y$10$pYSM00SDAh5YYJgoj6Vs/u8iReRR.x3Ri8isGzW4ndMCHr5xV9C5W', NULL, 'active', NULL, 0, NULL, 0, 'Maintenance Supervisor', 1, NULL, 'Nairobi', NULL, '0758256440', NULL, NULL, NULL, 'male', NULL, NULL, '', 1, 1, '2025-03-19 04:58:05', '2025-03-19 15:28:40', 0, NULL, 0, NULL),
(5, 'Kevin ', 'Njoroge', 'staff', 0, 2, 'kevin.njoroge@factory.com', '$2y$10$MZftlGUGR0IJxbWTitY6s.vDnw8VgDn3LCByhVtY7RpEhFK.efnOS', NULL, 'active', NULL, 0, '2025-03-19 16:54:25', 0, 'Electrical Engineer', 0, NULL, 'Nairobi', '', '0758256440', '', '0000-00-00', '', 'male', NULL, '', '', 1, 1, '2025-03-19 04:58:56', '2025-03-19 17:44:27', 0, NULL, 0, NULL),
(6, 'Lucy ', 'Wanjiku', 'staff', 0, 3, 'lucy.wanjiku@factory.com', '$2y$10$TsYhJKljSN6DmDNI7HeWkekkTKQLVrApRKESkncnTxdaZ4tboupzu', NULL, 'active', NULL, 0, '2025-03-19 15:43:31', 0, 'Operations Manager', 0, NULL, 'Nairobi', NULL, '0758256440', NULL, NULL, NULL, 'female', NULL, NULL, '', 1, 1, '2025-03-19 04:59:46', '2025-03-19 16:38:14', 0, NULL, 0, NULL),
(7, 'Dennis', 'Mwangi', 'client', 0, 0, 'mwangidennis546@gmail.com', '$2y$10$7ZcQA4aLcaF.JRICCgZbGe/LE86NMZuD3G6mDhjSba441gKdiEFCy', NULL, 'active', NULL, 1, NULL, 1, 'Full Stack Developer', 0, '', NULL, NULL, '0758256440', NULL, NULL, NULL, 'male', NULL, '', '', 1, 1, '2025-03-19 07:40:32', '2025-03-19 18:17:03', 0, 'all', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_verification`
--

CREATE TABLE `system_verification` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` enum('invoice_payment','reset_password','verify_email','invitation') NOT NULL,
  `code` varchar(10) NOT NULL,
  `params` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_warehouse`
--

CREATE TABLE `system_warehouse` (
  `warehouse_id` int(11) UNSIGNED NOT NULL,
  `warehouse_code` varchar(100) DEFAULT NULL,
  `warehouse_name` text DEFAULT NULL,
  `warehouse_address` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip_code` text DEFAULT NULL,
  `country` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_warehouse`
--

INSERT INTO `system_warehouse` (`warehouse_id`, `warehouse_code`, `warehouse_name`, `warehouse_address`, `order`, `display`, `note`, `city`, `state`, `zip_code`, `country`) VALUES
(1, '001', 'Main Storage ', 'Nairobi', 1, 1, '', 'Nairobi', '', '00100', 'Kenya'),
(2, '002', 'Distribution Hub', 'Nairobi', 1, 1, '', 'Nairobi', '', '00100', 'Kenya'),
(3, '003', 'Regional Depot', 'Nairobi', 1, 1, '', 'Nairobi', '', '00100', 'Kenya');

-- --------------------------------------------------------

--
-- Table structure for table `system_ware_body_type`
--

CREATE TABLE `system_ware_body_type` (
  `body_type_id` int(11) UNSIGNED NOT NULL,
  `body_code` varchar(100) DEFAULT NULL,
  `body_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_ware_color`
--

CREATE TABLE `system_ware_color` (
  `color_id` int(11) UNSIGNED NOT NULL,
  `color_code` varchar(100) DEFAULT NULL,
  `color_name` varchar(100) DEFAULT NULL,
  `color_hex` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_ware_commodity_type`
--

CREATE TABLE `system_ware_commodity_type` (
  `commodity_type_id` int(11) UNSIGNED NOT NULL,
  `commondity_code` varchar(100) DEFAULT NULL,
  `commondity_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_ware_size_type`
--

CREATE TABLE `system_ware_size_type` (
  `size_type_id` int(11) UNSIGNED NOT NULL,
  `size_code` varchar(100) DEFAULT NULL,
  `size_name` text DEFAULT NULL,
  `size_symbol` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_ware_style_type`
--

CREATE TABLE `system_ware_style_type` (
  `style_type_id` int(11) UNSIGNED NOT NULL,
  `style_code` varchar(100) DEFAULT NULL,
  `style_barcode` text DEFAULT NULL,
  `style_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_ware_unit_type`
--

CREATE TABLE `system_ware_unit_type` (
  `unit_type_id` int(11) UNSIGNED NOT NULL,
  `unit_code` varchar(100) DEFAULT NULL,
  `unit_name` text DEFAULT NULL,
  `unit_symbol` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_activity_log`
--

CREATE TABLE `system_wh_activity_log` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_approval_details`
--

CREATE TABLE `system_wh_approval_details` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_approval_setting`
--

CREATE TABLE `system_wh_approval_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_goods_delivery_activity_log`
--

CREATE TABLE `system_wh_goods_delivery_activity_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `additional_data` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_inventory_serial_numbers`
--

CREATE TABLE `system_wh_inventory_serial_numbers` (
  `id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `inventory_manage_id` int(11) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `is_used` varchar(20) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_loss_adjustment`
--

CREATE TABLE `system_wh_loss_adjustment` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `addfrom` int(11) DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `date_create` date NOT NULL,
  `status` int(11) NOT NULL,
  `warehouses` int(11) DEFAULT NULL,
  `loss_adjustment_title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_loss_adjustment_detail`
--

CREATE TABLE `system_wh_loss_adjustment_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `items` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `current_number` int(15) DEFAULT NULL,
  `updates_number` int(15) DEFAULT NULL,
  `loss_adjustment` int(11) DEFAULT NULL,
  `expiry_date` text DEFAULT NULL,
  `lot_number` text DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_omni_shipments`
--

CREATE TABLE `system_wh_omni_shipments` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `shipment_number` varchar(100) DEFAULT NULL,
  `planned_shipping_date` datetime DEFAULT NULL,
  `shipment_status` varchar(50) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `goods_delivery_id` int(11) DEFAULT NULL,
  `shipment_hash` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_order_returns`
--

CREATE TABLE `system_wh_order_returns` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(50) NOT NULL COMMENT 'manual, sales_return_order, purchasing_return_order',
  `return_type` varchar(50) DEFAULT NULL COMMENT 'manual, partially, fully',
  `company_id` int(11) DEFAULT NULL,
  `company_name` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `order_number` varchar(500) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `number_of_item` decimal(15,2) DEFAULT 0.00,
  `order_total` decimal(15,2) DEFAULT 0.00,
  `order_return_number` varchar(200) DEFAULT NULL,
  `order_return_name` varchar(500) DEFAULT NULL,
  `fee_return_order` decimal(15,2) DEFAULT 0.00,
  `refund_loyaty_point` int(11) DEFAULT 0,
  `subtotal` decimal(15,2) DEFAULT 0.00,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `additional_discount` decimal(15,2) DEFAULT 0.00,
  `adjustment_amount` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `return_policies_information` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `approval` int(11) DEFAULT 0,
  `datecreated` datetime DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `receipt_delivery_id` int(1) DEFAULT 0,
  `currency` int(11) DEFAULT NULL,
  `return_reason` longtext DEFAULT NULL,
  `receipt_delivery_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_order_return_details`
--

CREATE TABLE `system_wh_order_return_details` (
  `id` int(11) NOT NULL,
  `order_return_id` int(11) NOT NULL,
  `rel_type_detail_id` int(11) DEFAULT NULL,
  `commodity_code` int(11) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT 0.00,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `tax_id` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `reason_return` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_packing_lists`
--

CREATE TABLE `system_wh_packing_lists` (
  `id` int(11) NOT NULL,
  `delivery_note_id` int(11) DEFAULT NULL,
  `packing_list_number` varchar(100) DEFAULT NULL,
  `packing_list_name` varchar(200) DEFAULT NULL,
  `width` decimal(15,2) DEFAULT 0.00,
  `height` decimal(15,2) DEFAULT 0.00,
  `lenght` decimal(15,2) DEFAULT 0.00,
  `weight` decimal(15,2) DEFAULT 0.00,
  `volume` decimal(15,2) DEFAULT 0.00,
  `clientid` int(11) DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT 0.00,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `additional_discount` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `client_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `approval` int(11) DEFAULT 0,
  `datecreated` datetime DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `type_of_packing_list` varchar(100) DEFAULT 'total',
  `delivery_status` varchar(100) DEFAULT 'wh_ready_to_deliver',
  `shipping_fee` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_packing_list_details`
--

CREATE TABLE `system_wh_packing_list_details` (
  `id` int(11) NOT NULL,
  `packing_list_id` int(11) NOT NULL,
  `delivery_detail_id` int(11) DEFAULT NULL,
  `commodity_code` int(11) DEFAULT NULL,
  `commodity_name` text DEFAULT NULL,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT 0.00,
  `sub_total` decimal(15,2) DEFAULT 0.00,
  `tax_id` text DEFAULT NULL,
  `tax_rate` text DEFAULT NULL,
  `tax_name` text DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT 0.00,
  `discount` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `total_after_discount` decimal(15,2) DEFAULT 0.00,
  `serial_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_wh_sub_group`
--

CREATE TABLE `system_wh_sub_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub_group_code` varchar(100) DEFAULT NULL,
  `sub_group_name` text DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_zoom_integration_settings`
--

CREATE TABLE `system_zoom_integration_settings` (
  `setting_name` varchar(100) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `system_zoom_integration_settings`
--

INSERT INTO `system_zoom_integration_settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('client_can_access_zoom_meetings', '1', 'app', 0),
('zoom_integration_item_purchase_code', 'xxxxx-xxxxx-xxxxx-xxxxx-xxxxx', 'app', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_zoom_meetings`
--

CREATE TABLE `system_zoom_meetings` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `start_time` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with_team_members` mediumtext DEFAULT NULL,
  `share_with_client_contacts` mediumtext DEFAULT NULL,
  `zoom_meeting_id` text NOT NULL,
  `join_url` text NOT NULL,
  `waiting_room` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `system_acc_accounts`
--
ALTER TABLE `system_acc_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_account_history`
--
ALTER TABLE `system_acc_account_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_account_type_details`
--
ALTER TABLE `system_acc_account_type_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_banking_rules`
--
ALTER TABLE `system_acc_banking_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_banking_rule_details`
--
ALTER TABLE `system_acc_banking_rule_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_budgets`
--
ALTER TABLE `system_acc_budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_budget_details`
--
ALTER TABLE `system_acc_budget_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_expense_category_mappings`
--
ALTER TABLE `system_acc_expense_category_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_item_automatics`
--
ALTER TABLE `system_acc_item_automatics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_journal_entries`
--
ALTER TABLE `system_acc_journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_matched_transactions`
--
ALTER TABLE `system_acc_matched_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_payment_mode_mappings`
--
ALTER TABLE `system_acc_payment_mode_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_plaid_transaction_logs`
--
ALTER TABLE `system_acc_plaid_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_reconciles`
--
ALTER TABLE `system_acc_reconciles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_tax_mappings`
--
ALTER TABLE `system_acc_tax_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_transaction_bankings`
--
ALTER TABLE `system_acc_transaction_bankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_acc_transfers`
--
ALTER TABLE `system_acc_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_activity_logs`
--
ALTER TABLE `system_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_for` (`log_for`,`log_for_id`),
  ADD KEY `log_for2` (`log_for2`,`log_for_id2`),
  ADD KEY `log_type` (`log_type`,`log_type_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `system_announcements`
--
ALTER TABLE `system_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `system_article_helpful_status`
--
ALTER TABLE `system_article_helpful_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_attendance`
--
ALTER TABLE `system_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `system_automation_settings`
--
ALTER TABLE `system_automation_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_aws_s3_integration_settings`
--
ALTER TABLE `system_aws_s3_integration_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_checklist_groups`
--
ALTER TABLE `system_checklist_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_checklist_items`
--
ALTER TABLE `system_checklist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_checklist_template`
--
ALTER TABLE `system_checklist_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_ci_sessions`
--
ALTER TABLE `system_ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `system_clients`
--
ALTER TABLE `system_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `lead_source_id` (`lead_source_id`),
  ADD KEY `is_lead` (`is_lead`);

--
-- Indexes for table `system_client_groups`
--
ALTER TABLE `system_client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_company`
--
ALTER TABLE `system_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_contracts`
--
ALTER TABLE `system_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_contract_items`
--
ALTER TABLE `system_contract_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_contract_templates`
--
ALTER TABLE `system_contract_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_custom_fields`
--
ALTER TABLE `system_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_to` (`related_to`),
  ADD KEY `field_type` (`field_type`);

--
-- Indexes for table `system_custom_field_values`
--
ALTER TABLE `system_custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_to_type` (`related_to_type`),
  ADD KEY `related_to_id` (`related_to_id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `system_custom_widgets`
--
ALTER TABLE `system_custom_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_dashboards`
--
ALTER TABLE `system_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_email_templates`
--
ALTER TABLE `system_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_estimates`
--
ALTER TABLE `system_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_estimate_comments`
--
ALTER TABLE `system_estimate_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_estimate_forms`
--
ALTER TABLE `system_estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_estimate_items`
--
ALTER TABLE `system_estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_estimate_requests`
--
ALTER TABLE `system_estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_events`
--
ALTER TABLE `system_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `recurring` (`recurring`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`);

--
-- Indexes for table `system_event_tracker`
--
ALTER TABLE `system_event_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_expenses`
--
ALTER TABLE `system_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `system_expense_categories`
--
ALTER TABLE `system_expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `system_file_category`
--
ALTER TABLE `system_file_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_folders`
--
ALTER TABLE `system_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_general_files`
--
ALTER TABLE `system_general_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_goods_delivery`
--
ALTER TABLE `system_goods_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_goods_delivery_detail`
--
ALTER TABLE `system_goods_delivery_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_goods_delivery_invoices_pr_orders`
--
ALTER TABLE `system_goods_delivery_invoices_pr_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_goods_receipt`
--
ALTER TABLE `system_goods_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_goods_receipt_detail`
--
ALTER TABLE `system_goods_receipt_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_goods_transaction_detail`
--
ALTER TABLE `system_goods_transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_google_meet_integration_settings`
--
ALTER TABLE `system_google_meet_integration_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_google_meet_meetings`
--
ALTER TABLE `system_google_meet_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `system_help_articles`
--
ALTER TABLE `system_help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_help_categories`
--
ALTER TABLE `system_help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_hrp_bonus_kpi`
--
ALTER TABLE `system_hrp_bonus_kpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_hrp_payroll_columns`
--
ALTER TABLE `system_hrp_payroll_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_hrp_payslips`
--
ALTER TABLE `system_hrp_payslips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_hrp_payslip_templates`
--
ALTER TABLE `system_hrp_payslip_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_hr_payroll_option`
--
ALTER TABLE `system_hr_payroll_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `system_internal_delivery_note`
--
ALTER TABLE `system_internal_delivery_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_internal_delivery_note_detail`
--
ALTER TABLE `system_internal_delivery_note_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_inventory_commodity_min`
--
ALTER TABLE `system_inventory_commodity_min`
  ADD PRIMARY KEY (`id`,`commodity_id`);

--
-- Indexes for table `system_inventory_manage`
--
ALTER TABLE `system_inventory_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_invoices`
--
ALTER TABLE `system_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `due_date` (`due_date`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `system_invoice_items`
--
ALTER TABLE `system_invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_invoice_payments`
--
ALTER TABLE `system_invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `system_items`
--
ALTER TABLE `system_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_items_of_vendor`
--
ALTER TABLE `system_items_of_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_item_categories`
--
ALTER TABLE `system_item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_jitsi_integration_settings`
--
ALTER TABLE `system_jitsi_integration_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_jitsi_meetings`
--
ALTER TABLE `system_jitsi_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `system_labels`
--
ALTER TABLE `system_labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `context` (`context`);

--
-- Indexes for table `system_leads`
--
ALTER TABLE `system_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_lead_source`
--
ALTER TABLE `system_lead_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_lead_status`
--
ALTER TABLE `system_lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_leave_applications`
--
ALTER TABLE `system_leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `system_leave_types`
--
ALTER TABLE `system_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_likes`
--
ALTER TABLE `system_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_login_as_client`
--
ALTER TABLE `system_login_as_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mailboxes`
--
ALTER TABLE `system_mailboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mailbox_emails`
--
ALTER TABLE `system_mailbox_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mailbox_settings`
--
ALTER TABLE `system_mailbox_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_mailbox_templates`
--
ALTER TABLE `system_mailbox_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_messages`
--
ALTER TABLE `system_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indexes for table `system_microsoft_teams_integration_settings`
--
ALTER TABLE `system_microsoft_teams_integration_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_microsoft_team_meetings`
--
ALTER TABLE `system_microsoft_team_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `system_milestones`
--
ALTER TABLE `system_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notes`
--
ALTER TABLE `system_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_note_category`
--
ALTER TABLE `system_note_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notifications`
--
ALTER TABLE `system_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_notification_settings`
--
ALTER TABLE `system_notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `system_orders`
--
ALTER TABLE `system_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_order_items`
--
ALTER TABLE `system_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_order_status`
--
ALTER TABLE `system_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pages`
--
ALTER TABLE `system_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_password_manager_bank_account`
--
ALTER TABLE `system_password_manager_bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_password_manager_categories`
--
ALTER TABLE `system_password_manager_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_password_manager_credit_card`
--
ALTER TABLE `system_password_manager_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_password_manager_email`
--
ALTER TABLE `system_password_manager_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_password_manager_general`
--
ALTER TABLE `system_password_manager_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_password_manager_software_license`
--
ALTER TABLE `system_password_manager_software_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_payment_methods`
--
ALTER TABLE `system_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_paypal_ipn`
--
ALTER TABLE `system_paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pin_comments`
--
ALTER TABLE `system_pin_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_polls`
--
ALTER TABLE `system_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_poll_answers`
--
ALTER TABLE `system_poll_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_poll_settings`
--
ALTER TABLE `system_poll_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_poll_votes`
--
ALTER TABLE `system_poll_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_posts`
--
ALTER TABLE `system_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_projects`
--
ALTER TABLE `system_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `system_project_comments`
--
ALTER TABLE `system_project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_project_files`
--
ALTER TABLE `system_project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_project_members`
--
ALTER TABLE `system_project_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `system_project_settings`
--
ALTER TABLE `system_project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Indexes for table `system_project_status`
--
ALTER TABLE `system_project_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_project_time`
--
ALTER TABLE `system_project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_proposals`
--
ALTER TABLE `system_proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_proposal_comments`
--
ALTER TABLE `system_proposal_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_proposal_items`
--
ALTER TABLE `system_proposal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_proposal_templates`
--
ALTER TABLE `system_proposal_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_approval_details`
--
ALTER TABLE `system_pur_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_approval_setting`
--
ALTER TABLE `system_pur_approval_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_estimates`
--
ALTER TABLE `system_pur_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_estimate_detail`
--
ALTER TABLE `system_pur_estimate_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_invoices`
--
ALTER TABLE `system_pur_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_invoice_details`
--
ALTER TABLE `system_pur_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_invoice_payment`
--
ALTER TABLE `system_pur_invoice_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_orders`
--
ALTER TABLE `system_pur_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_order_detail`
--
ALTER TABLE `system_pur_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_request`
--
ALTER TABLE `system_pur_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_request_detail`
--
ALTER TABLE `system_pur_request_detail`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `system_pur_vendor`
--
ALTER TABLE `system_pur_vendor`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `system_pur_vendor_cate`
--
ALTER TABLE `system_pur_vendor_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_pur_vendor_items`
--
ALTER TABLE `system_pur_vendor_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_reminder_logs`
--
ALTER TABLE `system_reminder_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_reminder_settings`
--
ALTER TABLE `system_reminder_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_rise_api_users`
--
ALTER TABLE `system_rise_api_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_roles`
--
ALTER TABLE `system_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_social_links`
--
ALTER TABLE `system_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_social_login_settings`
--
ALTER TABLE `system_social_login_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_stripe_ipn`
--
ALTER TABLE `system_stripe_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_subscriptions`
--
ALTER TABLE `system_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_subscription_items`
--
ALTER TABLE `system_subscription_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_tasks`
--
ALTER TABLE `system_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `sort` (`sort`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `milestone_id` (`milestone_id`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `estimate_id` (`estimate_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `proposal_id` (`proposal_id`),
  ADD KEY `subscription_id` (`subscription_id`),
  ADD KEY `expense_id` (`expense_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `system_task_priority`
--
ALTER TABLE `system_task_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_task_status`
--
ALTER TABLE `system_task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_taxes`
--
ALTER TABLE `system_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_team`
--
ALTER TABLE `system_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_team_member_job_info`
--
ALTER TABLE `system_team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_tickets`
--
ALTER TABLE `system_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `ticket_type_id` (`ticket_type_id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `system_ticket_comments`
--
ALTER TABLE `system_ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_ticket_templates`
--
ALTER TABLE `system_ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_ticket_types`
--
ALTER TABLE `system_ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_to_do`
--
ALTER TABLE `system_to_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `system_twofactor_settings`
--
ALTER TABLE `system_twofactor_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_twofactor_verification`
--
ALTER TABLE `system_twofactor_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- Indexes for table `system_verification`
--
ALTER TABLE `system_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_warehouse`
--
ALTER TABLE `system_warehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `system_ware_body_type`
--
ALTER TABLE `system_ware_body_type`
  ADD PRIMARY KEY (`body_type_id`);

--
-- Indexes for table `system_ware_color`
--
ALTER TABLE `system_ware_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `system_ware_commodity_type`
--
ALTER TABLE `system_ware_commodity_type`
  ADD PRIMARY KEY (`commodity_type_id`);

--
-- Indexes for table `system_ware_size_type`
--
ALTER TABLE `system_ware_size_type`
  ADD PRIMARY KEY (`size_type_id`);

--
-- Indexes for table `system_ware_style_type`
--
ALTER TABLE `system_ware_style_type`
  ADD PRIMARY KEY (`style_type_id`);

--
-- Indexes for table `system_ware_unit_type`
--
ALTER TABLE `system_ware_unit_type`
  ADD PRIMARY KEY (`unit_type_id`);

--
-- Indexes for table `system_wh_activity_log`
--
ALTER TABLE `system_wh_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_approval_details`
--
ALTER TABLE `system_wh_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_approval_setting`
--
ALTER TABLE `system_wh_approval_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_goods_delivery_activity_log`
--
ALTER TABLE `system_wh_goods_delivery_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_inventory_serial_numbers`
--
ALTER TABLE `system_wh_inventory_serial_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_loss_adjustment`
--
ALTER TABLE `system_wh_loss_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_loss_adjustment_detail`
--
ALTER TABLE `system_wh_loss_adjustment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_omni_shipments`
--
ALTER TABLE `system_wh_omni_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_order_returns`
--
ALTER TABLE `system_wh_order_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_order_return_details`
--
ALTER TABLE `system_wh_order_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_packing_lists`
--
ALTER TABLE `system_wh_packing_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_packing_list_details`
--
ALTER TABLE `system_wh_packing_list_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_wh_sub_group`
--
ALTER TABLE `system_wh_sub_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_zoom_integration_settings`
--
ALTER TABLE `system_zoom_integration_settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `system_zoom_meetings`
--
ALTER TABLE `system_zoom_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `system_acc_accounts`
--
ALTER TABLE `system_acc_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `system_acc_account_history`
--
ALTER TABLE `system_acc_account_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_account_type_details`
--
ALTER TABLE `system_acc_account_type_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `system_acc_banking_rules`
--
ALTER TABLE `system_acc_banking_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_banking_rule_details`
--
ALTER TABLE `system_acc_banking_rule_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_budgets`
--
ALTER TABLE `system_acc_budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_budget_details`
--
ALTER TABLE `system_acc_budget_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_expense_category_mappings`
--
ALTER TABLE `system_acc_expense_category_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_item_automatics`
--
ALTER TABLE `system_acc_item_automatics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_journal_entries`
--
ALTER TABLE `system_acc_journal_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_matched_transactions`
--
ALTER TABLE `system_acc_matched_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_payment_mode_mappings`
--
ALTER TABLE `system_acc_payment_mode_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_plaid_transaction_logs`
--
ALTER TABLE `system_acc_plaid_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_reconciles`
--
ALTER TABLE `system_acc_reconciles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_tax_mappings`
--
ALTER TABLE `system_acc_tax_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_transaction_bankings`
--
ALTER TABLE `system_acc_transaction_bankings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_acc_transfers`
--
ALTER TABLE `system_acc_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_activity_logs`
--
ALTER TABLE `system_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `system_announcements`
--
ALTER TABLE `system_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_article_helpful_status`
--
ALTER TABLE `system_article_helpful_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_attendance`
--
ALTER TABLE `system_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_automation_settings`
--
ALTER TABLE `system_automation_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_checklist_groups`
--
ALTER TABLE `system_checklist_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_checklist_items`
--
ALTER TABLE `system_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `system_checklist_template`
--
ALTER TABLE `system_checklist_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_clients`
--
ALTER TABLE `system_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_client_groups`
--
ALTER TABLE `system_client_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_company`
--
ALTER TABLE `system_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_contracts`
--
ALTER TABLE `system_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_contract_items`
--
ALTER TABLE `system_contract_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_contract_templates`
--
ALTER TABLE `system_contract_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_custom_fields`
--
ALTER TABLE `system_custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_custom_field_values`
--
ALTER TABLE `system_custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_custom_widgets`
--
ALTER TABLE `system_custom_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_dashboards`
--
ALTER TABLE `system_dashboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_email_templates`
--
ALTER TABLE `system_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `system_estimates`
--
ALTER TABLE `system_estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_estimate_comments`
--
ALTER TABLE `system_estimate_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_estimate_forms`
--
ALTER TABLE `system_estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_estimate_items`
--
ALTER TABLE `system_estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_estimate_requests`
--
ALTER TABLE `system_estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_events`
--
ALTER TABLE `system_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_event_tracker`
--
ALTER TABLE `system_event_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_expenses`
--
ALTER TABLE `system_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_expense_categories`
--
ALTER TABLE `system_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_file_category`
--
ALTER TABLE `system_file_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_folders`
--
ALTER TABLE `system_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_general_files`
--
ALTER TABLE `system_general_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_goods_delivery`
--
ALTER TABLE `system_goods_delivery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_goods_delivery_detail`
--
ALTER TABLE `system_goods_delivery_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_goods_delivery_invoices_pr_orders`
--
ALTER TABLE `system_goods_delivery_invoices_pr_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_goods_receipt`
--
ALTER TABLE `system_goods_receipt`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_goods_receipt_detail`
--
ALTER TABLE `system_goods_receipt_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_goods_transaction_detail`
--
ALTER TABLE `system_goods_transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_google_meet_meetings`
--
ALTER TABLE `system_google_meet_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_help_articles`
--
ALTER TABLE `system_help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_help_categories`
--
ALTER TABLE `system_help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_hrp_bonus_kpi`
--
ALTER TABLE `system_hrp_bonus_kpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_hrp_payroll_columns`
--
ALTER TABLE `system_hrp_payroll_columns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_hrp_payslips`
--
ALTER TABLE `system_hrp_payslips`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_hrp_payslip_templates`
--
ALTER TABLE `system_hrp_payslip_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_hr_payroll_option`
--
ALTER TABLE `system_hr_payroll_option`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_internal_delivery_note`
--
ALTER TABLE `system_internal_delivery_note`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_internal_delivery_note_detail`
--
ALTER TABLE `system_internal_delivery_note_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_inventory_commodity_min`
--
ALTER TABLE `system_inventory_commodity_min`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_inventory_manage`
--
ALTER TABLE `system_inventory_manage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_invoices`
--
ALTER TABLE `system_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_invoice_items`
--
ALTER TABLE `system_invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_invoice_payments`
--
ALTER TABLE `system_invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_items`
--
ALTER TABLE `system_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_items_of_vendor`
--
ALTER TABLE `system_items_of_vendor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_item_categories`
--
ALTER TABLE `system_item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_jitsi_meetings`
--
ALTER TABLE `system_jitsi_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_labels`
--
ALTER TABLE `system_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `system_leads`
--
ALTER TABLE `system_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_lead_source`
--
ALTER TABLE `system_lead_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_lead_status`
--
ALTER TABLE `system_lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_leave_applications`
--
ALTER TABLE `system_leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_leave_types`
--
ALTER TABLE `system_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_likes`
--
ALTER TABLE `system_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_login_as_client`
--
ALTER TABLE `system_login_as_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_mailboxes`
--
ALTER TABLE `system_mailboxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_mailbox_emails`
--
ALTER TABLE `system_mailbox_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mailbox_templates`
--
ALTER TABLE `system_mailbox_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_messages`
--
ALTER TABLE `system_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_microsoft_team_meetings`
--
ALTER TABLE `system_microsoft_team_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_milestones`
--
ALTER TABLE `system_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_notes`
--
ALTER TABLE `system_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_note_category`
--
ALTER TABLE `system_note_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_notifications`
--
ALTER TABLE `system_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `system_notification_settings`
--
ALTER TABLE `system_notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `system_orders`
--
ALTER TABLE `system_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_order_items`
--
ALTER TABLE `system_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_order_status`
--
ALTER TABLE `system_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_pages`
--
ALTER TABLE `system_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_password_manager_bank_account`
--
ALTER TABLE `system_password_manager_bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_password_manager_categories`
--
ALTER TABLE `system_password_manager_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_password_manager_credit_card`
--
ALTER TABLE `system_password_manager_credit_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_password_manager_email`
--
ALTER TABLE `system_password_manager_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_password_manager_general`
--
ALTER TABLE `system_password_manager_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_password_manager_software_license`
--
ALTER TABLE `system_password_manager_software_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_payment_methods`
--
ALTER TABLE `system_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_paypal_ipn`
--
ALTER TABLE `system_paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pin_comments`
--
ALTER TABLE `system_pin_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_polls`
--
ALTER TABLE `system_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_poll_answers`
--
ALTER TABLE `system_poll_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_poll_votes`
--
ALTER TABLE `system_poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_posts`
--
ALTER TABLE `system_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_projects`
--
ALTER TABLE `system_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_project_comments`
--
ALTER TABLE `system_project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_project_files`
--
ALTER TABLE `system_project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_project_members`
--
ALTER TABLE `system_project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_project_status`
--
ALTER TABLE `system_project_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_project_time`
--
ALTER TABLE `system_project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_proposals`
--
ALTER TABLE `system_proposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_proposal_comments`
--
ALTER TABLE `system_proposal_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_proposal_items`
--
ALTER TABLE `system_proposal_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_proposal_templates`
--
ALTER TABLE `system_proposal_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_pur_approval_details`
--
ALTER TABLE `system_pur_approval_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_approval_setting`
--
ALTER TABLE `system_pur_approval_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_estimates`
--
ALTER TABLE `system_pur_estimates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_estimate_detail`
--
ALTER TABLE `system_pur_estimate_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_invoices`
--
ALTER TABLE `system_pur_invoices`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_invoice_details`
--
ALTER TABLE `system_pur_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_invoice_payment`
--
ALTER TABLE `system_pur_invoice_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_orders`
--
ALTER TABLE `system_pur_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_order_detail`
--
ALTER TABLE `system_pur_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_request`
--
ALTER TABLE `system_pur_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_request_detail`
--
ALTER TABLE `system_pur_request_detail`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_vendor`
--
ALTER TABLE `system_pur_vendor`
  MODIFY `userid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_vendor_cate`
--
ALTER TABLE `system_pur_vendor_cate`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_pur_vendor_items`
--
ALTER TABLE `system_pur_vendor_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_reminder_logs`
--
ALTER TABLE `system_reminder_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_reminder_settings`
--
ALTER TABLE `system_reminder_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_rise_api_users`
--
ALTER TABLE `system_rise_api_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_roles`
--
ALTER TABLE `system_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_stripe_ipn`
--
ALTER TABLE `system_stripe_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_subscriptions`
--
ALTER TABLE `system_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_subscription_items`
--
ALTER TABLE `system_subscription_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_tasks`
--
ALTER TABLE `system_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_task_priority`
--
ALTER TABLE `system_task_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_task_status`
--
ALTER TABLE `system_task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_taxes`
--
ALTER TABLE `system_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_team`
--
ALTER TABLE `system_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_team_member_job_info`
--
ALTER TABLE `system_team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_tickets`
--
ALTER TABLE `system_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_ticket_comments`
--
ALTER TABLE `system_ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_ticket_templates`
--
ALTER TABLE `system_ticket_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_ticket_types`
--
ALTER TABLE `system_ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_to_do`
--
ALTER TABLE `system_to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_twofactor_verification`
--
ALTER TABLE `system_twofactor_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_verification`
--
ALTER TABLE `system_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_warehouse`
--
ALTER TABLE `system_warehouse`
  MODIFY `warehouse_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_ware_body_type`
--
ALTER TABLE `system_ware_body_type`
  MODIFY `body_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_ware_color`
--
ALTER TABLE `system_ware_color`
  MODIFY `color_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_ware_commodity_type`
--
ALTER TABLE `system_ware_commodity_type`
  MODIFY `commodity_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_ware_size_type`
--
ALTER TABLE `system_ware_size_type`
  MODIFY `size_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_ware_style_type`
--
ALTER TABLE `system_ware_style_type`
  MODIFY `style_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_ware_unit_type`
--
ALTER TABLE `system_ware_unit_type`
  MODIFY `unit_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_activity_log`
--
ALTER TABLE `system_wh_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_approval_details`
--
ALTER TABLE `system_wh_approval_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_approval_setting`
--
ALTER TABLE `system_wh_approval_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_goods_delivery_activity_log`
--
ALTER TABLE `system_wh_goods_delivery_activity_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_inventory_serial_numbers`
--
ALTER TABLE `system_wh_inventory_serial_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_loss_adjustment`
--
ALTER TABLE `system_wh_loss_adjustment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_loss_adjustment_detail`
--
ALTER TABLE `system_wh_loss_adjustment_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_omni_shipments`
--
ALTER TABLE `system_wh_omni_shipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_order_returns`
--
ALTER TABLE `system_wh_order_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_order_return_details`
--
ALTER TABLE `system_wh_order_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_packing_lists`
--
ALTER TABLE `system_wh_packing_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_packing_list_details`
--
ALTER TABLE `system_wh_packing_list_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_wh_sub_group`
--
ALTER TABLE `system_wh_sub_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_zoom_meetings`
--
ALTER TABLE `system_zoom_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
