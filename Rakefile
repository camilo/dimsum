#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.ruby_opts = ['-I.:lib:test']
  t.libs << 'test'
  t.test_files = ['./test/*_test.rb']
  t.verbose = true
end

task :default => :test
