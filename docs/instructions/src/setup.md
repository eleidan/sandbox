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

1. Make sure the `palindrome/palindrome.gemspec` file is updated as follows:
    ```diff
    -  spec.summary       = "TODO: Write a short summary, because RubyGems requires one."
    -  spec.description   = "TODO: Write a longer description or delete this line."
    -  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
    +  spec.summary       = "Palindrome"
    +  spec.homepage      = "https://github.com/eleidan/sandbox/palindrome"
       spec.license       = "MIT"
       spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

    -  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
    -
       spec.metadata["homepage_uri"] = spec.homepage
    -  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
    -  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
    +  spec.metadata["source_code_uri"] = spec.homepage
    +  spec.metadata["changelog_uri"] = spec.homepage
    ```

1. Issue the following command to get dependencies:

    ```
    bundle
    ```

1. Make sure the `palindrome/Gemfile` file is updated as follows:
    ```diff
    -
    -gem "rake", "~> 13.0"
    -
    -gem "rspec", "~> 3.0"
    -
    -gem "rubocop", "~> 1.7"
    ```

1. Make sure the `palindrome/palindrome.gemspec` file is updated as follows:
    ```diff
    # spec.add_dependency "example-gem", "~> 1.0"

    +  spec.add_development_dependency "rake", "~> 13.0"
    +  spec.add_development_dependency "rspec", "~> 3.10"
    +  spec.add_development_dependency "rubocop", "~> 1.7"
    +
    # For more information and examples about making a new gem, checkout our

    ```

1. Issue the following command:
    ```
    rubocop
    ```

    An output similar to the following is expected:
    ```
    Error: RuboCop found unsupported Ruby version 2.4 in `TargetRubyVersion` parameter (in .rubocop.yml). 2.4-compatible analysis was dropped after version 1.12.
    Supported versions: 2.5, 2.6, 2.7, 3.0, 3.1
    ```

1. Make sure the `palindrome/palindrome.gemspec` file is updated as follows:
    ```diff
    -  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")
    +  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.3")
    ```

1. Make sure the `palindrome/.rubocop.yml` file is updated as follows:
    ```diff
     AllCops:
    -  TargetRubyVersion: 2.4
    +  TargetRubyVersion: 2.7
    ```

1. Issue the following command to fix possible style errors:
    ```
    rubocop -A
    ```

Refer Bundler official [instructions](https://bundler.io/guides/creating_gem.html)
for more details on how to create a Ruby gem.
