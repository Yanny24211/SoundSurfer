# 🌊 SoundSurfer

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Issues](https://img.shields.io/github/issues/Yanny24211/SoundSurfer)](https://github.com/Yanny24211/SoundSurfer/issues)
[![Forks](https://img.shields.io/github/forks/Yanny24211/SoundSurfer)](https://github.com/Yanny24211/SoundSurfer/network)
[![Stars](https://img.shields.io/github/stars/Yanny24211/SoundSurfer)](https://github.com/Yanny24211/SoundSurfer/stargazers)

> **A highly available, containerized social music platform to listen, share, review, and discover new sounds.**

---

## 📖 Table of Contents
- [About the Project](#-about-the-project)
- [Architecture & Design](#-architecture--design)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Getting Started](#-getting-started)
  - [Prerequisites](#prerequisites)
  - [Deployment & Installation](#deployment--installation)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🔊 About the Project

**SoundSurfer** is a collaborative, academic project designed to create a comprehensive social music experience. Developed with a focus on robust software engineering principles, the application allows users to connect over music by listening, sharing, and reviewing songs within a community-driven environment. 

Through effective Git-based collaboration and agile peer development, the project pipeline was optimized for a 20% faster development pace. The final product is built for scale, utilizing Docker and Kubernetes to ensure high availability and efficient load balancing across the network.

## 📐 Architecture & Design

Comprehensive planning was critical to the success of SoundSurfer. Before writing code, the system's requirements and entity relationships were mapped out extensively to ensure all use cases were accounted for.


usecaseDiagram
    actor User as "User"
    actor System as "Discover Engine"

    package SoundSurfer {
        usecase UC1 as "Listen to Songs"
        usecase UC2 as "Review Songs"
        usecase UC3 as "Share Songs with Peers"
        usecase UC4 as "Receive Recommendations"
        usecase UC5 as "Manage Account/Profile"
    }

    User --> UC1
    User --> UC2
    User --> UC3
    User --> UC5
    
    UC4 <-- System
    User --> UC4 : Views Discover Tab
    
    UC2 .> UC1 : <<includes>> (Must listen to review)


classDiagram
    class User {
        +int userId
        +String username
        +String email
        +String passwordHash
        +register()
        +login()
        +shareSong(songId, targetUserId)
    }

    class Song {
        +int songId
        +String title
        +String artist
        +String genre
        +String filePath
        +int duration
        +play()
        +pause()
    }

    class Review {
        +int reviewId
        +int rating
        +String comment
        +Date timestamp
        +createReview()
        +editReview()
        +deleteReview()
    }

    class DiscoverEngine {
        +List~Song~ recommendedSongs
        +analyzeUserHistory(userId)
        +generateSuggestions()
    }

    class MySQLDatabase {
        +Connection connection
        +connect()
        +executeQuery()
        +executeUpdate()
    }

    %% Relationships
    User "1" -- "0..*" Review : Writes >
    Song "1" -- "0..*" Review : Has >
    User "1" -- "0..*" Song : Listens to >
    User "1" -- "0..*" User : Shares with >
    DiscoverEngine "1" -- "1" User : Analyzes >
    DiscoverEngine "1" -- "0..*" Song : Suggests >
    
    User ..> MySQLDatabase : Persisted in
    Song ..> MySQLDatabase : Persisted in
    Review ..> MySQLDatabase : Persisted in
## ✨ Features

* **Social Listening & Reviews:** Stream your favorite tracks and leave public reviews for other users to read and engage with.
* **Music Sharing:** Easily share songs with peers across the platform.
* **Discover Engine:** A dedicated recommendation section designed to suggest new sounds and artists based on user data.
* **Custom JavaFX UI:** A sleek, responsive graphical user interface built entirely in JavaFX and styled with custom CSS.
* **High Availability:** Fully containerized backend using Docker, orchestrated via Kubernetes to provide load balancing and zero-downtime scalability.

## 🛠️ Tech Stack

* **Frontend:** JavaFX, CSS
* **Backend/Core:** Java, Apache (Maven/Tomcat)
* **Database:** MySQL
* **DevOps & Deployment:** Docker, Kubernetes (K8s)
* **Version Control:** Git

## 🚀 Getting Started

To run SoundSurfer locally, you will need to set up your local Kubernetes cluster, database, and Java environment. 

### Prerequisites

* [Java Development Kit (JDK)](https://adoptium.net/) (v11 or higher)
* [Apache Maven](https://maven.apache.org/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (or equivalent container runtime)
* [Minikube](https://minikube.sigs.k8s.io/docs/start/) or a similar local Kubernetes cluster
* `kubectl` command-line tool

### Deployment & Installation

1. **Clone the repository**
   ```bash
   git clone [https://github.com/Yanny24211/SoundSurfer.git](https://github.com/Yanny24211/SoundSurfer.git)
   cd SoundSurfer
