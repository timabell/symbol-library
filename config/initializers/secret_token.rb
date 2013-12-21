# http://stackoverflow.com/a/18563754/10245
SymbolLibrary::Application.config.secret_token =
  if Rails.env.development? or Rails.env.test?
    puts '~~~~~~~~~~dev~~~~~~~~~~'
      ('x' * 30) # meets minimum requirement of 30 chars long
  else
    puts '~~~~~~~~~~prod~~~~~~~~~~'
      ENV['SECRET_TOKEN']
  end
puts 'app setup env:'
puts ENV.inspect
puts "ENV['SECRET_TOKEN'] #{ENV['SECRET_TOKEN']}"
puts
