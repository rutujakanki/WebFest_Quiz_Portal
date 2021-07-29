WEB QUIZ PORTAL PHP & MySQL
===========================

This is a simple quiz app using the official [PHP](https://www.php.net/) and [MySQL](https://www.mysql.com/).

This app was made using XAMPP - PHP Development Environment. Be sure to check it's setup.


Installation
------------
First, you will need to install [XAMPP](https://www.apachefriends.org/index.html) following the instructions on their site.

Open Command Prompt, and go to folder where you've installed XAMPP. For ex.`C:\Xampp\htdocs\`

Then, simply run the following command:

```sh
git clone https://github.com/rutujakanki/WebFest_Quiz_Portal.git
```

Configuration
-------------
Make sure to import .sql file in your MySQL database. For that, open XAMPP, Click MySQL --> Admin 

Create Database and name it as `webfest`.

Import webfest.sql file in that database.

Now you can test your app! Just set your redirect_uri to `http://localhost/webfest/` and run a PHP server:
