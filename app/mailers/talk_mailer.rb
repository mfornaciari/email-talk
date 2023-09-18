# frozen_string_literal: true

class TalkMailer < ApplicationMailer
  before_action :set_attachment

  default subject: 'E-mail da banana'

  def gmail_mail
    mail to: ENV.fetch('GMAIL_ADDRESS')
  end

  def outlook_mail
    mail to: ENV.fetch('OUTLOOK_ADDRESS')
  end

  private

  def set_attachment
    attachments.inline['banana.png'] = File.read(Rails.public_path.join('images', 'banana.png'))
  end
end
