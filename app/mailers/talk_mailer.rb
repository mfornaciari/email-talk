# frozen_string_literal: true

class TalkMailer < ApplicationMailer
  default subject: 'E-mail da banana'

  def svg_mail
    attach('banana.svg')
    mail to: params[:recipient]
  end

  def flex_mail
    attach('banana.png')
    mail to: params[:recipient]
  end

  def table_mail
    attach('banana.png')
    mail to: params[:recipient]
  end

  private

  def attach(filename)
    attachments.inline[filename] = File.read(Rails.public_path.join('images', filename))
  end
end
