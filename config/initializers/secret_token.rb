# http://stackoverflow.com/a/18563754/10245
SymbolLibrary::Application.config.secret_token =
  if Rails.env.development? or Rails.env.test?
      ('x' * 30) # meets minimum requirement of 30 chars long
  else
      ENV['SECRET_TOKEN']
  end
puts 'app setup env:'
puts ENV.inspect
puts
