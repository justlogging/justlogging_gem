# Justlogging
require "uri"
require "net/http"

module Justlogging

  class << self
    attr_accessor :api_key, :log_key

    def logger
      ActiveRecord::Base.logger
    rescue
      @logger ||= Logger.new(STDERR)
    end
    
    def log(entry, log_key = self.log_key)
      params = {
        'log_key' => log_key,
        'entry' => entry,
        'access_key' => api_key
      }
      
      response = begin
        Net::HTTP.post_form('http://logs.justlogging.com/log', params)
      rescue TimeoutError => e
        logger.error "Timeout while connecting to justlogging." if logger
        nil
      end
      
      case response
      when Net::HTTPSuccess then
        logger.info "Justlogging OK" if logger
      else
        logger.error "Justlogging FAIL: #{response.body if response.respond_to? :body}" if logger
      end
    end
    
  end
end