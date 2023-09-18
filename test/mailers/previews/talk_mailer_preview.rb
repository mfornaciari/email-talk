# frozen_string_literal: true

class TalkMailerPreview < ActionMailer::Preview
  def svg_mail
    TalkMailer.with(recipient: 'test@email.com').svg_mail
  end

  def flex_mail
    TalkMailer.with(recipient: 'test@email.com').flex_mail
  end
end
