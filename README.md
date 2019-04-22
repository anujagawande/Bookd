# README

This provides necessary instructions to run Bookd App

Things you need to do before running rails server:

  -Get the latest from master branch

  -Run 'bundle install'

  -Run 'rails db:seed'

  -Run 'rails s -b 0.0.0.0'

Our web application can be accessed at: http://localhost:3000/home

Users can be accessed at: http://localhost:3000/users/1

Books can be accessed at: http://localhost:3000/books/1

Sample seeds implemented to test application features:

-Book.create!(title: 'The Grapes of Wrath', 
    description: 'Set during the Great Depression, the novel focuses on the Joads,
     a poor family of tenant farmers driven from their Oklahoma home by drought, economic hardship, 
     agricultural industry changes, and bank foreclosures forcing tenant farmers out of work.',
     genre: 'Novel', rating: 10, review: 'Time magazine included the novel in its TIME 100 Best English-language Novels from 1923 to 2005.')

-Book.create!(title: 'Pride and Prejudice', 
    description: 'Pride and Prejudice is an 1813 romantic novel by Jane Austen. 
    It charts the emotional development of protagonist Elizabeth Bennet, 
    who learns the error of making hasty Judgments and comes to appreciate the 
    difference between the superficial and the essential. The comedy of the writing 
    lies in the depiction of manners, education, marriage, and money during the British Regency period.',
    genre: 'Classic Regency Novel', rating: 8, review: '')
    
-User.create!(username: "Anuja Gawande", age: 21, career: 'IT',fav_genre: 'fiction', hobbies: 'painting', profile_rating: 10, recommendations: 'Color Purple', suggested: 'History')

Misc:

  -Iteration 1 Demo Video Link: https://www.youtube.com/watch?v=cdRAZY4S4tw&t=0s&index=2&list=PLzD2uXpwR9JFhnvlM2iWm2Wu-xjUB1nmS
