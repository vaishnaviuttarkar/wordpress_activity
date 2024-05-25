## Wordpress Activity!
=========================================

Create a Container 
Install Apache Web Server or a Web server of your choice that supports PHP Execution.
Install PHP Library
Configure Apache Webserver to recognize PHP
Wordpress will require MySQL 
Install Wordpress  
https://wordpress.com/

Solution:

# WordPress Docker Setup

This project sets up a WordPress environment using Docker, complete with Apache, PHP, and MySQL.

## Prerequisites

- Docker
- Docker Compose

## Project Structure

.
├── Dockerfile
├── docker-compose.yml
├── README.md

## Getting Started

### Step 1: Build and Run the Containers

1. **Clone the repository** (if using version control):
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Build and start the containers**:
    ```sh
    docker-compose up -d --build
    ```

### Step 2: Access WordPress in the Browser

1. Open your web browser and navigate to:
    ```
    http://localhost:8080
    ```

2. Follow the on-screen instructions to complete the WordPress setup.

### WordPress Database Configuration

During the WordPress setup, use the following database configuration:

- **Database Name**: `wordpress_db`
- **Username**: `wordpress_user`
- **Password**: `wordpress_password`
- **Database Host**: `db:3306`
- **Table Prefix**: (optional, use the default `wp_` or customize as needed)

## Stopping and Removing Containers

To stop and remove the containers, run:

- docker-compose down

Viewing Logs
To view logs from the WordPress container, use:

- docker-compose logs wordpress


### Conclusion

This `README.md` file provides a clear and concise guide to set up and run a WordPress environment using Docker. It includes instructions for building and running the containers, accessing WordPress, stopping and removing containers, viewing logs, and understanding the project configuration.
