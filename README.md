Language Packs for hugerte-rails
================================

The `hugerte-rails-langs` gem adds language packs for [hugerte](https://hugerte.org/) (with [hugerte-rails](https://github.com/liberaldev/hugerte-rails)).

The gem currently includes all language packs available from https://www.tiny.cloud/get-tiny/language-packages/, some of which may be incomplete.


Instructions
------------

**Add the `hugerte-rails-langs` gem to your Gemfile**

    gem 'hugerte-rails'
    gem 'hugerte-rails-langs'

Language files will then be available during development mode and will be copied across when the `assets:precompile` rake task is run.

See the [hugerte-rails project](https://github.com/spohlenz/hugerte-rails) for further integration instructions.
