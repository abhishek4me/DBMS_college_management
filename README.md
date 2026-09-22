# 🍊 Cavatta College Management System
PHP & MySQL College Management System developed for Cavatta College. Used to maintain records related to students, teachers, attendance, timetables, fee payments, notices, and more.

## 🥏 Technologies Used 
1. PHP (8.1+)
2. MySQL database (Local XAMPP or Railway.com)
3. Bootstrap 5
4. React 18 & GSAP (for `<StrokeText />` dynamic branding)
5. JQuery, JavaScript
6. HTML5, CSS3

## 💡 Features 
1. Student record management (Includes 56 KTU batch students)
2. Teacher record management
3. Notice Board & Announcements
4. Weekly Class Timetable (Integrated Theory & Laboratory schedule)
5. Attendance Management
6. Fee Payment & Payroll records
7. Password reset & Forgot password
8. Modern Landing Page
9. React Bits `<StrokeText />` animated SVG letterform integration
10. Single Unified Login for all roles
11. Dark & Light theme support
12. Seamless Railway.com Cloud Database Migration

## 🔐 Logins and Credentials

| Panel   | Username / Email | Password |
| :------ | :--------------- | :------: |
| **Admin**   | `admin`   | `123` |
| **Teacher** | `teacher` | `123` |
| **Student** | `student` | `123` |
| **Owner**   | `owner`   | `123` |

---

## 🚀 How to Run Locally (XAMPP)

1. **Start XAMPP Apache & MySQL**:
   - Ensure Apache is running on port 80 and MySQL on port 3306.
2. **Database Setup**:
   - Database name: `_sms`
   - Import file: `database/railway_sms_migration.sql` (or `database/_sms.sql`)
3. **Placement**:
   - Place project directory at: `C:\xampp\htdocs\school-management-system\`
4. **Access the Website**:
   - [http://localhost/school-management-system](http://localhost/school-management-system)
   - Login page: [http://localhost/school-management-system/login.php](http://localhost/school-management-system/login.php)

---

## ☁️ Migrating Database to Railway.com

When you create your MySQL service on [Railway.com](https://railway.com):

### Option 1: Automated Script (Recommended)
Run the migration script using PHP or PowerShell:
```bash
# In PowerShell:
.\migrate_to_railway.ps1 "mysql://root:password@roundhouse.proxy.rlwy.net:PORT/railway"

# Or with PHP:
php migrate_to_railway.php "mysql://root:password@roundhouse.proxy.rlwy.net:PORT/railway"
```
The script will connect, import the complete database schema and all 56 student records, and optionally save credentials to `assets/config.local.php`.

### Option 2: Using Railway Environment Variables
When hosting on Railway, add these variables in your Railway Project Service Settings:
- `MYSQLHOST`
- `MYSQLPORT`
- `MYSQLUSER`
- `MYSQLPASSWORD`
- `MYSQLDATABASE`
(or simply provide `MYSQL_URL`)

### Option 3: Manual Import
Import the ready-made SQL file into your Railway MySQL database via MySQL CLI or phpMyAdmin:
```bash
mysql -h <RAILWAY_HOST> -P <RAILWAY_PORT> -u root -p <RAILWAY_DATABASE> < database/railway_sms_migration.sql
```
"# DBMS_college_management" 
"# DBMS_college_management" 
