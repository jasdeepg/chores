class ApplicationController < ActionController::Base
  protect_from_forgery

    def new_week
      @chores = Chore.all

      @chores.each do |chore|
        current_id = chore.user_id
        if current_id > 5
          current_id = 1
        else
          current_id += 1
        end
        chore.update_attributes(user_id:current_id)
      end

      Chore.update_all(sample: Time.now)

      @users = User.all

      @users.each do |user|
        UserMailer.new_chore(user).deliver
      end

      redirect_to users_path
  end

  def call_user(number)
    twilio_sid = "ACc6a3bb9730a164011e1cc7ef3f596def"
    twilio_token = "2ed74aec38d1156ec3e97406f2d59792"
    twilio_phone_number = "9198096187"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    number_to_call = number

    @twilio_client.account.calls.create(
      :from => "+1#{twilio_phone_number}", 
      :to => number_to_call, 
      :url => 'http://demo.twilio.com/welcome/voice/'
      )
  end

  def send_text_message(user)
    twilio_sid = "ACc6a3bb9730a164011e1cc7ef3f596def"
    twilio_token = "2ed74aec38d1156ec3e97406f2d59792"
    twilio_phone_number = "9198096187"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    number_to_send_to = user.phone

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "#{user.name}, you still haven't cleaned up the #{user.chore.name}, bro :("
    )
  end
end
