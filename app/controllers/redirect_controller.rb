class RedirectController < ApplicationController
  def index
    Redirect.redirections.each do |regexp, url|
      regexp = Regexp.new(regexp)
      next unless request.fullpath.match(regexp)
      redirect_to "#{url}#{request.fullpath}" and return
    end

    render text: nil
  end
end
