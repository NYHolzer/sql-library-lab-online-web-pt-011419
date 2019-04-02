def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY motto LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT (*) AS num_char 
   FROM characters 
   GROUP BY species 
   ORDER BY num_char DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON authors.id = series.author_id INNER JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
<<<<<<< HEAD
  <<-SQL
    SELECT series.title
    FROM series
    INNER JOIN books ON series.id = books.series_id
    INNER JOIN character_books ON books.id = character_books.book_id
    INNER JOIN characters ON character_books.character_id = characters.id
    WHERE characters.species = "human"
    GROUP BY series.title
    ORDER BY COUNT(*) DESC
    LIMIT 1
  SQL
=======
  "SELECT series.title FROM series INNER JOIN characters ON series.id = characters.series_id"
>>>>>>> 47749350da9abdeb44bf9fd2f9b1a3ccefb18e5a
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books) "
end
