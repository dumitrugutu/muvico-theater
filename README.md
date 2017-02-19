# README

User stories:

1. Customers should be able to come to the site and see all movies playing with their showtimes.

2. Seating is limited for each theater so a particular showtime should only have a limited number of seats

3. Once a show sells out, a customer should no longer be able to buy tickets

4. Customers should only be able to buy one ticket at a time

5. The customer should be able to checkout by entering their name, email, credit card, and expiration date

6. The customer should see if any errors occur when ordering a ticket

7. The customer purchases their tickets, they should receive an email receipt

Owner stories:

1. The owner should be able to manage the movies playing and seating capacities

  * She should be able to add auditoriums and seating capacities

  * should be able to set which movie is showing in which auditorium

2. The owner should be able to track all the sales

  * She should be able to see a list of all orders

  * She should be able to see a list of orders for each movie

Step 1.
  - Create the table 'movies' to store movies data
  - Many people can buy tickets to see a movie so we need a table 'purchases'
  to store all the purchases.
  - A movie can have multiple purchases but a purchase can only belong to one movie. We have a one to
  many association
  - Add column 'start_time' so customers know when the movie starts(we'll change it later)
  - Show all the movies in the root of the application

Step 2
  - Create table 'purchases' which has the columns 'name' and 'email'. We need the customer's
  email to see if they have purchased a ticket already. We'll use the email to send the receipt.
  Show errors if they have purchased a ticket previously.

Step 3
  - Create table 'auditoria' which has a column 'seat_capacity'(it makes more sense to be here). This way we can track how many seats we have available to notify the customer in case the show is sold out.

Step 4
  - A movie can be showed in multiple auditoriums and an auditorium can show
  multiple movies at different hours. We have a many to many association
  - Create a join table 'screenings' to store the data
  - Add column 'start_time' which was previously on table 'movie'(it makes more sense to be here since the same movie can be showed at different times)
  - Show all the screenings in the root of the application
