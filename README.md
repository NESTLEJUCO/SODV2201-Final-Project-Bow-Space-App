# SODV2201-Final-Project-Bow-Space-App
SODV2201 Final Project Bow Space App REACT, NODEJS and MSSQL 
REACT APP SETUP GUIDE
 
FRONTEND REACT
1. Create Folder, Project
2. Install React - npx create-react-app projectapp
3. Edit react index.html - Add Bootstrap CDN Links for JS and CSS, Font Awesome and Google Fonts
4. Create jsx components and pages folder
5. Install React router - npm install react-router-dom
6. Install npm install react-bootstrap bootstrap
7. Might also need to install - npm install axios (if error occurs)

BACKEND REACT USING NODE.JS
1. Create Folder, backend
2. Install the ff to backend folder, using node.js packages:
• npm init -y
• npm install express -save
• npm install nodemon -save
• npm install body-parser
• npx nodemon server.js
• npm install express sqlite3 (DATABASE)
• npm install cors
• npm install axios

DATABASE USING SQLITE
1. Create sqlite folder in C:/
2. Download sqlite files in https://www.sqlite.org/download.html, Download Pre-compiled Libraries for Windows (download 2 zip file dll and tools)
3. Extract all sqlite files from dll and tools
4. Test sqlite in cmd prompt window
5. Type cd sqlite
6. Type sqlite3
7. sqlite version should appear and sqlite> prompt
8. Download sqlitestudio https://sqlitestudio.pl/
9. Install sqlitestudio
10. Create database, do not forget to set path and add .db file extension ex. Select the folder icon, find correct path and write test.db

Notes:
React App Directory: cd bowcourseregapp
Node.js Server: server.js
SQlite Database: bowcourseregappDB.db

Sample Student Accounts: 
Diploma Account - Username: Nestle Password: 1111
Post-Diploma Account - Username: Jess Password: 2222
Certificate Account - Username: Felix Password: 3333

Sample Admin Account:
Username: Admin Password: admin


Creating Accounts and Courses:
New accounts can be added in the signup registration, new courses can be added, edited, and deleted by the admin account. 

Security Features:
Security Features: User Level Authentication and Token Authentication
