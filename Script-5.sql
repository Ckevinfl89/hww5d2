CREATE TABLE "Customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "email_address" VARCHAR(50),
  "loyalty_member" BOOLEAN DEFAULT FALSE,
  "ticket_id" INTEGER
);

CREATE TABLE "Ticket" (
  "ticket_id" SERIAL PRIMARY KEY,
  "price" NUMERIC(2,2),
  "movie_id" INTEGER,
   FOREIGN KEY ("movie_id") REFERENCES "Movie"("movie_id"),
  "theatre_id" INTEGER,
   FOREIGN KEY ("theatre_id") REFERENCES "Theatre"("theatre_id")
);

CREATE TABLE "Movie" (
  "movie_id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
  "description" VARCHAR
);


CREATE TABLE "Theatre" (
  "theatre_id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
  "description" VARCHAR,
  "movie_id" INTEGER,
  FOREIGN KEY ("movie_id") REFERENCES "Movie"("movie_id")
);

ALTER TABLE "Customer" 
ADD FOREIGN KEY ("ticket_id") REFERENCES "Ticket"("ticket_id")

SELECT *
FROM "Customer" c

