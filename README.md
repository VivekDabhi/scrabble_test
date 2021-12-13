# ScrabbleClub

## Requirements:

- Ruby version: 2.7.1
- Rails version: 6.0.3
- Database: PostgreSQL

## Follow below steps to setup your development environment:

1. clone the repository:

        git clone https://github.com/VivekDabhi/scrabble_test.git

2. Install dependencies:

    If your system doesn't have above ruby version. please install first. you can check ruby version using `ruby -v`.

    After installing specified ruby version, follow the below steps:

    Install the gems/library:

        bundle install
    Install the yarn packages:

        yarn install

3. Configure database.yml. It's located on `config/database.yml`

        Use your username and password of postgreSQL database.

4. Create Database

        rails db:create

5. Migrate table to Database

        rails db:migrate

6. Seed the data(this will create some data for application):

        rails db:seed

7. Let's go now. start the server.

        rails s

## What does the application ?

1. We can create player and edit the player information.
2. We can see the player profile information, like, how much game he/she wins, lose, average score, highest score against which opponent in which game.
3. We can play/create the game.
4. We can see the leaderboard who played minimum 10 games, irrespective of wins or lose.

### Thank You 
