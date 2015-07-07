# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require "pathname"


class Pathname

  # Return an enumerable of pathnames created by calling #dirname repeatedly.
  # This can be useful for traversing directories upwards to parent, grandparent, etc.
  #
  # Example:
  #     p = Pathname.new('/foo/goo/hoo.txt')
  #     p.dirnames
  #     #=> ['/foo/goo', '/foo', '/']

  def dirnames
    path = self  # start at the current path
    results = []
    while true
      dirname = path.dirname
      break if dirname == path
      results << dirname
      path = dirname
    end
    return results
  end

end
