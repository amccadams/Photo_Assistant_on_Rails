# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.development? or Rails.env.test?
   RailsPhotoAssistant::Application.config.secret_token = '6662e5a77d36241587a9c0f3a058a229dfc864523cd4e07627c1188667acc7dbf3601f015287b870e61cf5ee84219ddab28fcfbbce13e3139a6f62bd2412549e'
else  
  RailsPhotoAssistant::Application.config.secret_token = ENV['SECRET_TOKEN']
end

