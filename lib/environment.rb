require_relative "../lib/author_cli/version"
require_relative "../lib/author_cli/cli"
require_relative "../lib/author_cli/api"
require_relative "../lib/author_cli/book"
require 'pry'
require 'httparty'
require 'json'

module AuthorCli
  class Error < StandardError; end
  # Your code goes here...
end
