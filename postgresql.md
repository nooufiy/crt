# PostgreSQL Command Reference (Lengkap)

Dokumen ini berisi daftar command penting PostgreSQL mencakup psql CLI,
database management, table, user, dan query dasar.

------------------------------------------------------------------------

## 1. PSQL (Command Line) Commands

### Koneksi

-   `psql -U username`
-   `psql -U username -d database`
-   `psql -h host -p port -U username -d database`

### Informasi umum

-   `\l` → list database
-   `\c dbname` → connect database
-   `\dt` → list tables
-   `\dv` → list views
-   `\df` → list functions
-   `\dn` → list schemas
-   `\du` → list users/roles

### Bantuan

-   `\?` → help psql
-   `\h` → help SQL commands

------------------------------------------------------------------------

## 2. Database Commands

### Membuat database

``` sql
CREATE DATABASE dbname;
```

### Hapus database

``` sql
DROP DATABASE dbname;
```

### Rename database

``` sql
ALTER DATABASE oldname RENAME TO newname;
```

------------------------------------------------------------------------

## 3. Table Commands

### Membuat table

``` sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at TIMESTAMP
);
```

### Lihat struktur table

``` sql
\d tablename
```

### Rename table

``` sql
ALTER TABLE old_name RENAME TO new_name;
```

### Hapus table

``` sql
DROP TABLE tablename;
```

------------------------------------------------------------------------

## 4. Column Commands

### Tambah kolom

``` sql
ALTER TABLE users ADD COLUMN age INT;
```

### Hapus kolom

``` sql
ALTER TABLE users DROP COLUMN age;
```

### Rename kolom

``` sql
ALTER TABLE users RENAME COLUMN name TO full_name;
```

### Ubah tipe kolom

``` sql
ALTER TABLE users ALTER COLUMN age TYPE BIGINT;
```

------------------------------------------------------------------------

## 5. Data Manipulation (CRUD)

### Insert

``` sql
INSERT INTO users (name, email) VALUES ('Budi', 'budi@mail.com');
```

### Select

``` sql
SELECT * FROM users;
SELECT name FROM users;
SELECT * FROM users WHERE id = 1;
```

### Update

``` sql
UPDATE users SET name = 'Andi' WHERE id = 1;
```

### Delete

``` sql
DELETE FROM users WHERE id = 1;
```

------------------------------------------------------------------------

## 6. Filtering & Sorting

``` sql
SELECT * FROM users WHERE age > 20;
SELECT * FROM users ORDER BY created_at DESC;
SELECT * FROM users LIMIT 10;
SELECT * FROM users OFFSET 5;
```

------------------------------------------------------------------------

## 7. Join

``` sql
SELECT *
FROM orders
JOIN users ON users.id = orders.user_id;
```

Jenis join: - INNER JOIN - LEFT JOIN - RIGHT JOIN - FULL JOIN

------------------------------------------------------------------------

## 8. Index

### Buat index

``` sql
CREATE INDEX idx_users_email ON users(email);
```

### Hapus index

``` sql
DROP INDEX idx_users_email;
```

------------------------------------------------------------------------

## 9. Constraints

### Primary key

``` sql
PRIMARY KEY (id)
```

### Foreign key

``` sql
FOREIGN KEY (user_id) REFERENCES users(id)
```

### Unique

``` sql
UNIQUE(email)
```

### Not null

``` sql
NOT NULL
```

------------------------------------------------------------------------

## 10. User & Role Management

### Buat user

``` sql
CREATE USER username WITH PASSWORD 'password';
```

### Grant privilege

``` sql
GRANT ALL PRIVILEGES ON DATABASE dbname TO username;
```

### Hapus user

``` sql
DROP USER username;
```

------------------------------------------------------------------------

## 11. Backup & Restore

### Backup

``` bash
pg_dump dbname > backup.sql
```

### Restore

``` bash
psql dbname < backup.sql
```

------------------------------------------------------------------------

## 12. Transaction

``` sql
BEGIN;
INSERT INTO users(name) VALUES('Test');
COMMIT;

ROLLBACK;
```

------------------------------------------------------------------------

## 13. Advanced Queries

### Aggregation

``` sql
SELECT COUNT(*), AVG(age) FROM users;
```

### Group by

``` sql
SELECT age, COUNT(*) FROM users GROUP BY age;
```

### Having

``` sql
SELECT age, COUNT(*) FROM users GROUP BY age HAVING COUNT(*) > 5;
```

------------------------------------------------------------------------

## 14. Schema

``` sql
CREATE SCHEMA myschema;
SET search_path TO myschema;
```

------------------------------------------------------------------------

## 15. Function

``` sql
CREATE FUNCTION add_numbers(a INT, b INT)
RETURNS INT
LANGUAGE SQL
AS $$
    SELECT a + b;
$$;
```

------------------------------------------------------------------------

## 16. View

``` sql
CREATE VIEW active_users AS
SELECT * FROM users WHERE active = true;
```

------------------------------------------------------------------------

## 17. Extension

``` sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

------------------------------------------------------------------------

## 18. Performance

### Explain

``` sql
EXPLAIN SELECT * FROM users;
```

### Analyze

``` sql
EXPLAIN ANALYZE SELECT * FROM users;
```

------------------------------------------------------------------------

## 19. Edit/Reset Pass

``` sql
sudo -u postgres psql -c "ALTER USER minshopx WITH PASSWORD 'O4xGP6ODWTZcgyYZqTOoL+dbKii3YcNN';"
```

------------------------------------------------------------------------

## Selesai

Dokumen ini dapat digunakan sebagai referensi cepat command PostgreSQL.
