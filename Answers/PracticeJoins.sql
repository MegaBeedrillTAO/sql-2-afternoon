1. 
SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

2. 
SELECT 
invoice.invoice_date, customer.first_name, customer.last_name,invoice.total
from invoice
join customer on invoice.customer_id = customer.customer_id;

3. 
SELECT 
customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer
join employee on customer.support_rep_id = employee.employee_id;

4. 
SELECT album.title, artist.name
FROM album 
JOIN artist  ON album.artist_id = artist.artist_id;

5. 
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

6. 
SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

7. 
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id

8. 
SELECT t.name, a.title
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk'