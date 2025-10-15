<p align="center">
  <a href="#">
    <img src="https://user-images.githubusercontent.com/88466328/222019445-b6009f5c-e31d-437a-97b6-d00de2938d6a.png" alt="ATM GUI Logo" width="180">
  </a>
</p>

<h1 align="center">ATM GUI System (Java Swing)</h1>

<p align="center">
  A simple educational ATM simulation built with Java Swing & MySQL.
  <br/>
  Project for <a href="https://smkn1kepanjen.sch.id/web/" target="_blank">Kanesa</a>.
</p>

<p align="center">
  <a href="https://github.com/fiantyogalihp/atmGUI/stargazers">
    <img src="https://img.shields.io/github/stars/fiantyogalihp/atmGUI?style=flat-square" alt="Stars">
  </a>
  <a href="https://github.com/fiantyogalihp/atmGUI/issues">
    <img src="https://img.shields.io/github/issues/fiantyogalihp/atmGUI?style=flat-square" alt="Issues">
  </a>
  <a href="https://github.com/fiantyogalihp/atmGUI/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-green.svg?style=flat-square" alt="License: MIT">
  </a>
  <img src="https://img.shields.io/badge/Java-9%2B-orange?style=flat-square" alt="Java 9+">
  <img src="https://img.shields.io/badge/Status-Learning%20Project-blue?style=flat-square" alt="Status">
</p>

---

## Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [Screenshots](#screenshots)
- [Architecture & Stack](#architecture--stack)
- [Quick Start](#quick-start)
- [Database Setup](#database-setup)
- [Project Structure](#project-structure)
- [Usage Flow](#usage-flow)
- [Roadmap](#roadmap)
- [Contributors & Recognition](#contributors--recognition)
- [Support](#support)
- [License](#license)

---

## Overview

This project simulates a basic ATM workflow:
authentication, account balance inquiry, deposits (Setor), withdrawals (Tarik Tunai with denomination validation), transfers, and session handling.  
It is intended as a learning project to practice Java Swing UI design, basic MVC-ish separation, and JDBC database connectivity.

---

## Key Features

✅ User Registration & Login  
✅ Session-based Logout  
✅ Multiple Bank Type Handling  
✅ Deposit / Withdraw (multiples of 50 & 100)  
✅ Balance Inquiry  
✅ Transfer Between Users  
✅ MySQL (Connector/J) Integration  
✅ Basic Validation (inputs & operations)  
✅ Simple PDF Structure Generation (if implemented)  
✅ Fast Build & Lightweight  
✅ Extensible for learning OOP patterns  

---

## Screenshots

<p align="center">
  <img src="https://user-images.githubusercontent.com/88466328/222022364-1e01a6f7-c005-44a7-b418-1661bae446ea.png" alt="App Screenshot" width="640">
</p>

---

## Architecture & Stack

| Layer | Responsibility | Technologies |
|-------|----------------|--------------|
| UI | Swing-based forms & dialogs | Java Swing |
| Logic | Validation, denomination rules, transfer logic | Plain Java |
| Persistence | Relational storage | MySQL + JDBC (Connector/J) |
| Build / IDE | Development environment | Apache NetBeans |

---

## Quick Start

Prerequisites:
- Java 9 or higher
- MySQL Server
- Apache NetBeans (or your preferred Java IDE)
- Git

Clone the repository:
```bash
git clone https://github.com/fiantyogalihp/atmGUI.git
cd atmGUI
```

Open in NetBeans (recommended) or compile manually:
```bash
# Example (adjust package names if needed)
javac -cp .:mysql-connector-j.jar $(find . -name "*.java")
java -cp .:mysql-connector-j.jar Main
```

> Note: Replace `mysql-connector-j.jar` with the actual filename of your MySQL JDBC driver.

---

## Database Setup

1. Create a database (e.g. `atm_gui`):
   ```sql
   CREATE DATABASE atm_gui;
   USE atm_gui;
   ```
2. Create a basic `users` table (example schema):
   ```sql
   CREATE TABLE users (
     id INT AUTO_INCREMENT PRIMARY KEY,
     username VARCHAR(50) UNIQUE NOT NULL,
     password_hash VARCHAR(255) NOT NULL,
     full_name VARCHAR(100),
     bank_type VARCHAR(30),
     balance DECIMAL(15,2) DEFAULT 0,
     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );
   ```
3. (Optional) Seed test users:
   ```sql
   INSERT INTO users (username, password_hash, full_name, bank_type, balance)
   VALUES ('demo', 'plaintext_or_hash', 'Demo User', 'BANK_A', 500000);
   ```
4. Configure DB connection constants in the code (if a config file or constants class exists).

---

## Project Structure (Indicative)

```
atmGUI/
├─ src/
│  ├─ (swing forms & panels)
│  ├─ (models)
│  ├─ (database helpers)
│  └─ (utils / validation)
└─ resources/
```

---

## Usage Flow

1. Launch application.
2. Register (if no account).
3. Login with credentials.
4. Choose operation:
   - Setor (Deposit)
   - Tarik Tunai (Withdraw) – only valid denominations (50 / 100 multiples)
   - Transfer – requires recipient username
   - Cek Saldo – read-only
5. Logout safely to clear session.

---

## Roadmap

- [ ] Enhanced password hashing (BCrypt / Argon2)
- [ ] Transaction history table
- [ ] PDF export of mini-statement
- [ ] Internationalization (Bahasa / English toggle)
- [ ] Dark mode UI theme
- [ ] Dockerized MySQL + app launcher script

---

## Contributors & Recognition

A project is only as meaningful as the people who build and learn from it.  
Massive appreciation to everyone investing time, ideas, and curiosity.

### Core Maintainer

<p align="center">
  <a href="https://github.com/fiantyogalihp">
    <img src="https://avatars.githubusercontent.com/u/88466328?v=4" width="110" style="border-radius:50%;" alt="fiantyogalihp"/>
  </a>
</p>

<p align="center">
  <b><a href="https://github.com/fiantyogalihp">fiantyogalihp</a></b><br/>
  <sub>Creator / Maintainer</sub>
</p>

### Contributor

<p align="center">
  <a href="https://github.com/daffarmd">
    <img src="https://avatars.githubusercontent.com/u/134889168?v=4" width="110" style="border-radius:50%;" alt="daffarmd"/>
  </a>
</p>

<p align="center">
  <b><a href="https://github.com/daffarmd">daffarmd</a></b><br/>
  <sub>Contributor</sub>
</p>

### Recognition Highlights

- Initial architecture & vision (fiantyogalihp)
- Core Swing UI flows (fiantyogalihp)
- Validation & session handling (fiantyogalihp)
- Future improvements & collaboration (community + contributors)

### Want to Contribute?

Even small improvements matter:
1. Fork the repository.
2. Create a feature branch: `feat/your-feature`.
3. Submit a pull request with a clear description.

Suggested contribution areas:
- UI polish (icons, layout consistency)
- Improved validation & error handling
- Adding unit tests
- Secure password storage
- Documentation & localization

---

## Support

If you find this helpful:
- Star the repository
- Share with classmates
- Open suggestions via Issues

You can also follow the maintainer on GitHub: [fiantyogalihp](https://github.com/fiantyogalihp)

---

## License

MIT License. See the LICENSE file for details.

---

## Acknowledgements

- Java Platform
- Apache NetBeans
- MySQL Connector/J
- Inspiration from typical ATM interaction flows

---

<p align="center">
  Built for learning. Grow. Iterate. Improve.
</p>
