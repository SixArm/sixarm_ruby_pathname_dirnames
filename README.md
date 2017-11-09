# SixArm.com → Ruby → <br> Pathname#dirnames method to iterate on parent directories

* Doc: <http://sixarm.com/sixarm_ruby_pathname_dirnames/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_pathname_dirnames>
* Repo: <http://github.com/sixarm/sixarm_ruby_pathname_dirnames>
<!--header-shut-->


## Introduction

This gem has one method: Pathname#dirnames.

It will return an enumerable of pathnames created by calling #dirname repeatedly.

This can be useful for traversing directories upwards to parent, grandparent, etc.

Example:

     p = Pathname.new('/foo/goo/hoo.txt')
     p.dirnames
     #=> ['/foo/goo', '/foo', '/']

For docs go to <http://sixarm.com/sixarm_ruby_pathname_dirnames/doc>

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_pathname_dirnames

Or add this to your Gemfile:

    gem 'sixarm_ruby_pathname_dirnames'

### Require

To require the gem in your code:

    require 'sixarm_ruby_pathname_dirnames'

<!--install-shut-->


## Example to find a file

To find the first occurance of a file named "my.txt" in a path or its parents:

     basename = "my.txt"
     p = Pathname.new('/foo/goo/hoo/*')
     puts p.dirnames.find{|dirname| (dirname + basename).exist?}

Note that the "*" at the end of the pathname is to give dirname something to chop off; the "*" is being used as chaff, not as a file matcher nor string matches.
