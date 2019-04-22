# Individual Assignment Specifications

- Team: Bookd
- Iteration: 1

## Special Roles

- Project Coordinator: Michael Ciskowski
- Quality Assurance Czar: Anuja Gawande, Malcolm Bryant
- Video Demo Creators:
  - Anuja Gawande, 1.25
  - Michael Ciskowski, 0.75
- Demo-Booth Operator: Mykaila Johnson

## Tasks: Anuja Gawande

### Task 1: Create model classes and associations

- Description: Using the UML class diagram, create model classes for User, Book, Book club, Comment, Discussion and add associations between them.
- How to Evaluate: Model classes and associations exists under models.
- Outcome of Task: Completed as planned. 
- Issue: [#1](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/1)
- Pull Request: [#20](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/20)

### Task 2: Create Sign-up and sign-in page

- Description: Create ERB view, route, controller action for sign up and sign-in page.
- How to Evaluate: User should be able to sign-up for a new account and sign in with an existing account on the home page.
- Outcome of Task: Completed as planned. Created additional 'Person' model class for devise implementation.
- Issue: [#4](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/4)
- Pull Request: [#9](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/9)

### Task 3: Create home page

- Description: Create a home ERB file, route and controller action for home page.
- How to Evaluate: User will be able to view the home page.
- Outcome of Task: Completed as planned.
- Issue: [#13](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/13)
- Pull Request: [#14](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/14)

### Task 4: Create profile page

- Description: Create ERB view, route and appropriate controller actions for profile page.
- How to Evaluate: The resulting page should match the wireframe for the profile page and contain complete set of profile information.
- Outcome of Task: Completed as planned.
- Issue: [#10](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/10)
- Pull Request: [#11](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/11)

## Tasks: Michael Ciskowski

### Task 1: Add Books

- Description: Create ERB view, route, controller action for the add book and book page features.
- How to Evaluate: User should be able to fill out a form of book information and perform a create action to add this entry to the book table in the database. Then the user should be able to render a view of the book page.
- Outcome of Task: Completed with an updated view to match change in requirements.
- Issue: [#2](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/2)
- Pull Request: [#3](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/3)

### Task 2: Connect Account and Profile Data

- Description: Associate every account with a profile page and add links for account/profile actions.
- How to Evaluate: User should be edit their devise account information separate from their public profile page. A one-to-one association should be created between people and users tables. Links on the profile page and people/edit page should direct to the appropriate resources.
- Outcome of Task: Completed with the Person model class from 'Create Sign-up and sign-in page'.
- Issue: [#7](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/7)
- Pull Request: [#15](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/15)

### Task 3: Create profile and profile edit ERB

- Description: Create edit view, route, controller action for profile and add appropriate controller action and route.
- How to Evaluate: User should be able to edit their profile information displayed on their profile page, updating this information in the database user table. Users with an account, but no existing profile should be able to make one from their people/edit view. Add active record and handle user profile pictures.
- Outcome of Task: Completed as planned.
- Issue: [#5](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/5)
- Pull Request: [#18](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/18)

## Tasks: Mykaila Johnson

### Task 1: Create a book discussion

- Description: Create ERB view, route, controller action for the add book discussion feature.
- How to Evaluate: User should be able to select add discussion from the book page, create a discussion, and view the discussion page.
- Outcome of Task: xxx (Description; filled in at end of iteration)

### Task 2: Comment on a book discussion

- Description: Add a comment to an existing book discussion.
- How to Evaluate: User should be able to comment on an existing discussion, adding an entry to the appropriate database comment table. The view will be updated after the comment is posted.
- Outcome of Task: xxx (Description; filled in at end of iteration)

### Task 3: Create chapter discussion

- Description: Create ERB view, route, controller action for adding chapter discussion feature on the book page.
- How to Evaluate: User should be able to select add chapter discussion from the book page, create a discussion, and view the discussion on the book page.
- Outcome of Task: xxx (Description; filled in at end of iteration)

## Tasks: Malcolm Bryant

### Task 1: Create search results page

- Description: Create a view and route for search results page.
- How to Evaluate: View should match the wireframe for the search_results image. Route should correctly direct the user to the results page for a given search.
- Outcome of Task: Completed as planned
- Issue: [#6](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/6)
- Pull Request: [#12](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/12)

### Task 2: Recommend books on profile

- Description: A user created list of recommended books on their profile page.
- How to Evaluate: User should be able to add or remove books from their list of recommended books on their profile page.
- Outcome of Task: Completed as planned
- Issue: [#8](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/8)
- Pull Request: [#16](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/16)

### Task 3: Create a Book Club

- Description: Create a book club page for an existing book page.
- How to Evaluate: User should be able to fill out a form to create the book club for a specific book page. Form data should be used to create a database entry in the book club table. The book club page should display information entered on the form.
- Outcome of Task: Completed as planned
- Issue: [#17](https://github.com/memphis-cs-projects/comp4081-Bookd/issues/17)
- Pull Request: [#19](https://github.com/memphis-cs-projects/comp4081-Bookd/pull/19)