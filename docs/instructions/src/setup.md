# Setup

1. Issue the following command to start project init:
    ```
    bundle gem palindrome
    ```

    An output similar to the following is expected:
    ```
    Creating gem 'palindrome'...
    Do you want to generate tests with your gem?
    Future `bundle gem` calls will use your choice. This setting can be changed anytime with `bundle config gem.test`.
    Enter a test framework. rspec/minitest/test-unit/(none): 
    ```

1. Provide the following input to the prompt from previous step:
    ```
    rspec
    ```

    An output similar to the following is expected:
    ```
    Do you want to set up continuous integration for your gem? Supported services:
    * CircleCI:       https://circleci.com/
    * GitHub Actions: https://github.com/features/actions
    * GitLab CI:      https://docs.gitlab.com/ee/ci/
    * Travis CI:      https://travis-ci.org/

    Future `bundle gem` calls will use your choice. This setting can be changed anytime with `bundle config gem.ci`.
    Enter a CI service. github/travis/gitlab/circle/(none): 
    ```
1. Press `<Enter>` in response to the prompt from previous step.

    An output similar to the following is expected:
    ```
    Do you want to license your code permissively under the MIT license?
    This means that any other developer or company will be legally allowed to use your code for free as long as they admit you created it. You can read more about the MIT license at https://choosealicense.com/licenses/mit. y/(n): 
    ```

1. Provide the following input to the prompt from previous step:
    ```
    y
    ```

    An output similar to the following is expected:
    ```
    Do you want to include a code of conduct in gems you generate?
    Codes of conduct can increase contributions to your project by contributors who prefer collaborative, safe spaces. You can read more about the code of conduct at contributor-covenant.org. Having a code of conduct means agreeing to the responsibility of enforcing it, so be sure that you are prepared to do that. Be sure that your email address is specified as a contact in the generated code of conduct so that people know who to contact in case of a violation. For suggestions about how to enforce codes of conduct, see https://bit.ly/coc-enforcement. y/(n): 
    ```

1. Provide the following input to the prompt from previous step:
    ```
    y
    ```

    An output similar to the following is expected:
    ```
    Do you want to include a changelog?
    A changelog is a file which contains a curated, chronologically ordered list of notable changes for each version of a project. To make it easier for users and contributors to see precisely what notable changes have been made between each release (or version) of the project. Whether consumers or developers, the end users of software are human beings who care about what's in the software. When the software changes, people want to know why and how. see https://keepachangelog.com y/(n): 
    ```

1. Press `<Enter>` in response to the prompt from previous step.

    An output similar to the following is expected:
    ```
    Do you want to add rubocop as a dependency for gems you generate?
    RuboCop is a static code analyzer that has out-of-the-box rules for many of the guidelines in the community style guide. For more information, see the RuboCop docs (https://docs.rubocop.org/en/stable/) and the Ruby Style Guides (https://github.com/rubocop-hq/ruby-style-guide). y/(n): 
    ```

1. Provide the following input to the prompt from previous step:
    ```
    y
    ```

    An output similar to the following is expected:
    ```
    Initializing git repo in /home/user/sandbox/palindrome
          create  palindrome/Gemfile
          create  palindrome/lib/palindrome.rb
          create  palindrome/lib/palindrome/version.rb
          create  palindrome/palindrome.gemspec
          create  palindrome/Rakefile
          create  palindrome/README.md
          create  palindrome/bin/console
          create  palindrome/bin/setup
          create  palindrome/.gitignore
          create  palindrome/.rspec
          create  palindrome/spec/spec_helper.rb
          create  palindrome/spec/palindrome_spec.rb
          create  palindrome/LICENSE.txt
          create  palindrome/CODE_OF_CONDUCT.md
          create  palindrome/.rubocop.yml
    Gem 'palindrome' was successfully created. For more information on making a RubyGem visit https://bundler.io/guides/creating_gem.html
    ```

1. Issue the following command:
    ```
    cd palindrome
    ```

1. Issue the following command to remove redundant Git related files:
    ```
    rm -rf .git
    ```

1. Issue the following command:
    ```
    bundle
    ```

    An output similar to the following is expected:
    ```
    You have one or more invalid gemspecs that need to be fixed.
    The gemspec at /home/user/sandbox/palindrome/palindrome.gemspec is not valid. Please fix this gemspec.
    The validation error was 'metadata['homepage_uri'] has invalid link: "TODO: Put your gem's website or public repo URL here."'
    ```

