# 🏥 Hospital Management System (Flutter + Node.js)

![App Banner](assets/screenshots/banner.png)

A **Hospital Management System** built using **Flutter (frontend)** and **Node.js (backend)**.  
This project is designed for **B.Tech students** as a **final-year project** or for anyone interested in learning **cross-platform healthcare applications**.

---

## ✨ Features

### 👨‍⚕️ For Doctors
- View and manage patient appointments.  
- Approve or reject appointment requests.  
- Upload reports and prescriptions.  
- Update personal profile.  

### 🧑‍⚕️ For Patients
- Book doctor appointments.  
- View prescriptions and reports.  
- Manage personal health profile.  

### 🛠️ For Admin
- Manage doctors and patients.  
- Approve new doctor registrations.  
- Allocate hospital resources.  

---

## 🧠 Thought Process (as a B.Tech Student)

During hospital visits, it’s common to see:
- Long waiting times for doctor appointments.  
- Paper-based prescription records that can be easily lost.  
- Difficulty in managing reports across multiple departments.  

💡 **Our Idea**: Build a **digital platform** where:
- Patients can book and track appointments.  
- Doctors can manage patients and upload prescriptions.  
- Admins can oversee hospital resources and doctors.  

This app was developed with the **objective of solving real-world healthcare problems** while also learning:
- Flutter for **cross-platform mobile app development**.  
- Node.js and MongoDB for **scalable backend**.  
- REST APIs for **doctor-patient communication**.  

This approach reflects how students can take a **problem statement → analyze → design → implement → test** workflow for academic + real-world projects.

---

## 📸 Screenshots

| Login Screen | Signup Screen | Patient Dashboard |
|--------------|--------------|-------------------|
| ![](assets/screenshots/login.png) | ![](assets/screenshots/signup.png) | ![](assets/screenshots/patient_home.png) |

| Doctor Dashboard | Upload Reports | Admin Dashboard |
|------------------|----------------|-----------------|
| ![](assets/screenshots/doctor_dashboard.png) | ![](assets/screenshots/upload.png) | ![](assets/screenshots/resources.png) |

> All images and illustrations are **custom prompts generated** for medical UI consistency.  

---

## ⚙️ Installation Guide

### 🔹 Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install)  
- [Dart](https://dart.dev/get-dart)  
- [Node.js](https://nodejs.org/) & npm  
- [MongoDB](https://www.mongodb.com/try/download/community)  

---

### 🔹 Steps to Run Locally

#### 1️⃣ Clone the repository
```bash
git clone https://github.com/your-username/hospitalmanagement.git
cd hospitalmanagement
```

#### 2️⃣ Install dependencies
```bash
flutter pub get
```

#### 3️⃣ Add assets
Make sure you have these images in your project:
```
assets/images/login.png
assets/images/signup.png
assets/images/patient_home.png
assets/images/prescription.png
assets/images/patient_profile.png
assets/images/doctor_dashboard.png
assets/images/upload.png
assets/images/doctor_profile.png
assets/images/approve_doctor.png
assets/images/resources.png
assets/images/add_doctor.png
```

#### 4️⃣ Setup Backend
- Navigate to the backend folder (`/backend`).  
- Install dependencies:
```bash
npm install
```
- Start server:
```bash
npm start
```

#### 5️⃣ Run Flutter App
```bash
flutter run
```

---

## 🚀 Future Enhancements
- Integrate **Firebase Authentication**.  
- Add **video consultation**.  
- Implement **AI-based prescription analysis**.  
- Push notifications for appointment reminders.  

---

## 📝 License
This project is for **educational purposes only**.  
Free to use and modify for your academic project.  
