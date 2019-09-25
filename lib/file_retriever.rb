require "file_retriever/version"
require 'file_retriever/FileRetriever/sources/FileRetriever'

module FileRetriever
  class Error < StandardError; end
  class FileRetriever < BaseFileRetriever
  end
end
