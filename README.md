# Inventory Management System

A robust SQL-based Inventory Management System that handles products, brands, stores, customers, and transactions.

## Database Schema

### Tables

1. **Brands**
   - `bid` (Primary Key)
   - `b_name` (Brand Name)
   - `b_location` (Brand Location)
   - `b_category` (Brand Category)

2. **Categories**
   - `cat_id` (Primary Key)
   - `cat_name`
   - `cat_description`

3. **Product**
   - `pid` (Primary Key)
   - `cid` (Foreign Key to Categories)
   - `bid` (Foreign Key to Brands)
   - `sid` (Store ID)
   - `pname` (Product Name)
   - `p_stock` (Stock Quantity)
   - `price`
   - `added_date`

4. **Stores**
   - `st_id` (Primary Key)
   - `st_name`
   - `st_location`
   - `contact_number`
   - `st_open_date`

5. **Inventory Users**
   - `user_id` (Primary Key)
   - `inv_name`
   - `user_password`
   - `last_login`
   - `user_type`

6. **Customer Cart**
   - `cust_id` (Primary Key)
   - `name`
   - `mobno`
   - `added_at`

7. **Select Product**
   - `cust_id` (Foreign Key to Customer Cart)
   - `pid` (Foreign Key to Product)
   - `quantity`

8. **Transactions**
   - `id` (Primary Key)
   - `total_amount`
   - `paid`
   - `due`
   - `gst`
   - `discount`
   - `payment_method`
   - `cart_id` (Foreign Key to Customer Cart)

9. **Invoice**
   - `item_no` (Primary Key)
   - `product_name`
   - `quantity`
   - `net_price`
   - `transaction_id` (Foreign Key to Transactions)

10. **Provides** (Relationship table between Brands and Stores)
    - `bid` (Foreign Key to Brands)
    - `sid` (Foreign Key to Stores)
    - `discount`

## Stored Procedures

1. **Brands Management**
   - `Brands` - Insert new brand
   - `brandsInsertUpdate` - Insert or update brand details

2. **Categories Management**
   - `categories` - Insert new category

3. **Product Management**
   - `product` - Insert new product
   - `productGetData` - Retrieve product information with related data

4. **Customer Management**
   - `customer_cart` - Create new customer cart
   - `customer_cartGetData` - Retrieve customer cart details

5. **Transaction Management**
   - `transactions` - Record new transaction
   - `transactionsDeleteInsert` - Delete existing and insert new transaction

6. **Other Procedures**
   - `stores` - Add new store
   - `provides` - Add brand-store relationship
   - `select_product` - Add product to cart
   - `invoice` - Generate invoice
   - `inv_user` - Add inventory user

## Features

- Complete inventory tracking system
- User management with different access levels
- Customer cart and order management
- Transaction processing with GST and discounts
- Store and brand relationship management
- Product categorization
- Stock management
- Invoice generation

## Database Relationships

- Products are linked to Categories and Brands
- Transactions are connected to Customer Carts
- Stores and Brands have a many-to-many relationship through the Provides table
- Products can be selected into Customer Carts
- Each Transaction generates an Invoice

## Security Features

- User authentication system
- Different user types (Admin, Editor, Viewer)
- Password protection for users
- Login tracking with timestamp

## Usage

1. First, create the database tables in the specified order to maintain referential integrity
2. Load the stored procedures
3. Use the provided procedures for data manipulation instead of direct table access
4. Follow the established relationships when adding new records

## Best Practices

- Always use stored procedures for data manipulation
- Maintain referential integrity
- Regular backup of transaction data
- Monitor stock levels
- Regular audit of user activities
- Validate all inputs before processing

## Technical Requirements

- MySQL Database
- Support for Stored Procedures
- Support for Foreign Key Constraints
- Support for DateTime data type