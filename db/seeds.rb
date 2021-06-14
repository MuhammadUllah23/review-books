User.create(username:"CinnamonJack2", password:"1234")
User.create(username:"ILoveBooks", password:"1234")
User.create(username:"BookKeeper", password:"1234")
User.create(username:"TinyLibrarian", password:"1234")
User.create(username:"PageSorcerer45", password:"1234")

Book.find_or_create_by(book_name:"No Longer Human", book_author:"Osamu Dazai", book_genre:"Fiction")
Book.find_or_create_by(book_name:"The Odyssey", book_author:"Homer", book_genre:"Epic")
Book.find_or_create_by(book_name:"The Count Of Monte Cristo", book_author:"Alexandre Dumas", book_genre:"Historical Novel, Adventure")
Book.find_or_create_by(book_name:"Rich Dad Poor Dad", book_author:"Robert Kiyosaki", book_genre:"Personal Finance, Entrepreneurship, Business")
Book.find_or_create_by(book_name:"Discourses and Selected Writings", book_author:"Epictetus", book_genre:"Philosophy")
Book.find_or_create_by(book_name:"Writer, Sailor, Soldier, Spy: Ernest Hemingway's Secret Adventures, 1935-1961", book_author:"Nicholas E. Reynolds", book_genre:"Biography")
Book.find_or_create_by(book_name:"Moby Dick", book_author:"Herman Melville", book_genre:"Novel, Adventure Fiction, Epic")

