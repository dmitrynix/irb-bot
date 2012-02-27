module Bot
  class Application < Sinatra::Base
    get '/' do
      @messages = Message.all
      erb :index
    end
  end
end
