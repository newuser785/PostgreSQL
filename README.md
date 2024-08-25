# PostgreSQL and Python Docker Compose Example
This repository demonstrates how to set up a PostgreSQL database and a Python application using Docker Compose.
## Project Structure

├── db/

│   ├── Dockerfile

│   ├── init.sql

├── python/

│   ├── Dockerfile

│   ├── main.py

│   ├── requirements.txt

├── README.md

├── docker-compose.yml

├── docker.png

├── terminal.png

- db/: Contains the Dockerfile and init.sql to set up the PostgreSQL database.
- python/: Contains the Dockerfile, main.py, and requirements.txt for the Python application.
- docker-compose.yml: Defines and runs multi-container Docker applications.
- README.md: Information about this repository.

## How to Run

Clone this repository to your local machine:

git clone https://github.com/newuser785/PostgreSQL.git

cd PostgreSQL

Build and run the Docker containers:

docker-compose down -v

docker-compose up --build

## Notes

- Ensure Docker and Docker Compose are installed on your machine.
- The PostgreSQL container has a health check to ensure it's ready to accept connections.
