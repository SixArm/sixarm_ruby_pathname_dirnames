# Ruby » <br> Pathname#dirnames method to iterate on parent directories

* Doc: <http://sixarm.com/sixarm_ruby_pathname_dirnames/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_pathname_dirnames>
* Repo: <http://github.com/sixarm/sixarm_ruby_pathname_dirnames>
* Email: Joel Parker Henderson, <joel@sixarm.com>


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


## Install quickstart

Install:

    gem install sixarm_ruby_week

Bundler:

    gem "sixarm_ruby_pathname_dirnames", "~>1.0.0"

Require:

    require "sixarm_ruby_pathname_dirnames"


## Install with security (optional)

To enable high security	for all	our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_pathname_dirnames --trust-policy HighSecurity


## Example to find a file

To find the first occurance of a file named "my.txt" in a path or its parents:

     basename = "my.txt"
     p = Pathname.new('/foo/goo/hoo/*')
     puts p.dirnames.find{|dirname| (dirname + basename).exist?}

Note that the "*" at the end of the pathname is to give dirname something to chop off; the "*" is being used as chaff, not as a file matcher nor string matches.


## Changes

* 2012-03-22 1.0.0 Created
