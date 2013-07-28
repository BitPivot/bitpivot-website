AssetSync.configure do |config|
  config.fog_provider = 'AWS'
  config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  # To use AWS reduced redundancy storage.
  # config.aws_reduced_redundancy = true
  config.fog_directory = ENV['FOG_DIRECTORY']

  # Invalidate a file on a cdn after uploading files
  # config.cdn_distribution_id = "12345"
  # config.invalidate = ['file1.js']

  # Automatically replace files with their equivalent gzip compressed version
  config.gzip_compression = true

  # Ignored files
  config.ignored_files = [%r(turbolinks-.*\.js)]

  # Use the Rails generated 'manifest.yml' file to produce the list of files to
  # upload instead of searching the assets directory.
  # config.manifest = true

  # Fail silently.  Useful for environments such as Heroku
  # config.fail_silently = true
end
