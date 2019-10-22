Yt.configure do |config|
    config.api_key = ENV['YOUTUBE_SERVER_KEY']
    config.log_level = :debug
  end