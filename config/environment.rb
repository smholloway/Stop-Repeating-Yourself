# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
StopRepeatingYourself::Application.initialize!

# Including digest so we can grab Gravatar images using the email hash
require 'digest'
