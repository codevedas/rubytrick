require 'watir-webdriver'
users = {sample: "sample", sample1: "sample1", sample2: "sample2"} # hash of users
b = Watir::Browser.new                                             # launch browser
b.goto('https://foodclub.org/sample/login')
users.each do |key, value|                                         # iterate on hash
  b.text_field(name: "user_id").set  key.to_s                      # set key as username
  b.text_field(name: "password").set value                         # set value as password
  b.button(name: "login").click
  b.link(text: "Logout").click
end


