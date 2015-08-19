module Redirect
  class << self
    def redirections
      return @redirections if @redirections

      @redirections = {}

      100.times do |i|
        n = i + 1

        next if ENV["REDIRECT_REGEXP_#{n}"].blank?

        @redirections[ENV["REDIRECT_REGEXP_#{n}"]] = ENV["REDIRECT_URL_#{n}"]
      end

      @redirections
    end
  end
end
