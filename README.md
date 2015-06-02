Source: http://www.kerrybuckley.org/2015/03/27/tdd-example-with-rails-cucumber-and-rspec/

# Sample "to-do" Rails app

Created for a demo of TDD with [http://rubyonrails.org/](Rails), using
[http://rspec.info/](RSpec) and [https://cukes.info/](Cucumber).

This is an extremely basic to-do app. It currently allows creation of new items
and marking of items as done, but nothing else. There is also no input
validation, error-checking etc.

To run the app:

    rake db:migrate
    bin/rails s

Then go to [localhost:3000](http://localhost:3000) in your browser.

To run the tests:

    rake

See full commit messages for step-by-step description. Where files were changed
by running a command rather than manually, that step will be a separate commit,
with the command(s) listed in the commit message.

To check out a specific version of the code:

    git log

Find the SHA of the commit you want to check out, then:

    git checkout <SHA>
    rake db:reset

The steps in the history are more-or-less as I actually did them, but a glance
at the commit dates will make it obvious that I've gone back and rebased a
couple of things where I missed something out or changed my mind, in order to
keep a clean narrative.

To keep things simple, we're not using any additional testing tools apart from
RSpec and Cucumber (apart from Database Cleaner and Capybara, which Cucumber
depends on by default). In a real project, some or all of the following might
be useful:

* [factory_girl](https://github.com/thoughtbot/factory_girl) for building test
  data
* [faker](https://github.com/stympy/faker) for more realistic test values
* [SitePrism](https://github.com/natritmeyer/site_prism) to describe your site
  using the [page object model](http://martinfowler.com/bliki/PageObject.html)
  pattern
* [timecop](https://github.com/travisjeffery/timecop) to test time-dependent
  code
* [poltergeist](https://github.com/teampoltergeist/poltergeist) to use
  capybara on pages that use javascript
* [capybara-screenshot](https://github.com/mattheworiordan/capybara-screenshot)
  to automatically open a screenshot of the current page when a test fails

Personally, I'd also use [haml](http://haml.info/) instead of erb for the view
templating, but we're sticking with the default here for simplicity.