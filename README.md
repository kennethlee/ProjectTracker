# [ProjectTracker](https://proj-tracker.herokuapp.com/) [![Build Status](https://travis-ci.org/kennethlee/ProjectTracker.svg?branch=master)](https://travis-ci.org/kennethlee/ProjectTracker)

ProjectTracker is a basic project management system (think of it as a simpler version of Pivotal Tracker) created using Ruby on Rails. This app was written using the TDD (Test-Driven Development) software methodology and includes a full test suite. Continuous deployment is handled by Travis CI.

### Features

- User sign-up/authentication is handled by Devise.
- **Authorization** for access and performable actions (e.g. creating/deleting projects and tickets) is handled by a role-based permissions system:
  - Anonymous Users: no access
  - Viewers: may view their project and its tickets
  - Editors: may view their project and its tickets as well as create and update their own tickets
  - Project Managers: may view and update their projects and view, create, edit, and delete tickets
  - Admins: have full privileges over any project and its tickets, as well as administrative control over access privileges of other users
- **Upload file attachments**: users with authorization to create tickets may attach an arbitrary number of files when creating a new ticket or editing an existing one.
- **Tickets are given state**, e.g. New, Open, Closed, etc.
- **Tagging**: a project's tickets may be tagged by the ticket's creator or the administrator for searchability and categorization.
- A user may use the search functionality to find a particular ticket by its tag or state.
- **Notifications**: A user is automatically subscribed to the ticket he/she created and will receive email notifications as new activity occurs. Other users may also subscribe to the ticket as well.

### Development and Deployment

- Testing: RSpec + Capybara
- Platform: Heroku
- Continuous deployment via Travis CI
- File store: Amazon S3

Click the project's screenshot below to be taken directly to the live project:

<div align="center">
  <a href="https://proj-tracker.herokuapp.com/"><img src="http://i.imgur.com/bDH4PpW.png" /></a>
</div>
