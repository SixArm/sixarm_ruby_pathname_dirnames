# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_pathname_dirnames'

describe Pathname do

  describe "#dirnames" do

    before do
      @p = Pathname.new(__FILE__).dirname + "sixarm_ruby_pathname_dirnames_test/foo/goo/hoo/my.txt"
      puts __FILE__
      puts @p
    end

    it "returns an enumerable of the dirnames" do
      dirnames = @p.dirnames
      dirnames[0].to_s.must_match /\/foo\/goo\/hoo$/
      dirnames[1].to_s.must_match /\/foo\/goo$/
      dirnames[2].to_s.must_match /\/foo$/
    end

  end

end
