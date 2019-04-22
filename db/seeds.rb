# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create!(username: 'Username', fav_genre: 'Mystery', age: 22, hobbies: 'Reading', career: 'coding', recommendations: 'The Grapes of Wrath')

#person_1 = Person.new(email: 'gawande1@gmail.com', password: 'gawande1')
#comment_1 = person_1.comments.build(message: "Nice book")
#person_1.save!

#person_2 = Person.new(email: 'anuja@gmail.com', password: 'anuja123')
#comment_2 = person_2.comments.build(message: "Nice book")
#person_2.save!


Book.create!(title: 'The Grapes of Wrath', 
    description: 'Set during the Great Depression, the novel focuses on the Joads,
     a poor family of tenant farmers driven from their Oklahoma home by drought, economic hardship, 
     agricultural industry changes, and bank foreclosures forcing tenant farmers out of work.',
     genre: 'Drama', rating: 10, review: 'Time magazine included the novel in its TIME 100 Best English-language Novels from 1923 to 2005.')

Discussion.create!(title: 'The Grapes of Test', message: 'A simple book page test discussion', book_id: 1, user_id: 1)
Discussion.create!(title: 'Sample Discussion 2', message: 'Another simple book page test discussion', book_id: 1, user_id: 1)
Discussion.create!(title: 'Yet another Sample Discussion', message: 'Third discussion to test book page', book_id: 1, user_id: 1)


Book.create!(title: 'Pride and Prejudice', 
    description: 'Pride and Prejudice is an 1813 romantic novel by Jane Austen. 
    It charts the emotional development of protagonist Elizabeth Bennet, 
    who learns the error of making hasty Judgments and comes to appreciate the 
    difference between the superficial and the essential. The comedy of the writing 
    lies in the depiction of manners, education, marriage, and money during the British Regency period.',
    genre: 'Drama', rating: 8, review: '')

#User.create!(username: "Anuja Gawande", age: 21, career: 'IT',fav_genre: 'fiction', hobbies: 'painting', profile_rating: 10, recommendations: 'Color Purple', suggested: 'History')