# frozen_string_literal: true

class TalkMailer < ApplicationMailer
  before_action :set_attachment

  default from: 'marco.fornaciari@rebase.com.br',
          subject: 'E-mail da banana'

  def gmail_mail
    mail to: 'marco.fornaciari@rebase.com.br'
  end

  def outlook_mail
    mail to: 'marco.fornaciari.rebase@outlook.com'
  end

  private

  def set_attachment
    attachments.inline['banana.png'] = File.read(Rails.public_path.join('images', 'banana.png'))
  end
end
