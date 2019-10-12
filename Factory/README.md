# README CS 3270 Project
*Directions for assignment 1:
    -Create scaffolds for makes, cars, parts
    -One to many relationship for make to cars
    -Many to many relationshiop for cars to parts
    -Create model Factory for many to many relationship 
*Direcitons for assignment 2:
    -Add validations to all your models. 
    -Add a search in each index function. 
    -Write unit tests for all code you create. 
    --For extra credit, make the searches dynamic using Ajax.
    
*Scaffolding:
Cars -> Factory -> Parts
one to many
    
    
    Commands Used:
    $rails new Factory
    $rails generate scaffold Part Title:string description:text image_url:string price:decimal
    $rails generate Model CarsParts cars:references parts:references
    $rails generate scaffold Car Make:string Model:string Vin:integer make:references
    $bin/rails db:seed
    $rails db:migrate
    $rails test
    $rails server
    $rails destroy scaffold __name__
    $rails db:migrate:status
    $rake db:rollback
    $rails db:update
    $rails db:drop
    
    
    
* ROR Info
Rails version: 5.2.3
Ruby version: 2.3.7-p456 (universal.x86_64-darwin18)
RubyGems version: 2.5.2.3
Rack version: 2.0.7
JavaScript Runtime: JavaScriptCore
Database adapter: sqlite3
