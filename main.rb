require 'rubygems'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __FILE__)
require 'bundler/setup'


board = Board.new
[
 [DeadCell, LiveCell, LiveCell, DeadCell],
 # ...
]