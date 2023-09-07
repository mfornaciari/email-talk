# frozen_string_literal: true

class TalkMailer < ApplicationMailer
  default from: 'marco.fornaciari@rebase.com.br'

  def test_email
    mail to: 'marco.fornaciari@rebase.com.br', subject: 'E-mail da banana'
  end
end
