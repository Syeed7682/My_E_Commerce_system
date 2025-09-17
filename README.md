
# 🛒 My E-Commerce System

A simple PHP-based **E-Commerce platform** with both **Admin** and **Client** modules.  
This project demonstrates a complete online shopping system with essential features such as product management, shopping cart, checkout, and user authentication.  

---

## 🚀 Features

### 🔑 Admin Panel
- Manage products, vendors, users, and orders  
- Update order status and announcements  

### 🛍️ Client Side
- Browse products with details  
- Add items to cart and checkout  
- User authentication (login/register)  
- Contact and about pages  

### 🗄️ Database
- Includes `easyshop.sql` for quick database setup  

### 🎨 Extras
- Custom styling with CSS  
- Sample product images and icons  

---

## 🛠️ Tech Stack
- **Frontend:** HTML, CSS  
- **Backend:** PHP  
- **Database:** MySQL  

---

## ⚙️ Installation & Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/syeed7682/my_E-Commerce_system.git
   cd my_E-Commerce_system
   ```

2. Move the project folder to your server root directory (e.g., `htdocs` for XAMPP, `www` for WAMP).

3. Import the database:
   - Open **phpMyAdmin**
   - Create a new database (e.g., `easyshop`)
   - Import the file located at `database/easyshop.sql`

4. Update the database configuration:
   - Open `config/connect.php`
   - Edit the database credentials (`host`, `username`, `password`, `dbname`)

5. Start your server (Apache & MySQL) and navigate to:
   ```
   http://localhost/my_E-Commerce_system/client/
   ```

6. Admin panel is available at:
   ```
   http://localhost/my_E-Commerce_system/admin/
   ```

---

## 📌 Usage
- Register a new account or log in as an existing user.  
- Browse products, add them to the cart, and checkout.  
- Admin can manage products, users, and orders via the dashboard.  

---

## 📷 Screenshots
(Add screenshots of client shop page, cart, and admin panel here)

---

## 🤝 Contribution
Contributions are welcome! Feel free to fork this repo and submit pull requests.

---

## 📜 License
This project is open-source and available under the [MIT License](LICENSE).
