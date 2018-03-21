# myInsta
Instagram web app with basic featurures in ruby on rails

## Dependencies
This application utilizes the 
* [Haml gem](https://github.com/haml/haml): To write easy and more pleasant HTML documents
* [simple_form gem](https://github.com/plataformatec/simple_form): Powerful way to make forms
* [Bootstrap-sass gem](https://github.com/twbs/bootstrap-sass): For adding bootstrap
* [Devise gem](https://github.com/plataformatec/devise): For adding user info
* [Paperclip gem](https://github.com/thoughtbot/paperclip): To manage pics in application
After this install [ImageMagick](https://github.com/ImageMagick/ImageMagick) for Paperclip gem.
* [masonry-rails gem](https://github.com/kristianmandrup/masonry-rails): To add jquery to indent photos
* [acts_as_votable gem](https://github.com/ryanto/acts_as_votable): To add voting feature

## Installation
To setup locally install the `ruby` `rails` latest versions :

clone the repo and follow the commands:
``` 
    git clone https://github.com/Paarmita/myinsta.git 
    cd myinsta
    bundle install
    rake db:migrate
    rails s
```
## Features
* User can post posts, like posts.
* User show page displays user's posts images in a 3 column grid
* Index page shows posts created by everyone.

## Additional features to be added
* Validations to assume user name is unique, contains no uppercase letters, and contains no whitespace
* Password protection via BCrypt
* User can post posts, follow users, like posts, comment on posts, etc. and also has a bio and name which are displayed on     their show page and users page
* Image storage on AWS S3 via the paperclip gem



## Welcome to Rails

Rails is a web-application framework that includes everything needed to create
database-backed web applications according to the Model-View-Control pattern.

This pattern splits the view (also called the presentation) into "dumb"
templates that are primarily responsible for inserting pre-built data in between
HTML tags. The model contains the "smart" domain objects (such as Account,
Product, Person, Post) that holds all the business logic and knows how to
persist themselves to a database. The controller handles the incoming requests
(such as Save New Account, Update Product, Show Post) by manipulating the model
and directing data to the view.

In Rails, the model is handled by what's called an object-relational mapping
layer entitled Active Record. This layer allows you to present the data from
database rows as objects and embellish these data objects with business logic
methods. You can read more about Active Record in
link:files/vendor/rails/activerecord/README.html.

The controller and view are handled by the Action Pack, which handles both
layers by its two parts: Action View and Action Controller. These two layers
are bundled in a single package due to their heavy interdependence. This is
unlike the relationship between the Active Record and Action Pack that is much
more separate. Each of these packages can be used independently outside of
Rails. You can read more about Action Pack in
link:files/vendor/rails/actionpack/README.html.


## Getting Started

1. At the command prompt, create a new Rails application:
       <tt>rails new myapp</tt> (where <tt>myapp</tt> is the application name)

2. Change directory to <tt>myapp</tt> and start the web server:
       <tt>cd myapp; rails server</tt> (run with --help for options)

3. Go to http://localhost:3000/ and you'll see:
       "Welcome aboard: You're riding Ruby on Rails!"

4. Follow the guidelines to start developing your application. You can find
the following resources handy:

* The Getting Started Guide: http://guides.rubyonrails.org/getting_started.html
* Ruby on Rails Tutorial Book: http://www.railstutorial.org/


## Description of Contents

The default directory structure of a generated Ruby on Rails application:
```
  |-- app
  |   |-- assets
  |       |-- images
  |       |-- javascripts
  |       `-- stylesheets
  |   |-- controllers
  |   |-- helpers
  |   |-- mailers
  |   |-- models
  |   `-- views
  |       `-- layouts
  |-- config
  |   |-- environments
  |   |-- initializers
  |   `-- locales
  |-- db
  |-- doc
  |-- lib
  |   `-- tasks
  |-- log
  |-- public
  |-- script
  |-- test
  |   |-- fixtures
  |   |-- functional
  |   |-- integration
  |   |-- performance
  |   `-- unit
  |-- tmp
  |   |-- cache
  |   |-- pids
  |   |-- sessions
  |   `-- sockets
  `-- vendor
      |-- assets
          `-- stylesheets
      `-- plugins
```
app
  ```Holds all the code that's specific to this particular application.```

app/assets
  ```Contains subdirectories for images, stylesheets, and JavaScript files.```

app/controllers
  ``` Holds controllers that should be named like weblogs_controller.rb for
  automated URL mapping. All controllers should descend from
  ApplicationController which itself descends from ActionController::Base.
  ```

app/models
  ``` Holds models that should be named like post.rb. Models descend from
  ActiveRecord::Base by default.```
```
app/views
 ``` Holds the template files for the view that should be named like
  weblogs/index.html.erb for the WeblogsController#index action. All views use
  eRuby syntax by default.
  ```

app/views/layouts
  ``` Holds the template files for layouts to be used with views. This models the
  common header/footer method of wrapping views. In your views, define a layout
  using the <tt>layout :default</tt> and create a file named default.html.erb.
  Inside default.html.erb, call <% yield %> to render the view using this
  layout.
 ```
app/helpers
  ``` Holds view helpers that should be named like weblogs_helper.rb. These are
  generated for you automatically when using generators for controllers.
  Helpers can be used to wrap functionality for your views into methods.
```
config
 ``` Configuration files for the Rails environment, the routing map, the database,
  and other dependencies.
```
db
 ``` Contains the database schema in schema.rb. db/migrate contains all the
  sequence of Migrations for your schema.
```
doc
 ``` This directory is where your application documentation will be stored when
  generated using <tt>rake doc:app</tt>
```
lib
```  Application specific libraries. Basically, any kind of custom code that
  doesn't belong under controllers, models, or helpers. This directory is in
  the load path.
```
public
```  The directory available for the web server. Also contains the dispatchers and the
  default HTML files. This should be set as the DOCUMENT_ROOT of your web
  server.
```
script
``` Helper scripts for automation and generation.
```
test
```  Unit and functional tests along with fixtures. When using the rails generate
  command, template test files will be generated for you and placed in this
  directory.
```
vendor
 ``` External libraries that the application depends on. Also includes the plugins
  subdirectory. If the app has frozen rails, those gems also go here, under
  vendor/rails/. This directory is in the load path.
```
