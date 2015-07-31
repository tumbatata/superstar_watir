class Login
    include PageObject
  

    button	:signin,	:type => 'submit'
    text_field  :email, :id => 'Email'
    button :next_btn, :value => 'Next'
    text_field :login_password, :id => 'Passwd'
    button :signin, :value => 'Sign in'

    def complete_valid_login
     user = YAML::load_file('config/data/valid_user.yml')
     email = user['user_happy_flow']['login']
     sleep(2)
     next_btn
   end

    def complete_invalid_login
      user = YAML::load_file('config/data/valid_user.yml')
      email = user['user_unhappy_flow']['login']
      sleep(2)
      next_btn
    end

end

