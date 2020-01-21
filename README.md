Есть задача: нужен новостной сервис.
В штате несколько редакторов, которые работают над контентом.
Планируется запуск как нескольких видов устройств.
Планируется платная подписка на новости.
Из требований:
админка - работа со статьями
апишка - авторизация/регистрация/получение статей/подписка
Ну и смысл в том, чтобы смотреть насколько продуманы разные вещи:
Например:
у статей, должна быть возможность публикации/черновика
админка предусматривает разные роли
к авторизации можно легко добавить дополнительные методы: соцсети, email, телефон
админка разруливает конфликты при редактировании одной сущности несколькими пользователями
подписка легко расширяется на подписки сторов/разные модели и тп

# News App

A rails app that allows you to view the latest articles from the NewsApi. You can sign in to bookmark an article. 

![News App](./assets/news-app.png)

## Installation Instructions

- Fork / clone this repository.
- cd into the downloaded directory.
- Install dependencies
  - `bundle install`
- Create database and run migrations.
  - `rails db:create && rails db:migrate`  
- Start server 
  - `rails server`

## Technologies Used
- Ruby
- Ruby on Rails
- HTML
- CSS
- JS
- [News Api](https://newsapi.org/)

chown -R webkss.webkss /var/www/webkss/data/www/rails-news

a2dissite rails
a2ensite rails
service apache2 restart
