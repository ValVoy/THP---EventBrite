# Eventbrite-Like 🎟️

![Ruby on Rails](https://img.shields.io/badge/Rails-8.0-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Ruby](https://img.shields.io/badge/Ruby-3.3-CC0000?style=for-the-badge&logo=ruby&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

A robust full-stack Ruby on Rails 8 application designed to replicate the core functionalities of the Eventbrite platform. This project features a sleek, high-performance "Premium Dark" interface and a complete event management system.

<br>

## 🌟 Key Features

### 🔐 Authentication & Security
* **User Management**: Fully integrated with **Devise** for secure sign-up, login, and session management.
* **Role-Based Access**: Specialized access controls where only event "Admins" (creators) can modify or delete their events.
* **Protected Routes**: Critical actions (creation, editing) require a verified user session.

<br>

### 📅 Event System (Full CRUD)
* **Dynamic Creation**: Users can create events with specific details: Title, Description, Date, Duration, Price, and Location.
* **Smart Validations**: 
    * **Time**: Prevents creation of events in the past.
    * **Duration**: Must be a positive integer and a multiple of 5 minutes.
    * **Pricing**: Validated between 1€ and 1000€.
* **Attendance Tracking**: Real-time display of the number of participants joined.

<br>

### 🎨 Modern UI/UX
* **Dark Premium Interface**: A custom "Steel & Charcoal" aesthetic built with **Bootstrap 5.3**.
* **Turbo Navigation**: Optimized with Rails Turbo to ensure fast page transitions while maintaining JavaScript functionality (dropdowns, modals).
* **Responsive Design**: Fluid layout that adapts to mobile, tablet, and desktop screens.

<br>

### 📧 Communication
* **Automated Mailers**: Integrated **ActionMailer** to send "Welcome" emails to new users.

<br>

## 🛠️ Technical Stack
* **Backend**: Ruby on Rails 8.0.x
* **Database**: PostgreSQL
* **Frontend**: Bootstrap 5.3 + Turbo
* **Authentication**: Devise
* **Emailing**: ActionMailer

<br>

## 🚀 Installation

1. **Clone the repo**
   ```bash
   git clone [https://github.com/yourusername/eventbrite_like.git](https://github.com/yourusername/eventbrite_like.git)
   cd eventbrite_like
   ```

2. **Install Gems**
   ```bash
   bundle install
   ```

3. **Database Setup**
   ```bash
    rails db:create
    rails db:migrate
   ```

4. **Launch Server**
   ```bash
   rails server
   ```

*Access the app at http://localhost:3000*

<br>

## 📈 Project Status

[x] Monday: Backend Architecture & Mailers.

[x] Tuesday: User Authentication, Event CRUD, and UI Design.

[ ] Wednesday: Stripe Payment Integration & Partials Refactoring.

[ ] Thursday: ActiveStorage (Images) & Admin Dashboard.

<br>

## 👥 Authors

This project is for educational use within The Hacking Project. Feel free to modify or improve it in your own fork.

Valentin

_The Hacking Project 2026_