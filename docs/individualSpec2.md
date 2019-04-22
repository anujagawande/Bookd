# Individual Assignment Specifications

- Team: Bookd
- Iteration: 2

## Special Roles

- Project Coordinator: Michael Ciskowski
- Quality Assurance Czars:
  - Anuja Gawande
  - Malcolm Bryant
- Video Demo Creators:
  - Anuja Gawande, 1.00
  - Michael Ciskowski, 1.00
- Demo-Booth Operators:
  - Mykaila Johnson
  - Malcolm Bryant

## Tasks: Anuja Gawande

### Task: Finalize and Test Validations

- Description: Finalize input validations and run test cases for the following models: book_club, book, comment, discussion, person, and user. Update the views to inform the user if a form submission violates validations.
- How to Evaluate: A user should be able to successfully submit a form for each of the models that matches the validations. If a validation fails, the user should be notified of the cause.
- Outcome of Task: Completed as planned.
- Issue: [#22](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/22)
- Pull Request: [#24](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/24)

### Task: Implement Profile Rating

- Description: Update the view of the user profile page to display a simple rating based on their site activity.
- How to Evaluate: A user's profile page should show a rating associated with their account. This rating will be equal to the number of comments posted by the user.
- Outcome of Task: Completed as planned.
- Issue: [#23](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/23)
- Pull Request: [#39](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/39)

### Task: Add Seed Data for All Model Classes

- Description: Update and add seed data as required to match the new validations.
- How to Evaluate: Seeding the database should be completed without errors.
- Outcome of Task: Completed as planned.
- Issue: -
- Pull Request: No Pull Request - Seed data was fixed and updated through other commits due to time constraint.

## Tasks: Michael Ciskowski

### Task: Update Book Page

- Description: Fully connect view and controller actions for book pages with associated models.
- How to Evaluate: Book page view should be updated to match the final wireframe. Users will be able to create or join the associated book club, create a new discussion, and view a table of all associated discussions.
- Outcome of Task: Completed as planned.
- Issue: [#28](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/28)
- Pull Request: [#29](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/29)

### Task: Update Comments on Discussions

- Description: Update view, route, and controller action for posting and deleting comments on a discussion page.
- How to Evaluate: A user will be able to select the option to add a comment on the discussion page. The comment will contain the appropriate association to the discussion and all associated comments are displayed on the discussion page. Users will be able to delete comments they have posted.
- Outcome of Task: Completed as planned.
- Issue: [#25](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/25)
- Pull Request: [#26](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/26)

### Task: Fix Account Profile Link Using Association

- Description: Update the people/edit view to fix the link with associating person with user.
- How to Evaluate: In milestone 1, restarting the server caused this link to break. Update the dynamic profile buttons on this page so they are persistent and accurate if an associated profile page exists.
- Outcome of Task: Completed with additional bug fixes on other pages.
- Issue: [#41](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/41)
- Pull Request: [#42](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/42)

### Task: Fix Profile and Discussion Creation

- Description: A mid-iteration bug fix for multiple errors while creating a profile or discussion page.
- How to Evaluate: The implemented changes resolve the issues with profile and discussion creation. Create an migration to match the changes to schema used for discussion/user association. Fix redirects and use of book id parameters in discussion and book club.
- Outcome of Task: Completed as planned.
- Issue: [#41](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/41)
- Pull Request: [#42](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/42)

### Task: Update Wireframes for Book, Book Club, and Discussion Pages

- Description: Update the UI-Sketches for the following pages: create_book_club, book_page, create_discussion_page, and discussion_page.
- How to Evaluate: The wireframes should be updated to match the changes in website design decisions.
- Outcome of Task: Completed as planned.

### Task: Discussion Author Picture and Profile

- Description: Update the UI on discussion page and table on book page to include the username and profile picture of the user associated with the discussion.
- How to Evaluate: The discussions table on the show book view will contain the associated user's profile picture. The discussion show view will contain the associated user's picture and updated button with their username.
- Outcome of Task: Completed as planned.
- Issue: [#44](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/44)
- Pull Request: [#45](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/45)

## Tasks: Mykaila Johnson

### Task: Update Discussion Design

- Description: Update the views, routes, and controller actions for the discussion pages to better match the new discussion design.
- How to Evaluate: Discussion page views for new and show pages should include information about the book they are associated with, including links to the associated book page for the new and show views. Additionally, include a link to the profile of the user who created the discussion.
- Outcome of Task: Completed as planned.
- Issue: [#36](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/36)
- Pull Request: [#38](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/38)

### Task: Suggested Books

- Description: Update user view and controller to allow other users to leave suggested books on a profile page.
- How to Evaluate: A user who visits a profile page will have the option to suggest a book to the user. The suggested book will be associated with the user's profile and listed on their profile page.
- Outcome of Task: Completed as planned.
- Issue: [#32](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/32)
- Pull Request: [#43](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/43)

## Tasks: Malcolm Bryant

### Task: Update Search Results

- Description: Update the books#index page so every book result includes the book ID. Additionally, each book result should link to the associated book.
- How to Evaluate: Search results on the books#index page should include the ID associated with the book in each table row. Users will be able to click a link for each search result to reach the associated book page.
- Outcome of Task: Completed as planned.
- Issue: [#30](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/30)
- Pull Request: [#33](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/33)

### Task: Join Book Club

- Description: Update view, route, and controller action for joining a book club.
- How to Evaluate: On either the book page or the book club page, the user should be able to join an existing book club. Joining the book club should update the user's list in the database to include the new user.
- Outcome of Task: Completed as planned.
- Issue: [#34](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/34)
- Pull Request: [#35](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/35)

### Task: Update Class Diagrams

- Description: Update the Class Diagram document to include the new association between user and discussion.
- How to Evaluate: The class diagram document should now contain the association discussion belongs to user.
- Outcome of Task: Completed as planned.
