# frozen_string_literal: true

class TalkMailer < ApplicationMailer
  def flex_mail
    attachments.inline['banana.png'] = File.read(Rails.public_path.join('images', 'banana.png'))
    mail to: params[:recipient],
         subject: 'E-mail da banana'
  end
end
